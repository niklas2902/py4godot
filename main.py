import json

exclude_words = ["import", "raise", "class", "from", "pass", "with", "global", "print", "short", "in", "args"]

types = {"Dictionary": "godot_dictionary", "Variant": "godot_variant", "Array": "godot_array", "String": "godot_string",
         "PoolStringArray": "godot_pool_string_array", "Error": "godot_error",
         "NodePath": "godot_node_path",
         "Vector3": "godot_vector3", "Vector2": "godot_vector2", "Plane": "godot_plane",
         "Basis": "godot_basis", "Transform": "godot_transform",
         "PoolIntArray": "godot_object *", "PoolVector3Array": "godot_object*", "PoolVector2Array": "godot_object*",
         "Quat": "godot_quat", "AABB": "godot_aabb"
    , "Rect2": "godot_rect2", "PoolByteArray": "godot_object *", "Transform2D": "godot_transform2d",
         "PoolColorArray": "godot_object * ",
         "Color": "godot_color", "RID": "godot_rid", "PoolRealArray": "godot_object *", }
core = ["Dictionary", "Array", "Variant", "NodePath", "String", "Vector3", "Vector2", "Plane", "Basis", "Quat",
        "PoolIntArray", "RID", "AABB", "Transform", "PoolByteArray", "Rect2", "PoolVector2Array", "Transform2D",
        "PoolVector3Array",
        "PoolColorArray", "Color", "RID", "PoolRealArray", "PoolStringArray"]


def generate_properties(obj):
    """generate properties for the object"""
    result = ""
    if (len(obj["properties"])):
        result += "\n##################################Generated Properties#########################################\n"
        for property in obj["properties"]:
            result += "  @property\n"
            result += f"  def {property['name'].replace('/', '_')}(self): \n"
            if(not property["type"] in core):
                result += f"    return self.get_{property['name'].replace('/', '_')}()\n"
            else:
                result += f"    cdef {property['type']} val = self.get_{property['name'].replace('/', '_')}()\n"
                result += f"    val.update_event.register_method(lambda:self.set_{property['name']}(val))\n"
                result += f"    return val\n"
            result += f"  @{property['name'].replace('/', '_')}.setter \n"
            result += f"  def {property['name'].replace('/', '_')}(self,value): \n"
            result += f"    self.set_{property['name'].replace('/', '_')}(value)\n"
    return result


def generate_methods(obj, import_string):
    """generate the methods"""
    result = ""
    if (len(obj["methods"])):
        result += "\n##################################Generated Methods#########################################\n"
        for method in obj["methods"]:

            #Generate head of method
            result += f"  def {'' if method['is_const'] == False else ''} {method['name'] if method['name'] not in exclude_words else method['name'] + '_'}("

            #Generate arguments in head
            import_string, result = generate_args(import_string, method, result)

            #Start with body
            result += f"    cdef godot_object *_owner = self.godot_owner\n\n"

            # create return type
            import_string, result, return_type, return_type_save = generate_return_type(import_string, method, obj,
                                                                                        result)

            # generate array with arguments
            result = generate_method_argument_array(method, result)

            # make call to godot api
            result = make_method_api_call(method, obj, result, return_type, return_type_save)
    return result, import_string


def generate_args(import_string, method, result):
    """generate the arguments in the method head"""
    args = "self, "
    for argument in method["arguments"]:
        args += " " + (argument["type"] if not argument["type"] in objects else argument["type"]) + " "
        args += (argument["name"] if argument["name"] not in exclude_words else argument["name"] + "_") + ", "

        if (argument["type"] in objects):
            import_string += f"cimport classes.{argument['type']}\n"
    if(method["has_varargs"]):
        args += "*varargs,"
    result += args.rstrip(", ") + "):\n"
    return import_string, result


