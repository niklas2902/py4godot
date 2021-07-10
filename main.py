import json

exclude_words = ["import", "raise", "class", "from", "pass", "with", "global", "print", "short","in","args"]

types={"Dictionary": "godot_dictionary", "Variant": "godot_variant", "Array":"godot_array", "String":"godot_string",
       "PoolStringArray":"godot_pool_string_array", "Error":"godot_error", "Reference":"godot_object", "NodePath":"godot_node_path",
       "Vector3":"godot_vector3","Vector2":"godot_vector2", "Plane":"godot_plane", "Mesh":"godot_object", "Basis":"godot_basis", "Transform":"godot_transform",
       "PoolIntArray":"godot_object","PoolVector3Array":"godot_object","PoolVector2Array":"godot_object", "Quat":"godot_quat", "AABB":"godot_aabb"
       ,"Rect2":"godot_rect2", "PoolByteArray":"godot_object", "Transform2D":"godot_transform2d", "PoolColorArray":"godot_object",
       "Color":"godot_color", "RID":"godot_rid", "PoolRealArray":"godot_object", }
core = ["Dictionary", "Array", "Variant", "NodePath", "String", "Vector3", "Vector2", "Plane", "Basis", "Quat",
        "PoolIntArray", "RID", "AABB", "Transform", "PoolByteArray", "Rect2", "PoolVector2Array", "Transform2D", "PoolVector3Array",
        "PoolColorArray", "Color", "RID", "PoolRealArray", "PoolStringArray"]


def generate_properties(obj):
    result = ""
    if(len(obj["properties"])):
        result += "\n##################################Generated Properties#########################################\n"
        for property in obj["properties"]:
            result += "  @property\n"
            result += f"  def {property['name'].replace('/','_')}(self): \n"
            result += f"    return self.get_{property['name'].replace('/','_')}()\n"
            result += f"  @{property['name'].replace('/','_')}.setter \n"
            result += f"  def {property['name'].replace('/','_')}(self,value): \n"
            result += f"    self.set_{property['name'].replace('/','_')}(value)\n"
    return result

def generate_methods(obj, import_string):
    result = ""
    if(len(obj["methods"])):
        result += "\n##################################Generated Methods#########################################\n"
        for method in obj["methods"]:
            result += f"  def {'' if method['is_const']==False else ''} {method['name'] if method['name'] not in exclude_words else method['name']+'_'}("
            args = "self, "


            for argument in method["arguments"]:
                args += " "+(argument["type"] if not argument["type"] in objects else argument["type"])+" "
                args += (argument["name"] if argument["name"] not in exclude_words else argument["name"]+"_")+", "

                if(argument["type"] in objects):
                    import_string += f"cimport classes.{argument['type']}\n"

            result += args.rstrip(", ") +"):\n"
            result += f"    cdef godot_object *_owner = self.godot_owner\n\n"

            return_type = method["return_type"]
            return_type_save = return_type

            if("." in return_type):
                return_type = return_type.split(".")[-1]

            if(return_type in core):
                print(return_type, obj["name"])
            if(return_type != "void" ):
                if("::" in return_type):
                    import_class,return_type = return_type.split("::")
                    if(import_class != obj["name"] and not import_class in core):
                        import_string += f"cimport classes.{import_class}\n"
                        return_type = import_class+"_"+return_type
                    else:
                        return_type = import_class+"_"+return_type

                if(return_type in objects):
                    result += f"    cdef godot_object* ret = NULL;\n\n"
                else:
                    return_type_imported = return_type if return_type.split(".")[0] in objects else return_type
                    result += f"    cdef {return_type_imported if return_type_imported not in types else types[return_type_imported]}* ret = NULL;\n\n"

            if(len(method['arguments']) > 0):
                result += f"    cdef void *args[{len(method['arguments'])}]\n\n"

                for i  in range(len(method["arguments"])):
                    argument = method["arguments"][i]
                    arg_name = (argument["name"] if argument["name"] not in exclude_words else argument["name"]+"_")
                    if(argument["type"] in objects):
                        result += f"    args[{i}] = {arg_name}.godot_owner\n"
                    else:
                        result += f"    args[{i}] = {'&'+arg_name+'._native' if method['arguments'][i]['type'] in core else ('&'+ arg_name)}\n"
            result += f"    api_core.godot_method_bind_ptrcall(bind_{obj['name'].lower()}_{method['name']}," \
                      f"self.godot_owner,{'args' if len(method['arguments']) > 0 else 'NULL'},{'&ret' if return_type!='void' else 'NULL'})\n"
            result += f"    hello('hallo2')\n"
            if return_type != "void" and not return_type in objects and not return_type_save.startswith("Pool"):
                if("." in return_type):
                    return_type = return_type
                if(return_type in objects and return_type_save not in types):
                    return_type = "godot_object"
                if(return_type in types and not return_type_save in return_type):
                    return_type = types[return_type]
                    #print(return_type+"|"+return_type_save)
                result += f"    return {return_type_save+'.new_static(dereference(ret))' if return_type_save in types else 'dereference(ret)'}\n\n"
    return result, import_string

