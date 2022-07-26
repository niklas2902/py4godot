import json

exclude_words = ["import", "raise", "class", "from", "pass", "with", "global", "print", "short", "in", "args"]

types = { }
core = ["Dictionary", "Array", "Variant", "NodePath", "String", "Vector3", "Vector2", "Plane", "Basis", "Quat",
        "PoolIntArray", "RID", "AABB", "Transform", "PoolByteArray", "Rect2", "PoolVector2Array", "Transform2D",
        "PoolVector3Array",
        "PoolColorArray", "Color", "RID", "PoolRealArray", "PoolStringArray"]


# The import string at the start of the file
base_import_string = ""
base_import_string += f"\n################################Import gdnative api#######################################\n"
base_import_string += f"from py4godot.utils.Wrapper import *\n"
base_import_string += f"from py4godot.core.node_path.NodePath import NodePath\n"
base_import_string += f"from py4godot.core.string.String import String\n"
base_import_string += f"from py4godot.core.variant.Variant import Variant\n"
base_import_string += f"from py4godot.core.array.Array import Array\n"
base_import_string += f"from py4godot.core.color.Color import Color\n"
base_import_string += f"from py4godot.core.plane.Plane import Plane\n"
base_import_string += f"from py4godot.core.basis.Basis import Basis\n"
base_import_string += f"from py4godot.core.aabb.AABB import AABB\n"
base_import_string += f"from py4godot.core.dictionary.Dictionary import Dictionary\n"
base_import_string += f"from py4godot.core.pool_array.PoolArrays import *\n"
base_import_string += f"from py4godot.core.quat.Quat import Quat\n"
base_import_string += f"from py4godot.core.rect2.Rect2 import Rect2\n"
base_import_string += f"from py4godot.core.rid.RID import RID\n"
base_import_string += f"from py4godot.core.transform.Transform import Transform\n"
base_import_string += f"from py4godot.core.transform.Transform2D import Transform2D\n"
base_import_string += f"from py4godot.core.vector2.Vector2 import Vector2\n"
base_import_string += f"from py4godot.core.vector3.Vector3 import Vector3\n"
base_import_string += f"from py4godot.core.variant.Variant import Variant_Type\n"
base_import_string += f"from py4godot.core.variant.Variant import Variant_Operator\n"
base_import_string += f"from py4godot.events.events import UpdateEvent\n"
base_import_string += f"from py4godot.core.color.Color import Color\n"
base_import_string += f"from cython.operator import dereference\n"
base_import_string += f"from py4godot.enums.enums import *\n"
base_import_string += f"from cpython.mem import PyMem_Malloc, PyMem_Realloc, PyMem_Free\n"
base_import_string += f"from py4godot.utils.core_holder import get_core, get_nativescript\n"
base_import_string += f"from py4godot.godot_bindings.binding_external import *\n"
base_import_string += f"from py4godot.godot_bindings.types import *\n"
base_import_string += f"from libcpp cimport bool\n\n\n"\


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


def create_set(string, string_set):
    strings = string.split("\n")
    for s in strings:
        string_set.add(s)

def generate_properties(obj):
    """generate properties for the object"""
    result = ""
    if len(obj["properties"]):
        result += "\n#########################f#########Generated Properties#########################################\n"
        for gd_property in obj["properties"]:
            result += f"#{gd_property['type']}\n"
            result += "  @property\n"
            result += f"  def {gd_property['name'].replace('/', '_')}(self)->{gd_property['type']}:pass \n"
            result += f"  @{gd_property['name'].replace('/', '_')}.setter \n"
            result += f"  def {gd_property['name'].replace('/', '_')}(self,value:{gd_property['type']})->None:pass \n"
    return result


def generate_methods(obj, objs_to_import):
    """generate the methods"""
    result = ""
    if len(obj["methods"]):
        result += "\n##################################Generated Methods#########################################\n"
        for method in obj["methods"]:
            # Generate head of method
            result += f"""  def {method['name']}("""
            # Generate arguments in head
            objs_to_import, args = generate_args(objs_to_import, method)
            result += args+"->"+generate_return_type(objs_to_import, method, obj)+":"
            result += "    pass\n"

    return result, objs_to_import