def generate_return_type(import_string, method, obj, result):
    """generate the return_type"""
    return_type = method["return_type"]
    return_type_save = return_type
    if ("." in return_type):
        return_type = return_type.split(".")[-1]
    if (return_type != "void"):
        if ("::" in return_type):
            import_class, return_type = return_type.split("::")
            if (import_class != obj["name"] and not import_class in core):
                import_string += f"cimport classes.{import_class}\n"
                return_type = import_class + "_" + return_type
            else:
                return_type = import_class + "_" + return_type

        if (return_type in objects):
            result += f"    cdef godot_object* ret\n\n"
        else:
            return_type_imported = return_type if return_type.split(".")[0] in objects else return_type
            result += f"    cdef {return_type_imported if return_type_imported not in types else types[return_type_imported]} ret\n\n"
    return import_string, result, return_type, return_type_save


def generate_method_argument_array(method, result):
    """generate an argument array for the api calls"""
    if (len(method['arguments']) > 0):
        result += f"    cdef void *args[{len(method['arguments'])}]\n\n"

        for i in range(len(method["arguments"])):
            argument = method["arguments"][i]
            arg_name = (argument["name"] if argument["name"] not in exclude_words else argument["name"] + "_")
            if (argument["type"] in objects):
                result += f"    args[{i}] = {arg_name}.godot_owner\n"
            else:
                result += f"    args[{i}] = {'&' + arg_name + '._native' if method['arguments'][i]['type'] in core else ('&' + arg_name)}\n"
    else:
        result += f"""    cdef void * args[1]\n    args[0] = NULL\n"""

    if (method["has_varargs"]):
        result += f"""    cdef godot_variant** combined_array = <godot_variant**> PyMem_Malloc(sizeof(godot_variant *) * len(varargs) + {len(method['arguments'])})\n"""
        for i in range(len(method["arguments"])):
            argument = method["arguments"][i]
            arg_name = (argument["name"] if argument["name"] not in exclude_words else argument["name"] + "_")
            result += f"""    cdef godot_variant __var_{arg_name} = Variant({arg_name})._native\n"""
            result += f"""    combined_array[{i}] = &__var_{arg_name}\n"""
        result += f"""    for i in range(len(varargs)):\n"""
        result += f"""      combined_array[i+{len(method['arguments'])}] = &Variant(varargs[i])._native\n"""

    return result


def make_method_api_call(method, obj, result, return_type, return_type_save):
    """make the api call and return the return value"""
    if(not method["has_varargs"]):
        if (not method["is_virtual"]):
            result += f"    api_core.godot_method_bind_ptrcall(bind_{obj['name'].lower()}_{method['name']}," \
                      f"self.godot_owner,{'args' if len(method['arguments']) > 0 else 'NULL'},{'&ret' if return_type != 'void' else 'NULL'})\n"
    else:
        #making method call with varargs, when method has return type
        if(method["return_type"] == "void"):
            result += f"    api_core.godot_method_bind_call(bind_{obj['name'].lower()}_{method['name']}," \
                      f"self.godot_owner,combined_array, {len(method['arguments'])} + len(varargs),NULL)\n"
        #making method call with varargs, when method doesn't have return type
        else:
            result += f"    return Variant.new_static(api_core.godot_method_bind_call(bind_{obj['name'].lower()}_{method['name']}," \
                      f"self.godot_owner,combined_array, {len(method['arguments'])} + len(varargs),NULL))\n"


    if return_type != "void" and not return_type in objects and not return_type_save.startswith("Pool"):
        if ("." in return_type):
            return_type = return_type
        if (return_type in objects and return_type_save not in types):
            return_type = "godot_object"

        result += f"    return {return_type_save + '.new_static(ret)' if return_type_save in types else 'ret'}\n\n"
    elif not return_type_save.startswith("Pool") and return_type != "void":
        result += f"    cdef {return_type} obj = {return_type}()\n"
        result += f"    obj.set_godot_owner(ret)\n"
        result += f"    return obj\n"
    return result


def generate_method_bindings(obj):
    """Function to create the function calls, which contain calls to the godot apis"""
    result = "\n##################################Generated method bindings#########################################\n"
    result += f"cdef godot_method_bind *bind_{obj['name']}\n"
    for method in obj["methods"]:
        result += f"cdef godot_method_bind *bind_{obj['name'].lower()}_{method['name']}\n"
    result += f"cdef init_method_bindings_{obj['name']}():\n"
    result += f'  bind_{obj["name"]} = api_core.godot_method_bind_get_method("Object", "_get")\n'

    for method in obj["methods"]:
        result += f"  global bind_{obj['name'].lower()}_{method['name']}\n"

    for method in obj["methods"]:
        result += f"  bind_{obj['name'].lower()}_{method['name']} = api_core.godot_method_bind_get_method('{obj['name']}', '{method['name']}')\n"
    return result