def generate_method_bindings(obj):
    result = "\n##################################Generated method bindings#########################################\n"
    result += f"cdef godot_method_bind *bind_{obj['name']}\n"
    for method in obj["methods"]:
        result += f"cdef godot_method_bind *bind_{obj['name'].lower()}_{method['name']}\n"
    result += f"cpdef init_method_bindings_{obj['name']}():\n"
    result += f'  bind_{obj["name"]} = api_core.godot_method_bind_get_method("Object", "_get")\n'
    for method in obj["methods"]:
        result += f"  bind_{obj['name'].lower()}_{method['name']} = api_core.godot_method_bind_get_method('{obj['name']}', '{method['name']}')\n"
    return result


def generate_classes(obj):
    result = ""
    import_string = ""
    if(obj["base_class"] != ""):
        import_string += f"cimport classes.{obj['base_class']} \n"
    import_string += ""

    result += generate_method_bindings(obj)

    result += "\n############################Generated class###################################\n"

    if(obj["name"] == "GlobalConstants"):
        print(obj["name"],"|",obj["base_class"], obj["base_class"] == "")
    result += f"""cdef class {obj['name']}({obj['base_class'] if obj['base_class'] != "" else "Wrapper"}):\n"""
    result += f"""  def __init__(self):\n"""
    result += f"""    super().__init__()\n"""
    result += f"""    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("{obj["name"]}")())"""

    result += generate_properties(obj)
    results =generate_methods(obj, import_string)
    result += results[0]
    import_string = results[1]

    pxd_file = generate_pxd(obj["name"], obj["base_class"], obj)
    return import_string, result,pxd_file

def generate_enums(class_, obj):
    result = ""
    for enum in obj["enums"]:
        result += f"""ctypedef enum {class_}_{enum["name"]} :"""
        for value in enum["values"]:
            result += class_.upper()+"_"+value +", "
        result = result.rstrip(", ")
        result += "\n"

    return result

def generate_pxd(class_, base_class, obj):
    base_class = base_class.strip()
    if(class_ == "GlobalConstants"):
        print(class_,"|",base_class)

    string_to_write = "\n"
    #if(class_ == "Object"):
    #    string_to_write = (f"""
#cdef class Object(Wrapper):
#    pass\n""")
#    else:
#        if(base_class != ""):
#            string_to_write = (f"""
            
#cdef class {class_}({base_class}):
#    pass\n""")
#        else:
#            string_to_write = (f"""
            
#cdef class {class_}(Wrapper):
#    pass\n""")
#    file =""

    string_to_write += (generate_enums(class_, obj))
    return string_to_write

test_mode = False

def create_set(string, set):
    strings = string.split("\n")
    for s in strings:
        set.add(s)