def generate_args(objs_to_import, method):
    """generate the arguments in the method head"""
    args = "self, "
    for argument in method["arguments"]:
        args += (argument["name"] if argument["name"] not in exclude_words else argument["name"] + "_")+":"
        if argument["type"] != "String":
            if(argument["type"] == "Object"): #TODO: look for option to remove this
                args += " Wrapper "
            else:
                args += " " + (argument["type"] if not argument["type"] in objects else argument["type"]) + " "
        else:
            args += " str "

        # Set default values for arguments
        if argument["has_default_value"]:
            #TODO: improve this
            #generating default values for the core
            if argument["type"] in core and argument["type"] != "String":
                if argument["type"].startswith("Vector"):
                    args += f" = {argument['type']}{argument['default_value']}"
                elif argument["type"] == "Variant":
                    args += f" = {argument['type']}()"
                elif argument["type"] == "Array":
                    args += f" = {argument['type']}()"
                elif "Pool" in argument["type"]:
                    args += f" = {argument['type']}()"
                elif argument["type"] == "Dictionary":
                    args += f" = {argument['type']}()"
                elif argument["type"] == "Transform2D":
                    vector = argument["default_value"].replace("(", "").replace(")","").split(",")
                    args += f" = Transform2D.new_with_axis_origin(Vector2({vector[0] +','+ vector[1]})," \
                            f" Vector2({vector[2]+','+ vector[3]}), Vector2({vector[4] +','+ vector[5]}))"
                elif argument["type"] == "Transform":
                    vals = argument["default_value"].split("-")
                    axis = vals[0].split(",")
                    origin = vals[1].replace("(","").replace(")","").split(",")

                    args += f" = Transform.new_with_axis_origin(Vector3({axis[0] + ',' + axis[1] + ', '+axis[2]})," \
                            f" Vector3({axis[3] + ',' + axis[4] + ',' + axis[5]}), " \
                            f"Vector3({axis[6] + ',' + axis[7]+ ',' + axis[8]}), Vector3({origin[0] +','+ origin[1]+ ','+ origin[2]}))"
                elif argument["type"] == "RID":
                    args += " = RID()"
                elif argument["type"] == "Rect2":
                    args += f" = {argument['type']}{argument['default_value']}"
                else:
                    args += f" = {argument['type']}({argument['default_value']})"
            elif argument["type"] != "String":
                args += " = " + argument["default_value"].replace("[Object:null]", "None").replace("Null", "None")
            elif argument["type"] == "String":
                args += f' = "{argument["default_value"]}"'
        args += ", "

        if argument["type"] in objects:
            objs_to_import += f"cimport classes.{argument['type']}\n"
    if method["has_varargs"]:
        args += "*varargs,"
    result = args.rstrip(", ") + ")"
    return objs_to_import, result

def generate_signature_arg_dict(method):
    dict_result = dict()
    i = 0
    for argument in method["arguments"]:
        if not argument["type"] in objects:
            continue
        dict_result[i] = argument["type"] if not argument["type"] in objects else argument["type"]
        i+=1
    dict_result_string = "{"
    for key in dict_result.keys():
        dict_result_string+= str(key)+":"+ dict_result[key]+","
    dict_result_string +="}"
    return dict_result_string

def init_unset_defaults(method, result):
    for argument in method["arguments"]:
        arg_name = (argument["name"] if argument["name"] not in exclude_words else argument["name"] + "_")
        # init default  values for arguments if not set
        if argument["has_default_value"]:
            if argument["type"] in objects:
                result += f"    if {arg_name} == None:\n" \
                          f"      {arg_name} = {argument['type']}._new()\n"
    return result


def generate_return_type(objs_to_import, method, obj):
    """generate the return_type"""
    res = ""
    return_type = method["return_type"]
    return_type_save = return_type

    if method["has_varargs"]:
        # This code should not be executed with varargs
        # TODO: improve this
        return "object"

    if "." in return_type:
        return_type = return_type.split(".")[-1]
    if return_type != "void":
        if "::" in return_type:
            import_class, return_type = return_type.split("::")
            if import_class != obj["name"] and import_class not in core:
                objs_to_import += f"cimport classes.{import_class}\n"
                return_type = import_class + "_" + return_type
            else:
                return_type = import_class + "_" + return_type

        if return_type in objects:
            res += f"{return_type}"
        else:
            return_type_imported = return_type if return_type.split(".")[0] in objects else return_type

            if return_type_imported == "Vector3_Axis":
                return_type_imported = "godot_vector3_axis"

            res += f"""{return_type_imported if return_type_imported not in types
                else types[return_type_imported]}"""
    else:
        res += "None"
    return res


def generate_classes(obj):
    """function to generate the godot class for the given object"""
    result = ""
    generate_classes_import = ""


    result += "\n############################Generated class###################################\n"

    result += f"""class {obj['name']}({obj['base_class'] if obj['base_class'] != "" else "Wrapper"}):\n"""
    result += "  def __init__(self):\n"
    result += "    super().__init__()\n"
    result += "  @staticmethod\n"
    result += f"  def cast(other:Wrapper)->{obj['name']}:\n"
    result += "    pass\n"
    result += generate_constants(obj)

    # only generate constructor if instanciable
    if obj["instanciable"]:
        result += f"""  @staticmethod\n"""
        result += f"""  def _new()->{obj['name']}:\n"""
        result += f"""      pass\n"""

    # TODO:Try to improve this
    if obj["singleton"]:
        result += f"""  @staticmethod\n"""
        # TODO: How to handle class Input
        result += f"""  def instance()->{obj['name']}:\n"""
        result += f"""      pass\n"""
    result += generate_properties(obj)
    results = generate_methods(obj, generate_classes_import)
    result += results[0]
    generate_classes_import = results[1]

    pxd_file = generate_pxd(obj["name"], obj)
    return generate_classes_import, result, pxd_file



def generate_singleton(obj):
    return f"""class {obj['name'].strip('_')}():
    _instance = None
    @classmethod
    def instance(cls)->{obj['name']}:
        pass"""

main_string = ""

import_string = ""
objects = set()

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
    pxd_file = ""
    set_ = set()
    # generate all the class files
    for element in obj:
        generated_file = generate_classes(element)
        bindings_file += generated_file[1] + "\n"
        pxd_file += generated_file[2]
        create_set(generated_file[0], set_)

        if element["singleton"] and element["name"].startswith("_"):
            bindings_file += generate_singleton(element)

    with open("py4godot/classes/generated.pyi", "w+") as bindings:
        bindings.write(base_import_string + main_string + bindings_file + init_methods_string + register_types_string + "\n" + pxd_file)


if __name__ == "__main__":
    build()