def generate_classes(obj):
    """function to generate the godot class for the given object"""
    result = ""
    import_string = ""
    if (obj["base_class"] != ""):
        import_string += f"cimport classes.{obj['base_class']} \n"
    import_string += ""

    result += generate_method_bindings(obj)

    result += "\n############################Generated class###################################\n"

    result += f"""cdef class {obj['name']}({obj['base_class'] if obj['base_class'] != "" else "Wrapper"}):\n"""
    result += f"""  def __init__(self):\n"""
    result += f"""    super().__init__()\n"""
    result += generate_constants(obj)

    #only generate constructor if instanciable
    if(obj["instanciable"]):
        result += f"""  @staticmethod\n"""
        result += f"""  def _new():\n"""
        result += f"""      cdef char* name = <char*> "{obj["name"]}"\n"""
        result += f"""      cdef {obj['name']} obj = <{obj['name']}> nativescript_api_11.godot_nativescript_get_instance_binding_data(language_index,api_core.godot_get_class_constructor(name)());\n"""
        result += f"""      return obj\n"""

    #TODO:Try to improve this
    if(obj["singleton"]):
        result += f"""  @staticmethod\n"""
        result += f"""  def _new():\n"""
        result += f"""      cdef char* name = <char*> "{obj["name"]}"\n"""
        result += f"""      cdef {obj['name']} obj = <{obj['name']}>{obj['name']}()\n"""
        if(not obj["name"].startswith("_")):
            result += f"""      obj.godot_owner = api_core.godot_global_get_singleton(name)\n"""
        else:
            #Todo: check why I have to make a difference here
            result += f"""      obj.godot_owner = api_core.godot_get_class_constructor(name)()\n"""
        result += f"""      return obj\n"""
    result += generate_properties(obj)
    results = generate_methods(obj, import_string)
    result += results[0]
    import_string = results[1]

    pxd_file = generate_pxd(obj["name"],  obj)
    return import_string, result, pxd_file

def generate_constants(obj):
    result = "#########################################begin constants#######################################\n"
    for constant in obj["constants"]:
        result += f"""  {constant} = {obj["constants"][constant]}\n"""
    result += "#########################################end constants#######################################\n\n"
    return result


def generate_enums(class_, obj):
    """generate the enums definend in the godot binding classes"""
    result = ""
    for enum in obj["enums"]:
        result += f"""ctypedef enum {class_}_{enum["name"]} :"""
        for value in enum["values"]:
            result += class_.upper() + "_" + value + ", "
        result = result.rstrip(", ")
        result += "\n"

    return result


def generate_pxd(class_, obj):
    """generate the pxd file for the binding classes"""
    string_to_write = "\n"
    string_to_write += (generate_enums(class_, obj))
    return string_to_write


test_mode = False


def create_set(string, set):
    strings = string.split("\n")
    for s in strings:
        set.add(s)

def generate_singleton(obj):
    return f"""class {obj['name'].strip('_')}():
    _instance = None
    @classmethod
    def instance(cls):
        if not cls._instance:
            cls._instance = {obj['name']}._new()
        return cls._instance\n\n"""