base_import_string=""
base_import_string += f"\n##################################Import gdnative api#########################################\n"
base_import_string += f"from enum import *\n"
base_import_string += f"from utils.Wrapper cimport *\n"
base_import_string += f"from core.node_path.NodePath cimport NodePath\n"
base_import_string += f"from core.string.String cimport String\n"
base_import_string += f"from core.variant.Variant cimport Variant\n"
base_import_string += f"from core.array.Array cimport Array\n"
base_import_string += f"from core.color.Color cimport Color\n"
base_import_string += f"from core.plane.Plane cimport Plane\n"
base_import_string += f"from core.basis.Basis cimport Basis\n"
base_import_string += f"from core.aabb.AABB cimport AABB\n"
base_import_string += f"from core.dictionary.Dictionary cimport Dictionary\n"
base_import_string += f"from core.pool_array.PoolArrays cimport *\n"
base_import_string += f"from core.quat.Quat cimport Quat\n"
base_import_string += f"from core.rect2.Rect2 cimport Rect2\n"
base_import_string += f"from core.rid.RID cimport RID\n"
base_import_string += f"from core.transform.Transform cimport Transform\n"
base_import_string += f"from core.transform.Transform2D cimport Transform2D\n"
base_import_string += f"from core.vector2.Vector2 cimport Vector2\n"
base_import_string += f"from core.vector3.Vector3 cimport Vector3\n"
base_import_string += f"from core.variant.Variant cimport Variant_Type\n"
base_import_string += f"from core.variant.Variant cimport Variant_Operator\n"
base_import_string += f"from core.vector3.Vector3 cimport Vector3_Axis\n"
base_import_string += f"from core.color.Color cimport Color\n"
base_import_string += f"from cython.operator cimport dereference\n"
base_import_string += f"from godot_api.binding_external cimport *\n\n\n" \
                      f"cdef set_core(godot_gdnative_core_api_struct* core):\n" \
                      f"    global api_core\n" \
                      f"    api_core = core\n\n\n"


main_string = ""

import_string = ""

def build(test = False):
    init_methods_string = "def init_method_bindings():\n"

    global objects
    # read file
    with open('headers/api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)

    objects = set([element["name"] for element in obj])
    print(objects)

    bindings_file = ""
    pxd_file = """from enum import *
from godot_api.binding_external cimport *
from utils.Wrapper cimport *"""
    set_ = set()
    #generate all the class files
    for element in obj:
        if(element["name"].startswith("_")):
            continue

        init_methods_string += f"  init_method_bindings_{element['name']}()\n"
        file = ""
        generated_file = generate_classes(element)
        bindings_file += generated_file[1]+"\n"
        pxd_file += generated_file[2]
        create_set(generated_file[0],set_)
        """try:
            with open(f"classes/{element['name']}.pyx", "r") as generateFile:
                file = generateFile.read()
        except:
            print(f"File classes/{element['name']}.pyx not found!")
        if(generated_file != file):
            print("###########################################write into file#########################################")
            with open(f"classes/{element['name']}.pyx", "w") as generateFile:
                generateFile.write(generated_file[0]+generated_file[1])


        #generate main file
        string_file = ""
        try:
            with open("classes/api.pyx", "r") as mainFile:
                string_file = mainFile.read()
        except:
            print("File classes/api.pyx not found")
        import_string = ""
        init_method_bindings_string= "cdef api init_method_bindings():\n"
        for element in obj:
            if (element["name"].startswith("_")):
                continue

            import_string += f"from classes.{element['name']} cimport {element['name']}\n"
            init_method_bindings_string += f"  {element['name']}.init_method_bindings()\n"

        if(import_string + "\n\n" + init_method_bindings_string != string_file):
            with open("classes/api.pyx", "w") as mainFile:
                print("write main")
                mainFile.write(import_string+"\n\n")
                mainFile.write(init_method_bindings_string)
        """

    print(set_)
    with open("classes/generated.pyx", "w") as bindings:
        bindings.write(base_import_string+main_string+bindings_file+ init_methods_string)
    with open("classes/generated.pxd", "w") as bindings_pxd:
        bindings_pxd.write(pxd_file+"\ncdef set_core(godot_gdnative_core_api_struct* core)")