# The import string at the start of the file
base_import_string = ""
base_import_string += f"\n##################################Import gdnative api#########################################\n"
base_import_string += f"from py4godot.utils.Wrapper cimport *\n"
base_import_string += f"from py4godot.core.node_path.NodePath cimport NodePath\n"
base_import_string += f"from py4godot.core.string.String cimport String\n"
base_import_string += f"from py4godot.core.variant.Variant cimport Variant\n"
base_import_string += f"from py4godot.core.array.Array cimport Array\n"
base_import_string += f"from py4godot.core.color.Color cimport Color\n"
base_import_string += f"from py4godot.core.plane.Plane cimport Plane\n"
base_import_string += f"from py4godot.core.basis.Basis cimport Basis\n"
base_import_string += f"from py4godot.core.aabb.AABB cimport AABB\n"
base_import_string += f"from py4godot.core.dictionary.Dictionary cimport Dictionary\n"
base_import_string += f"from py4godot.core.pool_array.PoolArrays cimport *\n"
base_import_string += f"from py4godot.core.quat.Quat cimport Quat\n"
base_import_string += f"from py4godot.core.rect2.Rect2 cimport Rect2\n"
base_import_string += f"from py4godot.core.rid.RID cimport RID\n"
base_import_string += f"from py4godot.core.transform.Transform cimport Transform\n"
base_import_string += f"from py4godot.core.transform.Transform2D cimport Transform2D\n"
base_import_string += f"from py4godot.core.vector2.Vector2 cimport Vector2\n"
base_import_string += f"from py4godot.core.vector3.Vector3 cimport Vector3\n"
base_import_string += f"from py4godot.core.variant.Variant cimport Variant_Type\n"
base_import_string += f"from py4godot.core.variant.Variant cimport Variant_Operator\n"
base_import_string += f"from py4godot.core.vector3.Vector3 cimport Vector3_Axis\n"
base_import_string += f"from py4godot.events.events cimport UpdateEvent\n"
base_import_string += f"from py4godot.core.color.Color cimport Color\n"
base_import_string += f"from cython.operator cimport dereference\n"
base_import_string += f"from py4godot.enums.enums cimport *\n"
base_import_string += f"from py4godot.godot_bindings.types cimport *\n"
base_import_string += f"from cpython.mem cimport PyMem_Malloc, PyMem_Realloc, PyMem_Free\n"
base_import_string += f"from py4godot.godot_bindings.binding_external cimport *\n\n\n" \
                      f"cdef set_core(godot_gdnative_core_api_struct* core):\n" \
                      f"    global api_core\n" \
                      f"    api_core = core\n\n" \
                      f"cdef set_native_script(godot_gdnative_ext_nativescript_1_1_api_struct* api):\n" \
                      f"    global nativescript_api_11\n" \
                      f"    nativescript_api_11 = api\n\n"\
                      f"cdef set_bindings_funcs(godot_instance_binding_functions binding_funcs_, int lang_ind):\n" \
                      f"    global binding_funcs\n" \
                      f"    global language_index\n" \
                      f"    binding_funcs = binding_funcs_\n" \
                      f"    language_index = lang_ind\n\n"

main_string = ""

import_string = ""


def build():
    """function to start the generation of the of the godot classes"""
    init_methods_string = "def init_method_bindings():\n"
    register_types_string = "cdef register_types():\n"

    global objects
    # read file
    with open('py4godot/godot-headers/api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)

    objects = set([element["name"] for element in obj])

    bindings_file = ""
    pxd_file = """from enum import *
from py4godot.godot_bindings.binding_external cimport *
from py4godot.utils.Wrapper cimport *"""
    set_ = set()
    # generate all the class files
    for element in obj:
        if (element["name"].startswith("_") and element["singleton"] == False):
            continue

        init_methods_string += f"  init_method_bindings_{element['name']}()\n"
        file = ""
        generated_file = generate_classes(element)
        bindings_file += generated_file[1] + "\n"
        pxd_file += generated_file[2]
        create_set(generated_file[0], set_)

        if(element["singleton"] and element["name"].startswith("_")):
            bindings_file += generate_singleton(element)

    #Registering types for later use
    type_ind = 0
    for element in obj:
        register_types_string += f"  nativescript_api_11.godot_nativescript_set_global_type_tag(language_index, <char *>'{element['name']}', <void*>{element['name']})\n"
        type_ind += 1

    with open("py4godot/classes/generated.pyx", "w") as bindings:
        bindings.write(base_import_string + main_string + bindings_file + init_methods_string + register_types_string)
    with open("py4godot/classes/generated.pxd", "w") as bindings_pxd:
        bindings_pxd.write(pxd_file + "\ncdef set_core(godot_gdnative_core_api_struct* core)" +
                           "\ncdef set_native_script(godot_gdnative_ext_nativescript_1_1_api_struct* api)\n"+
                           "cdef set_bindings_funcs(godot_instance_binding_functions bindings_funcs_, int lang_ind)\n"
                           "cdef register_types()")
