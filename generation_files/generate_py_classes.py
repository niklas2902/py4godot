import copy
import json
import os
import sys
from functools import lru_cache
sys.path.append("..")

from generation_files.utils.constant_generation_helpers import generate_constants_for_class, \
    generate_type_hints_constants_for_class
from generate_enums import enumize_name
from xml_help import init_class, get_class_description, get_method_description, get_property_description
from generation_tools import write_if_different
from py4godot.method_ids import method_ids
from py4godot.class_ids import classes_dict

INDENT = "  "



def generate_class_docstring():
    return f"{INDENT}r'''{get_class_description()}'''"

def generate_method_docstring(methodname):
    return f"{INDENT*2}r'''{get_method_description(methodname)}'''"

def generate_property_docstring(propertyname):
    return f"{INDENT*2}r'''{get_property_description(propertyname)}'''"

class ReturnType:
    def __init__(self, name, type_):
        self.type = type_
        self.name = name
        self.is_primitive = False


class BuiltinClass:
    def __init__(self, name):
        self.name = name
        self.core_members = []


class CoreMember:
    def __init__(self, name, type_):
        self.name = name
        self.type_ = type_


class Operator:
    def __init__(self, class_, operator_string, return_type):
        self.right_type_values = []
        self.class_ = class_
        self.operator_string = operator_string
        self.return_type = return_type


IGNORED_CLASSES = {"Nil", "bool", "float", "int"}

ACCEPTED_CLASSES = {"Object", "String"}

native_structs = {}
forbidden_types = {"cont void*", "void*"}
normal_classes = set()
singletons = set()
builtin_classes = set()
core_classes = dict()
operator_dict = dict()
enums = list()
typed_arrays_names = set()
operator_to_method = {"+": "__add__",
                      "*": "__mul__",
                      "-": "__sub__",
                      "/": "__truediv__",
                      "%": "__mod__",
                      "**": "__pow__",
                      "==": "__eq__",
                      "!=": "__ne__",
                      "<": "__lt__",
                      "<=": "__le__",
                      ">": "__gt__",
                      ">=": "__ge__",
                      }
operator_to_variant_operator = {"+": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_ADD",
                                "*": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_MULTIPLY",
                                "-": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_SUBTRACT",
                                "/": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_DIVIDE",
                                "%": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_MODULE",
                                "**": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_POWER",
                                "==": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_EQUAL",
                                "!=": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_NOT_EQUAL",
                                "<": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_LESS",
                                "<=": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_LESS_EQUAL",
                                ">": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_GREATER",
                                ">=": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_GREATER_EQUAL",
                                }


def ungodottype(type_):
    if type_ == "float":
        return "double"
    if type_ == "int":
        return "long long"
    return type_


def generate_import():
    result = (
              "import py4godot.utils.functools as  functools\n"
              "import py4godot.utils.utils as utils\n"
              "from py4godot.classes.core import *\n"
              "from py4godot.utils.smart_cast import smart_cast, register_cast_function, register_class, get_class\n"
              "from py4godot.utils.CPPWrapper import CPPWrapper, constructor, static_method\n"
              "import py4godot.utils.utils as c_utils\n"
              "from py4godot.utils.CoreType import CoreType\n"
              "import typing\n"
              "import py4godot.variant_types\n"

    )
    return result


def generate_constructor_args(class_, constructor):
    result = ""
    if "arguments" not in constructor:
        return result

    for arg in constructor["arguments"]:
        if not arg["type"].startswith("enum::"):
            if should_turn_string_to_nodepath(class_, constructor): # We want to be able to create a NodePath from String
                result += f"{pythonize_name(arg['name'])}:'{unvariant(untypearray_or_dictionary(unbitfield_type(arg['type'])))}' , "
            else:
                result += f"{pythonize_name(arg['name'])}:'{unnodepath(unstringname(unstring(unvariant(untypearray_or_dictionary(unbitfield_type(arg['type']))))))}' , "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{pythonize_name(arg['name'])}:'{unstringname(unnodepath(unstring(unvariant(untypearray_or_dictionary(unenumize_type(arg_type))))))}', "
    result = result[:-2]
    return result


def convert_camel_case_to_underscore(string):
    res = ""
    was_upper = True
    was_number = False
    for char in string:
        if char.isupper():
            if was_upper or was_number:
                res += char

            else:
                res += "_" + char
        else:
            res += char
        was_upper = char.isupper()
        was_number = char in {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
    if ((
            "vector3" in res.lower() or "vector2" in res.lower()) or "float64" in res.lower() or "float32" in res.lower() or "int64" in res.lower() or "int32" in res.lower()):
        res = res.replace("Array", "_Array")
    return res


def generate_variant_type(class_):
    if class_ in builtin_classes:
        return f"GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_{convert_camel_case_to_underscore(class_).upper()}"
    else:
        return f"GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL"

def generate_string_name_or_node_path_args(args):
    res = ""
    for arg in args:
        if arg["type"] == "StringName":
            res += f"{INDENT*2}assert(isinstance({pythonize_name(arg['name'])}, (str, StringName)))"
            res = generate_newline(res)
            res += f"{INDENT * 2}py_stringname_{pythonize_name(arg['name'])} = {pythonize_name(arg['name'])} if isinstance({pythonize_name(arg['name'])}, StringName) else c_utils.py_string_to_string_name({pythonize_name(arg['name'])})"
        elif arg["type"] == "String":
            res += f"{INDENT * 2}assert(isinstance({pythonize_name(arg['name'])}, (str, String)))"
            res = generate_newline(res)
            res += f"{INDENT * 2}py_string_{pythonize_name(arg['name'])} = {pythonize_name(arg['name'])} if isinstance({pythonize_name(arg['name'])}, StringName) else c_utils.py_string_to_string({pythonize_name(arg['name'])})"

        elif arg["type"] == "NodePath":
            res += f"{INDENT*2}assert(isinstance({pythonize_name(arg['name'])}, (str, NodePath)))"
            res = generate_newline(res)
            res += f"{INDENT * 2}py_nodepath_{pythonize_name(arg['name'])} = {pythonize_name(arg['name'])} if isinstance({pythonize_name(arg['name'])},NodePath) else NodePath.new2({pythonize_name(arg['name'])})"
        res = generate_newline(res)
    return res
def generate_constructor_call_args(class_, constructor):
    result = ""
    if "arguments" not in constructor:
        return result

    for arg in constructor["arguments"]:
        if arg["type"] in classes - IGNORED_CLASSES:
            if arg["type"] == "String":
                result += f"py_string_{pythonize_name(arg['name'])}._ptr, "
            elif arg["type"] == "StringName" and not should_turn_string_to_nodepath(class_, constructor):
                result += f"py_stringname_{pythonize_name(arg['name'])}._ptr, "
            elif arg["type"] == "NodePath" and not should_turn_string_to_nodepath(class_, constructor):
                result += f"py_nodepath_{pythonize_name(arg['name'])}._ptr, "
            else:
                result += f"{pythonize_name(arg['name'])}._ptr, "
        elif arg["type"] == "Variant":
            result += f"{pythonize_name(arg['name'])}, "
        else:
            result += f"{pythonize_name(arg['name'])}, "
    result = result[:-2]
    return result


def should_turn_string_to_nodepath(class_, constructor):
    return (class_["name"] == "String" and constructor["index"] != 1)

def generate_buffer_for_constructor( args):
    res = ""
    for arg in args:
        if arg["type"] == "StringName":
            res += f"{INDENT * 2}_class.py_stringname_{pythonize_name(arg['name'])} =py_stringname_{pythonize_name(arg['name'])}"
        elif arg["type"] == "String":
            res += f"{INDENT * 2}_class.py_string_{pythonize_name(arg['name'])} = py_string_{pythonize_name(arg['name'])}"

        elif arg["type"] == "NodePath":
            res += f"{INDENT * 2}_class.py_nodepath_{pythonize_name(arg['name'])} = py_nodepath_{pythonize_name(arg['name'])}"

        elif arg["type"] in builtin_classes - {"float", "int", "bool"}:
            res += f"{INDENT * 2}_class.__{pythonize_name(arg['name'])}__ = {pythonize_name(arg['name'])}"

        res = generate_newline(res)
    return res

def generate_constructors(class_):
    res = ""
    if "constructors" not in class_.keys():
        return res
    for constructor in class_["constructors"]:
        res += f"{INDENT}@staticmethod"
        res = generate_newline(res)
        res += f"{INDENT}def new{constructor['index']}({generate_constructor_args(class_, constructor)}):"
        res = generate_newline(res)
        if "arguments" in constructor:
            res += generate_assert(constructor["arguments"], "", class_["name"])
            res = generate_newline(res)
        res += f"{INDENT * 2}_class = {class_['name']}.construct_without_init()"
        res = generate_newline(res)
        if "arguments" in constructor:
            res += generate_string_name_or_node_path_args(constructor["arguments"])
            res = generate_newline(res)
            res += generate_buffer_for_constructor(constructor["arguments"])

        res += f"{INDENT*2}_class._ptr = constructor({classes_dict[class_['name']]}, {constructor['index']}, tuple([{generate_constructor_call_args(class_, constructor)}]))"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _class"
        res = generate_newline(res)

    return res


def generate_class_imports(classes):
    result = "from py4godot.classes.core import *"
    result = "import py4godot.classes.core as generated_core"
    result = generate_newline(result)

    return result


def generate_newline(str_):
    return str_ + "\n"


def generate_return_value(classname, method_):
    result = ""
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if ret_val.type in {"int", "float", "bool"}:
            result += f"{INDENT * 2}{ret_val.name} = 0"
        elif ret_val.type in classes:
            if ret_val.type in builtin_classes or ret_val.type == classname:
                result += f"{INDENT * 2}{ret_val.name} = {ret_val.type}.construct_without_init()"
            else:
                result += f"{INDENT * 2}{ret_val.name} = classes.Object.Object.construct_without_init() #Smart casted to: {ret_val.type}"
        elif ret_val.type == "Variant":
            result += f"{INDENT * 2}{ret_val.name} = None"
        elif "typedarray" in ret_val.type:
            result += (f"{INDENT * 2}_ret = "
                       f"py4godot_{generate_typed_array_name(ret_val.type).lower()}.{generate_typed_array_name(ret_val.type)}.construct_without_init()")
        elif "enum::" in ret_val.type:
            result += f"{INDENT * 2}{ret_val.name}:int"
        else:
            result += f"{INDENT * 2}{ret_val.name}"
    else:
        result += f"{INDENT * 2}ret = None"

    result = generate_newline(result)
    return result


def get_base_class(class_):
    if "inherits" in class_.keys():
        return import_type(class_["inherits"], class_["name"])
    if class_["name"] in builtin_classes:
        return "CoreType"
    return ""


def strip_symbols_from_type(type):
    return type.replace("*", "").replace("const", "").strip()


def native_structs_in_method(mMethod):
    # TODO: check whether this method makes sense for later
    if ("arguments" in mMethod):
        for arg in mMethod["arguments"]:
            if arg["type"] in forbidden_types:
                return True
            if ("*" in arg["type"]):
                return True
            if strip_symbols_from_type(arg["type"]) in native_structs:
                return True

    if "return_value" in mMethod.keys():
       if mMethod["return_value"]["type"] in forbidden_types:
           return True
       if strip_symbols_from_type(mMethod["return_value"]["type"]) in native_structs:
           return True
    return False


def is_primitive(type_):
    return type_ in normal_classes.copy().union(builtin_classes)


def generate_return_statement(method_):
    # TODO generate returns
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if ret_val.type == "String":
            result = f"{INDENT * 2}return utils.gd_string_to_py_string(_ret)"
        elif ret_val.type == "Variant":
            result = f"{INDENT * 2}return _ret"
        else:
            if ret_val.type in classes - builtin_classes:
                result = f"{INDENT * 2}return smart_cast(_ret) if not _ret._ptr.is_null() else None"
            else:
                result = ""
                result += f"{INDENT * 2}return _ret"
    result = generate_newline(result)
    return result


def generate_singleton_constructor(classname):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def instance():"
    res = generate_newline(res)
    res += f"{INDENT*2}global _{classname}_singleton_instance"
    res = generate_newline(res)
    res += f"{INDENT * 2}if _{classname}_singleton_instance is None:"
    res = generate_newline(res)
    res += f"{INDENT * 3}singleton = {classname}()"
    res = generate_newline(res)
    res += f"{INDENT * 3}singleton._ptr = constructor({classes_dict[class_['name']]},0, ())"
    res = generate_newline(res)
    res += f"{INDENT * 3}_{classname}_singleton_instance = singleton"
    res = generate_newline(res)
    res += f"{INDENT * 2}return _{classname}_singleton_instance"
    res = generate_newline(res)
    return res


def generate_construction(class_):
    res = ""
    if is_singleton(class_["name"]):
        res += generate_singleton_constructor(class_["name"])
    return res


def is_singleton(class_name):
    return class_name in singletons


def generate_method_bind_name(class_name, method_name):
    return f"method_bind__{class_name}_{method_name}"


def get_variant_type(class_name):
    DICT = {

        "Nil": "GDEXTENSION_VARIANT_TYPE_NIL",

        #  atomic types
        "bool": "GDEXTENSION_VARIANT_TYPE_BOOL",
        "int": "GDEXTENSION_VARIANT_TYPE_INT",
        "float": "GDEXTENSION_VARIANT_TYPE_FLOAT",
        "string": "GDEXTENSION_VARIANT_TYPE_STRING",

        # math types
        "vector2": "GDEXTENSION_VARIANT_TYPE_VECTOR2",
        "vector2i": "GDEXTENSION_VARIANT_TYPE_VECTOR2I",
        "rect2": "GDEXTENSION_VARIANT_TYPE_RECT2",
        "rect2i": "GDEXTENSION_VARIANT_TYPE_RECT2I",
        "vector3": "GDEXTENSION_VARIANT_TYPE_VECTOR3",
        "vector3i": "GDEXTENSION_VARIANT_TYPE_VECTOR3I",
        "transform2d": "GDEXTENSION_VARIANT_TYPE_TRANSFORM2D",
        "vector4": "GDEXTENSION_VARIANT_TYPE_VECTOR4",
        "vector4i": "GDEXTENSION_VARIANT_TYPE_VECTOR4I",
        "plane": "GDEXTENSION_VARIANT_TYPE_PLANE",
        "quaternion": "GDEXTENSION_VARIANT_TYPE_QUATERNION",
        "aabb": "GDEXTENSION_VARIANT_TYPE_AABB",
        "basis": "GDEXTENSION_VARIANT_TYPE_BASIS",
        "transform3d": "GDEXTENSION_VARIANT_TYPE_TRANSFORM3D",
        "projection": "GDEXTENSION_VARIANT_TYPE_PROJECTION",

        # misc types
        "color": "GDEXTENSION_VARIANT_TYPE_COLOR",
        "stringname": "GDEXTENSION_VARIANT_TYPE_STRING_NAME",
        "nodepath": "GDEXTENSION_VARIANT_TYPE_NODE_PATH",
        "rid": "GDEXTENSION_VARIANT_TYPE_RID",
        "object": "GDEXTENSION_VARIANT_TYPE_OBJECT",
        "callable": "GDEXTENSION_VARIANT_TYPE_CALLABLE",
        "signal": "GDEXTENSION_VARIANT_TYPE_SIGNAL",
        "dictionary": "GDEXTENSION_VARIANT_TYPE_DICTIONARY",
        "array": "GDEXTENSION_VARIANT_TYPE_ARRAY",

        # typed arrays
        "packedbytearray": "GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY",
        "packedint32array": "GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY",
        "packedint64array": "GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY",
        "packedfloat32array": "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY",
        "packedfloat64array": "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY",
        "packedstringarray": "GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY",
        "packedvector2array": "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY",
        "packedvector3array": "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY",
        "packedcolorarray": "GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY"
    }

    return DICT[class_name.lower()]


def generate_virtual_return_type(return_type):
    if return_type == "bool":
        return "False"
    elif return_type == "int":
        return "0"
    elif return_type == "String":
        return "String()"

    return return_type + "()"


def generate_method_body_virtual(class_, mMethod):
    res = ""
    if "return_type" in mMethod.keys():
        res += f"{INDENT * 2}return {generate_virtual_return_type(mMethod['return_type'])}"
    else:
        res += f"{INDENT * 2}pass"
    res = generate_newline(res)
    return res


def is_static(mMethod):
    return mMethod["is_static"]


def generate_method_headers(mMethod):
    res = ""
    if is_static(mMethod):
        res = f"{INDENT}@staticmethod"
        res = generate_newline(res)
        return res
    res = f"{INDENT}@functools.native_method"
    res = generate_newline(res)
    return res


def generate_default_args(mMethod):
    res = ""
    if "arguments" not in mMethod:
        return ""

    for arg in mMethod["arguments"]:
        if "default_value" not in arg:
            continue
        if arg["type"] in {"float", "int", "Nil", "bool"}:
            continue
        if not arg["type"].startswith("enum::") and not arg["type"].startswith("typedarray::") and not arg[
            "type"].startswith("bitfield::"):
            type_ = unvariant(untypearray_or_dictionary(unbitfield_type(arg['type'])))
            if arg["type"] in builtin_classes:
                res += f"{INDENT * 2}if {pythonize_name(arg['name'])} is None:"
                res = generate_newline(res)
                res += f"{INDENT * 3}{pythonize_name(arg['name'])} = {arg['type']}.new0()"
            elif arg["type"] == "Variant":
                pass # We actually don't want to set anything here. This is later handled by C++
            else:
                res += f"{INDENT * 2}if {pythonize_name(arg['name'])} is None:"
                res = generate_newline(res)

                type_ = arg["type"]
                res += f"{INDENT * 3}{pythonize_name(arg['name'])} = c_utils.empty_object"
        res = generate_newline(res)
    return res


def should_skip_method(class_, method):
    return class_["name"] == "Node" and method["name"] in {"get_tree", "get_viewport", "get_window",
                                                           "get_last_exclusive_window"}


def generate_assert(args, methodname, classname):
    res = ""

    for arg in args:
        if (arg["type"] in classes.union(builtin_classes - {"int", "float", "bool", "Nil"})):
            if "default_value" in arg:
                continue
            res += f"{INDENT * 2}assert(not {pythonize_name(arg['name'])} is None)"
            res = generate_newline(res)
        if not (methodname in ("connect", "disconnect") and classname == "Object"):
            type_ = unenumize_type(untypearray_or_dictionary(arg['type']))
            res += f"{INDENT * 2}{generate_type_assertion(pythonize_name(arg['name']), type_)}"
            res = generate_newline(res)
    return res

def get_ret_value(method, class_):
    if "return_value" in method.keys() or "return_type" in method.keys():
        if "return_value" in method.keys():
            return_type = method["return_value"]["type"]
        else:
            return_type = method["return_type"]
        return return_type

def generate_call_deferred(method):
    res = ""
    if method["is_vararg"]:
        res += f"{INDENT*2}for arg in varargs:"
        res = generate_newline(res)
        res += f"{INDENT*3}if isinstance(arg, CoreType):"
        res = generate_newline(res)
        res += f"{INDENT * 4}arg.shouldBeDeleted=False"
        res = generate_newline(res)
    return res

def generate_method(class_, mMethod):
    res = ""
    #if should_skip_method(class_, mMethod):
    #    return res
    args = generate_args(class_, mMethod)
    ret_val = None
    args = generate_args(class_, mMethod)
    if get_ret_value(mMethod, class_) == "Object" and is_core:
        ret = "object"
    else:
        ret = generate_children(class_['name'], get_ret_value(mMethod, class_))
        if ret != None and len(ret) > 200:
            ret = "typing.Any"
    def_function = f"{INDENT}def {pythonize_name(mMethod['name'])}({args}) -> {ret}:"
    res += generate_method_headers(mMethod)
    res += def_function
    res = generate_newline(res)
    res += generate_method_docstring(mMethod["name"])
    res = generate_newline(res)
    res += generate_default_args(mMethod)
    res = generate_newline(res)
    if "arguments" in mMethod.keys():
        res += generate_assert(mMethod["arguments"], mMethod["name"], class_["name"])
        res = generate_newline(res)
        res += generate_variant_checks(mMethod, class_["name"])
        res = generate_newline(res)

    if mMethod["name"] == "call_deferred":
        res += generate_call_deferred(mMethod)
        res = generate_newline(res)


    if is_property_setter(class_, mMethod["name"]):
        property_name = get_property_name_for_method(class_, mMethod["name"])
        if class_["name"] in builtin_classes:
            res += f"{INDENT * 2}if self.__is_constant__:"
            res = generate_newline(res)
            res += f"{INDENT * 3}raise RuntimeError('You can't set the value of a constant')"
            res = generate_newline(res)

        res += f"{INDENT*2}self.py__{property_name} = {pythonize_name(mMethod['arguments'][0]['name'])}"
        res = generate_newline(res)
    if ("hash" in mMethod.keys()):
        res += generate_method_body_standard(class_, mMethod)
    else:
        res += generate_method_body_virtual(class_, mMethod)
    res = generate_newline(res)
    return res


def get_first_args_native(method_):
    if "arguments" not in method_:
        return "NULL"
    return "&_args[0]"


def get_args_count(method):
    if "arguments" in method:
        return len(method["arguments"])
    return 0


def get_godot_owner(method):
    if is_static(method):
        return "NULL"
    return "self.godot_owner"


def generate_ret_call(method_):
    result = ""
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if ret_val.type in classes:
            if ret_val.type in {"int", "float", "bool"}:
                result += f"c_utils.decref(_ret) # This needs to be decrefed, as it comes from C++ with one ref too much"
                result = generate_newline(result)
                result += f"_ret"
            elif ret_val.type in builtin_classes:
                result += f"{ret_val.name}._ptr"
            else:
                result += f"{ret_val.name}._ptr"
        elif ret_val.type == "Variant":
            result += f"_ret"
        elif "typedarray" in ret_val.type:
            result += f"_ret._ptr"
        else:
            result += f"_ret"
    else:
        result += f"_ret"
    return result

def generate_ret_ptr_cast(method):
    if "return_value" in method.keys() or "return_type" in method.keys():
        if ("return_value" in method.keys()):
            ret_val = ReturnType("_ret", method['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method['return_type'])
        if ret_val.type in classes - builtin_classes:
            return f"{cast_from_type_to_obj(ret_val.type)}"
        elif ret_val.type in builtin_classes - {"bool", "int", "float"}:
            return f""
        elif ret_val.type == "Variant":
            return ""
        elif "typedarray::" in ret_val.type:
            return f""
        return ""


def is_ret_variant(method):
    if "return_value" in method.keys() or "return_type" in method.keys():
        ret_val = None
        if ("return_value" in method.keys()):
            ret_val = ReturnType("_ret", method['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method['return_type'])

        return ret_val.type == "Variant"

    return False


def generate_variants(method):
    result = ""
    if "arguments" not in method.keys():
        return result
    return result

def cast_from_obj_to_type(typename):
    if typename in classes - builtin_classes and typename != "Object":
        return f"my_static_pointer_cast[CPPObject,CPP{typename}]"
    return ""

def cast_from_type_to_obj(typename):
    if typename in classes - builtin_classes and typename!="Object":
        return f"my_static_pointer_cast [CPP{typename}, CPPObject ]"
    return ""

def generate_string_arg(arg):
    res = ""
    res = ""
    res += f"{INDENT * 2}py__string_{pythonize_name(arg['name'])} = utils.py_string_to_string({pythonize_name(arg['name'])})"
    res = generate_newline(res)
    res += f"{INDENT * 2}py__string_{pythonize_name(arg['name'])}.shouldBeDeleted = False"
    res = generate_newline(res)
    return res
def generate_string_args(method):
    res = ""
    for arg in method["arguments"]:
        if arg["type"] == "String":
            res += generate_string_arg(arg)
            res = generate_newline(res)
    return res


def generate_method_body_standard(class_, method):
    number_arguments = 0
    result = ""
    if 'arguments' in method.keys():
        number_arguments = len(method['arguments'])

    result = generate_newline(result)
    result += generate_operators(class_)
    result = generate_newline(result)
    result += generate_variants(method)
    result = generate_newline(result)
    if "arguments" in method.keys():
        result += generate_string_name_or_node_path_args(method["arguments"])
        result = generate_newline(result)
    if is_property_setter(class_, method["name"]):
        result += generate_string_args(method)
        result = generate_newline(result)

    if "return_value" in method.keys() or "return_type" in method.keys():
        result += generate_return_value(class_["name"], method)
        if not is_static(method):
            result += f"{INDENT * 2}{generate_ret_call(method)} = self._ptr.call_with_return({method_ids['normal_methods'][class_['name']][method['name']]},tuple([{generate_method_args(class_, method)}]))"
        else:
            result += f"{INDENT * 2}{generate_ret_call(method)} = static_method({classes_dict[class_['name']]},{method_ids['static_methods'][class_['name']][method['name']]},tuple([{generate_method_args(class_, method)}]))"
        result = generate_newline(result)

        if is_property_getter(class_, method["name"]):
            property_name = get_property_name_for_method(class_, method["name"])
            ret_val = None
            if ("return_value" in method.keys()):
                ret_val = ReturnType("_ret", method['return_value']['type'])
            else:
                result += f"{INDENT * 2}self.py__{property_name} = _ret"
            result = generate_newline(result)

        result += generate_return_statement(method)
    else:
        if not is_static(method):
            result += f"{INDENT * 2}self._ptr.call_with_return({method_ids['normal_methods'][class_['name']][method['name']]},tuple([{generate_method_args(class_, method)}]))"
        else:
            result += f"{INDENT * 2}static_method({classes_dict[class_['name']]},{method_ids['static_methods'][class_['name']][method['name']]},tuple([{generate_method_args(class_, method)}]))"
    return result

def shared_ptr_type(classname):
    if classname in builtin_classes or classname in typed_arrays_names:
        return "CPP"+classname
    return "CPPObject"

def generate_method_args(class_, method):
    res = ""
    if "arguments" not in method.keys():
        if method["is_vararg"]:
            return "*varargs"
        return res
    for arg in method["arguments"]:
        if untypearray_or_dictionary(arg["type"]) in classes - IGNORED_CLASSES - builtin_classes:
            res += f"{pythonize_name(arg['name'])}._ptr, " # Todo: implement conditional
        elif untypearray_or_dictionary(arg["type"]) in builtin_classes - IGNORED_CLASSES:
            if arg["type"] == "String":
                if is_property_setter(class_, method["name"]):
                    res += f"py__string_{pythonize_name(arg['name'])}._ptr, "
                else:
                    res += f"py_string_{pythonize_name(arg['name'])}._ptr, "
            elif arg["type"] == "StringName":
                res += f"py_stringname_{pythonize_name(arg['name'])}._ptr, "
            elif arg["type"] == "NodePath":
                res += f"py_nodepath_{pythonize_name(arg['name'])}._ptr, "
            else:
                res += f"{pythonize_name(arg['name'])}._ptr, "
        elif "TypedArray" in untypearray_or_dictionary(arg["type"]):
            res += f"{pythonize_name(arg['name'])}._ptr, "
        elif arg["type"] == "Variant":
            res += f"{(pythonize_name(arg['name']))}, "
        else:
            res += f"{pythonize_name(arg['name'])}, "
    if method["is_vararg"]:
        res += "*varargs, "
    if len(res) > 2:
        return res[:-2]
    return res


def address_ret_decision(return_type):
    if return_type in {"int", "float", "bool"}:
        return "&_ret"
    if return_type == "Transform3D":
        return "&_ret.godot_owner"
    if return_type in builtin_classes:
        return "&(_ret.native_ptr)"
    if return_type in classes:
        return "&(_ret.godot_owner)"
    if return_type == "Variant":
        return "&(_ret.native_ptr)"
    if "typedarray" in return_type:
        return "&(_ret.godot_owner)"
    return "&_ret"


def generate_operators(class_):
    if class_["name"] == "Dictionary":
        print(class_["name"])
        if ("operators" in class_.keys()):
            for operator in class_["operators"]:
                print(operator)
    return ""


def collect_members(obj):
    global core_classes
    print(obj["builtin_class_member_offsets"][3])
    for class_ in obj["builtin_class_member_offsets"][3]["classes"]:
        core_class = BuiltinClass(class_["name"])
        for member in class_["members"]:
            core_member = CoreMember(member["member"], member["meta"].replace("32", ""))
            core_class.core_members.append(core_member)
        core_classes[class_["name"]] = core_class
    print(core_classes)


def generate_init(class_):
    res = ""
    res += f"{INDENT}def __init__(self):"
    res = generate_newline(res)
    res += f"{INDENT * 2}self.shouldBeDeleted = True"
    res = generate_newline(res)
    res += f"{INDENT * 2}self._ptr =  constructor({classes_dict[class_['name']]},0, ())"
    res = generate_newline(res)
    return res

def is_refcounted(class_):
    if "inherits" in class_.keys():
        cls = find_class(class_["inherits"])
        if cls["name"] == "RefCounted":
            return True
        while cls:
            if "inherits" not in cls.keys():
                break
            cls = find_class(cls["inherits"])
            if cls["name"] == "RefCounted":
                return True
    return False

def is_node(class_):
    if "inherits" in class_.keys():
        cls = find_class(class_["inherits"])
        if cls["name"] == "Node":
            return True
        while cls:
            if "inherits" not in cls.keys():
                break
            cls = find_class(cls["inherits"])
            if cls["name"] == "Node":
                return True
    return False


def generate_init_signals(cls):
    res = ""
    res += f"{INDENT}def init_signals(self):"
    res = generate_newline(res)
    if cls["name"] != "Object" and cls["name"] not in builtin_classes and not "typedarray" in cls["name"].lower():
        res += f"{INDENT*2}super().init_signals()"
        res = generate_newline(res)
    if cls["name"] in builtin_classes or "typedarray" in cls["name"].lower():
        res += f"{INDENT*2}pass"
        res = generate_newline(res)
        return res
    if "signals" in cls.keys():
        for signal in cls["signals"]:
            res += f"{INDENT*2}{signal['name']}_name = utils.py_string_to_string_name(\"{signal['name']}\")"
            res = generate_newline(res)
            res += f"{INDENT*2}self.{signal['name']} = signals.BuiltinSignal(self, {signal['name']}_name)"
            res = generate_newline(res)
    return res
def generate_destroy_object_method():
    res = ""
    res = generate_newline(res)
    res += f"{INDENT}def destroy(self):"
    res = generate_newline(res)
    res += f"{INDENT*2}self.Object_internal_class_ptr.get().destroy()"
    res = generate_newline(res)
    return res


def generate_common_methods(class_):
    result = ""
    if not is_singleton(class_["name"]) and not class_["name"] in typed_arrays_names:
        result += generate_constructor(class_["name"])
        result = generate_newline(result)
    result = generate_newline(result)
    if class_["name"] in builtin_classes or class_["name"] in typed_arrays_names:
        result += generate_constructors(class_)
        result = generate_newline(result)
        result += generate_init(class_)
        result = generate_newline(result)
    if class_["name"] == "Object":
        result += generate_get_py_script_method()
        result += generate_destroy_object_method()

    result += generate_construct_without_init(class_)

    result += generate_get_type(class_["name"])
    result = generate_newline(result)
    if not is_singleton(class_["name"]):
        result += generate_del(class_)

    return result

def generate_construct_without_init(class_):
    res = ""
    res += f"{INDENT}def generate_wrapper(self):"
    res = generate_newline(res)
    res += f"{INDENT*2}return CPP{class_['name']}Wrapper()"
    res = generate_newline(res)
    res += generate_init_signals(class_)
    res = generate_newline(res)
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def construct_without_init():"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls = {class_['name']}.__new__({class_['name']})"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls.shouldBeDeleted = True"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls.init_signals()"
    res = generate_newline(res)
    res += f"{INDENT * 2}return cls"
    res = generate_newline(res)
    return res

def generate_get_type(classname):
    result = ""
    result += f"{INDENT}@staticmethod"
    result = generate_newline(result)
    result += f"{INDENT}def get_type():"
    result = generate_newline(result)
    result += f"{INDENT*2}return '{classname}'"
    result = generate_newline(result)
    return result

def generate_get_py_script_method():
    result = ""
    result += f"{INDENT}def get_pyscript(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}id = self.get_instance_id()"
    result = generate_newline(result)
    result += f"{INDENT * 2}script = c_utils.py_get_py_script(id)"
    result = generate_newline(result)
    result += f"{INDENT * 2}return script"
    result = generate_newline(result)

    result = generate_newline(result)
    result += f"{INDENT}@property"
    result = generate_newline(result)
    result += f"{INDENT}def _import_path(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}_ret = String.new0()"
    result = generate_newline(result)
    result += f"{INDENT * 2}#_ret._ptr = self.Object_internal_class_ptr.get().get_import_path()"
    result = generate_newline(result)
    result += f"{INDENT * 2}return c_utils.gd_string_to_py_string(_ret)"

    result = generate_newline(result)
    result += f"{INDENT}@_import_path.setter"
    result = generate_newline(result)
    result += f"{INDENT}def _import_path(self, val):"
    result = generate_newline(result)
    result += f"{INDENT * 2}pass"
    result = generate_newline(result)
    return result


def find_class(name):
    for cls in obj["classes"]:
        if cls["name"] == name:
            return cls


def generate_new_static(class_):
    res = ""

    return res


def generate_enums(class_):
    if not "enums" in class_.keys():
        return ""
    res = ""
    for enum in class_["enums"]:
        res += f"class {enum['name']}:"
        res = generate_newline(res)
        for enum_value in enum["values"]:
            res += f"{INDENT}{enum_value['name']} = {enum_value['value']}"
            res = generate_newline(res)
    res = generate_newline(res)
    return res


def generate_properties(class_):
    result = ""
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            result += generate_property(property, class_["name"])
    return result


def generate_member_getter(class_, member):
    res = ""
    res += f"{INDENT}@property"
    res = generate_newline(res)
    res += f"{INDENT}def {member.name}(self) -> {undouble_type(member.type_)}:"
    res = generate_newline(res)

    body = ""
    if member.type_ in builtin_classes - {"float", "int", "bool"}:
        body += f"{INDENT * 2}_ret = {member.type_}.construct_without_init()"
        body = generate_newline(body)
        body += f"{INDENT * 2}_ret._ptr = self._ptr.call_with_return({method_ids['normal_methods'][class_]['get_member_' + member.name]}, tuple())"
        body = generate_newline(body)
    else:
        body += f"{INDENT * 2}_ret = self._ptr.call_with_return({method_ids['normal_methods'][class_]['get_member_'+member.name]}, tuple())"
        body = generate_newline(body)
        body += f"{INDENT * 2}c_utils.decref(_ret) # This needs to be decrefed, as it comes from C++ with one ref too much"
        body = generate_newline(body)
    body += f"{INDENT * 2}return _ret"
    body = generate_newline(body)
    res += body

    res += f"{INDENT}def get_{member.name}(self) -> None:"
    res = generate_newline(res)
    res += body

    return res

def undouble_type(type_):
    if type_ == "double":
        return "float"
    return type_

def generate_member_setter(class_, member):
    res = ""
    res += f"{INDENT}@{member.name}.setter"
    res = generate_newline(res)
    res += f"{INDENT}def {member.name}(self, value: '{undouble_type(member.type_)}' ):"
    res = generate_newline(res)

    body = ""
    body += f"{INDENT * 2}"+generate_type_assertion("value", unenumize_type(untypearray_or_dictionary(member.type_)))
    body = generate_newline(body)
    body += f"{INDENT * 2}self._ptr.call_with_return({method_ids['normal_methods'][class_]['set_member_'+member.name]}, tuple([value]))"
    body = generate_newline(body)
    res += body

    res += f"{INDENT}def set_{member.name}(self, value: '{undouble_type(member.type_)}' ):"
    res = generate_newline(res)
    res += body
    return res


def generate_members_of_class(class_):
    res = ""
    if class_["name"] in core_classes.keys():
        for member in core_classes[class_["name"]].core_members:
            res += generate_member_getter(class_["name"], member)
            res = generate_newline(res)
            res += generate_member_setter(class_["name"], member)
    return res


def simplify_type(type):
    list_types = type.split(",")
    return list_types[0]


def generate_property_index(property, is_setter=False):
    if not is_setter:
        if "index" in property.keys():
            return str(property["index"])
    else:
        if "index" in property.keys():
            return str(property["index"]) + ", "

    return ""


def generate_children(containing_class_, type_):
    if type_ and "," in type_:
        type_ = type_.split(",")[0].strip()
    if type_ and ";" in type_:
        type_ = type_.split(";")[0].strip()
    already_registed_classes = set()
    if isinstance(type_, set):
        for part_type in type_:
            already_registed_classes.add(part_type)
    else:
        already_registed_classes.add(type_)
    if type_ == None:
        return None
    temp = set()
    for cls in already_registed_classes:
        children = get_children(cls)
        temp.update(children)
        temp.add(cls)
    already_registed_classes = temp
    res = ""
    res += "typing.Union["
    for cls in already_registed_classes:
        res += ungodottype_type_array(unbitfield_type(unenumize_type(cls)), containing_class_) + ","
    return res[:-1] +"]"

def ungodottype_type_array(type_, class_name):
    if type_ == class_name:
        return "'typing.Self'"
    if type_ == None:
        return "None"
    if (type_ == "String"):
        return "str"
    if (type_ == "Variant"):
        if class_name in typed_arrays_names:
            typed_array_type = class_name.replace("TypedArray", "")

            if typed_array_type in builtin_classes - {"float", "int", "Nil", "bool"}:
                if not is_core:
                    return f"'{typed_array_type}'"
                else:
                    return f"'{typed_array_type}'"
            elif (typed_array_type in classes):
                return f"'py4godot_{typed_array_type.lower()}.{typed_array_type}'"
            return typed_array_type
        return "typing.Any"
    elif type_ in builtin_classes - {"float", "int", "Nil", "bool"}:
        if not is_core:
            return f"'{type_}'"
        else:
            return f"'{type_}'"
    elif "typedarray::" in type_:
        return f"'py4godot_{untypearray_or_dictionary(type_).lower()}.{untypearray_or_dictionary(type_)}'"
    elif "typeddictionary::" in type_:
        return f"'{untypearray_or_dictionary(type_)}'"
    if (type_ in classes):
        return f"'py4godot_{type_.lower()}.{type_}'"

    return type_



@lru_cache(maxsize=None)
def get_children(base_cls):
    res = {base_cls}
    for cls in full_classes:
        if not "inherits" in cls.keys():
            continue
        if cls["inherits"] == base_cls:
            res.update(get_children(cls["name"]))
    return res

def generate_property(property, classname):
    result = ""
    result += f"{INDENT}@property"
    result = generate_newline(result)
    ret = generate_children(class_['name'], property['type'])
    if len(ret) > 200:
        ret = "typing.Any"
    result += f"{INDENT}def {pythonize_name(property['name'])}(self) -> {ret}:"
    result = generate_newline(result)
    result += generate_property_docstring(property["name"])
    result = generate_newline(result)
    result += f"{INDENT * 2}_ret = self. {pythonize_name(property['getter'])}({generate_property_index(property)})"
    result = generate_newline(result)

    result += f"{INDENT * 2}return _ret"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        result += f"{INDENT}@{pythonize_name(property['name'])}.setter"
        result = generate_newline(result)
        if (classname == "RichTextLabel" and property["name"] == "custom_effects"):
            result += f"{INDENT}def {pythonize_name(property['name'])}(self, value:'Array'):"  # TODO remove, when properties finally are the same types as functions
        elif classname in typed_arrays_names:
            result += f"{INDENT}def {pythonize_name(property['name'])}(self, {import_type(unvariant_type_array(unnodepath(unstring(unstringname(untypearray_or_dictionary(simplify_type(property['type']))))), classname), classname)} value):"
        elif "typedarray" in property['type']:
            result += f"{INDENT}def {pythonize_name(property['name'])}(self, value:'Array'):"
        else:
            result += f"{INDENT}def {pythonize_name(property['name'])}(self,  value:'{import_type(objectify_type(unnodepath(unstringname(unvariant(unstring(untypearray_or_dictionary(simplify_type(property['type']))))))), classname)}'):"
        result = generate_newline(result)
        result += f"{INDENT * 2}self.{pythonize_name(property['setter'])}(value)"
        result = generate_newline(result)

    return result

def objectify_type(type_):
    if type_ in classes - builtin_classes:
        return "Object"
    return type_


def is_property_setter(class_, methodname):
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            if "setter" in property.keys():
                if methodname == property["setter"]:
                    return True
    return False

def is_property_getter(class_, methodname):
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            if methodname == property["getter"]:
                return True
    return False


def get_property_name_for_method(class_, methodname):
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            if "getter" in property.keys():
                if methodname == property["getter"] or ("setter" in property.keys() and methodname == property["setter"]):
                    return property["name"]
    return ""

def pythonize_name(name):
    if name in (
            "from", "len", "in", "for", "with", "class", "pass", "raise", "global", "new", "get_interface", "object"):
        return name + "_"
    return name


def unbitfield_type(arg_type):
    if arg_type.startswith("bitfield::"):
        return "int"
    return arg_type


def unvariant(type_):
    if (type_ == "Variant"):
        return "object"
    return type_


def unvariant_type_array(type_, typedarray_name):
    if type_ == "Variant":
        return typedarray_name.replace("TypedArray", "")
    return type_


def convert_from_variant(arg_name):
    return f"{arg_name}.get_converted_value()"


def convert_to_variant(arg_name):
    return f"create_variant_from_py_object({arg_name})"


def unnull_type(value_to_return):
    if value_to_return == "null":
        return "None"
    return value_to_return


def unnull_type_for_given_type(value_to_return, type_):
    if value_to_return == "null":
        if type_ in ("float", "int"):
            return "0"
        elif type_ == "bool":
            return "False"
        return "None"
    return value_to_return


def pythonize_boolean_types(arg_val):
    if arg_val == "true":
        return "True"
    elif arg_val == "false":
        return "False"
    return arg_val


def unref_type(arg_val):
    if ("&" in arg_val):
        return '""'
    return arg_val


def generate_default_constructor_args(values):
    return values


def unnull_arg(default_value, arg_type):
    if default_value == "" or default_value == "null" or default_value == "{}":
        return arg_type
    return default_value


def generate_default_arg(class_, arg, arg_type):
    set_to_iterate = builtin_classes.union(classes) - {"int", "float", "bool", "Nil"}
    if "default_value" in arg:
        if arg_type in set_to_iterate or "TypedArray" in arg_type:
            if arg_type == "String":
                return "= ''"
            return "= None"
        else:
            if pythonize_boolean_types(unref_type(unnull_type(arg['default_value']))) == None:
                pass
            return f"={pythonize_boolean_types(unref_type(unnull_type_for_given_type(arg['default_value'], arg_type)))}"

    return ""


def import_type(type_, classname):
    if type_ == classname:
        return type_
    if type_ in builtin_classes:
        return type_
    elif type_ == "PyVariant":
        return type_
    elif type_ == "object":  # TODO merge with PyVariant
        return type_
    elif type_ == "Object":
        return "py4godot_" + type_.lower() + "." + type_
    elif type_ == "str":
        return type_
    elif "TypedArray" in type_:
        return "py4godot_" + untypearray_or_dictionary(type_).lower()+ "." + type_
    return "py4godot_" + type_.lower() + "." + type_


def unstring(type_):
   if type_ == "String":
       return "str"
   return type_

def unstringname(type_):
    if type_ == "StringName":
        return "object"
    return type_
def unnodepath(type_):
    if type_ == "NodePath":
        return "object"
    return type_


def generate_args(class_, method_with_args):
    result = "self, "
    if (is_static(method_with_args)):
        result = ""
    if "arguments" not in method_with_args:
        if method_with_args["is_vararg"]:
            result += "*varargs, "
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if not arg["type"].startswith("enum::"):
            type_ = unnodepath(unstringname(unstring(unvariant(untypearray_or_dictionary(unbitfield_type(arg['type']))))))
            if class_["name"] in typed_arrays_names:
                type_ = unstring(unvariant_type_array(untypearray_or_dictionary(unbitfield_type(arg['type'])), class_["name"]))
            arg_type_for_default_arg = type_
            if arg["type"] in ("NodePath", "StringName"):
                arg_type_for_default_arg = arg["type"]
            result += f"{pythonize_name(arg['name'])}:'{import_type(type_, class_['name'])}' {generate_default_arg(class_, arg, arg_type_for_default_arg)}  , "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            type_ = unstring(unvariant(untypearray_or_dictionary(unenumize_type(arg_type))))
            if class_["name"] in typed_arrays_names:
                type_ = unstring(unvariant_type_array(untypearray_or_dictionary(unenumize_type(arg_type)), class_["name"]))
            result += f"{pythonize_name(arg['name'])}:'{import_type(type_, class_['name'])}'  {generate_default_arg(class_, arg, type_)}, "
    if method_with_args["is_vararg"]:
        result += "*varargs, "
    result = result[:-2]
    return result


def unenumize_type(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    if len(type_list) > 1:
        # return "int"
        # TODO: enable later
        return "int"
    elif enum_type in enums:
        return "int"
    return type_list[0]


def untypearray_or_dictionary(type_):
    if "typeddictionary" in type_:
        return "Dictionary"
    if "typedarray" in type_:
        return generate_typed_array_name(type_)
    return type_


def get_class_from_enum(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    return type_list[0]



def get_classes_to_import(classes):
    classes_to_import = set()
    for class_ in classes:
        if ("inherits" in class_.keys()):
            classes_to_import.add(class_["inherits"])
        if "methods" in class_.keys():
            for method in class_["methods"]:
                if ("return_value" in method.keys()):
                    if (unbitfield_type(get_class_from_enum(method["return_value"]["type"])) in normal_classes):
                        classes_to_import.update(get_children(get_class_from_enum(method["return_value"]["type"])))
                    if "typedarray::" in method["return_value"]["type"]:
                        classes_to_import.add(generate_typed_array_name(method["return_value"]["type"]))
                if ("arguments" not in method.keys()):
                    continue
                for argument in method["arguments"]:
                    if argument["type"] in normal_classes:
                        classes_to_import.add(argument["type"])
                    if "enum" in argument["type"]:
                        type = argument["type"].lstrip("enum::")
                        if type.split(".")[0] in normal_classes:
                            classes_to_import.add(type.split(".")[0])
                    if "typedarray::" in argument["type"]:
                        classes_to_import.add(generate_typed_array_name(argument["type"]))
        if "properties" in class_.keys():
            for prop in class_["properties"]:

                if simplify_type(prop["type"]) in normal_classes:
                    classes_to_import.add(simplify_type(prop["type"]))

    for cls in classes:
        classes_to_import.difference({cls["name"]})
    return classes_to_import

def remove_duplicates(lst):
    seen = set()
    return [x for x in lst if not (x in seen or seen.add(x))]


def generate_constructor(classname):
    res = ""
    if classname in builtin_classes:
        return res
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def constructor():"
    res = generate_newline(res)
    res += f"{INDENT * 2}class_ = {classname}.construct_without_init()"
    res = generate_newline(res)
    res += f"{INDENT * 2}class_._ptr = constructor({classes_dict[classname]},0, ())"
    res = generate_newline(res)

    res += f"{INDENT * 2}return class_"
    res = generate_newline(res)

    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def new():"
    res = generate_newline(res)
    res += f"{INDENT * 2}class_ = {classname}.construct_without_init()"
    res = generate_newline(res)
    res += f"{INDENT * 2}class_._ptr = constructor({classes_dict[classname]},0, ())"
    res = generate_newline(res)

    res += f"{INDENT * 2}return class_"
    res = generate_newline(res)

    res += f"{INDENT}def __init__(self):"
    res = generate_newline(res)
    res += f"{INDENT * 2}self._ptr =  CPP{class_['name']}Wrapper()"
    res = generate_newline(res)
    res += f"{INDENT * 2}if c_utils.shouldCreateObject:"
    res = generate_newline(res)
    res += f"{INDENT * 3}self._ptr = constructor({classes_dict[classname]},0, ())"
    res = generate_newline(res)
    return res


def get_parameters_operator(operator):
    if len(operator.right_type_values) > 0:
        return "self, other"
    return "self"


def init_return_type(return_type):
    if (return_type in ("int", "float")):
        return "0"
    elif return_type == "bool":
        return "False"
    elif return_type in {"Variant", "object", "PyVariant"}:
        return "None"
    else:
        return f"{return_type}()"


def address_param(name, target, shouldReturnCPtr):
    appendix = ".get()" if shouldReturnCPtr else ""
    if target in builtin_classes - {"int", "float", "bool", "Nil"}:
        if name != "self":
            return f"complex_val_{target}.{target}_internal_class_ptr{appendix}"
        else:
            return f"self_val.{target}_internal_class_ptr{appendix}"
    elif target == "Object":
        if name != "self":
            return f"complex_val_{target}.{target}_internal_class_ptr{appendix}"
        else:
            return f"self_val.{target}_internal_class_ptr{appendix}"
    if target == "Variant":
        return "complex_val_variant.variant"
    if target == "int":
        return "primitive_val_int"
    if target == "float":
        return "primitive_val_float"
    if target == "bool":
        return "primitive_val_bool"
    if target == "Nil":
        return "NULL"
    return "NULL"


def get_instance_type(target):
    if target != "bool":
        return target
    return "type(True)"


def operator_to_python_name(operator_name):
    operator_names = {"*": "mult", "/": "divide", "+": "add", "-": "subtract", "==": "equals", "!=": "unequals",
                      "%": "modulo", "<": "lower_than", ">": "greater_than", ">=": "greater_euqals",
                      "<=": "lower_equals"}
    return operator_names[operator_name]


def generate_operators_for_class(class_name):
    res = ""
    if class_name in operator_dict.keys():
        for operator in operator_dict[class_name]:
            if operator in operator_to_method.keys():
                op = operator_dict[class_name][operator]
                res += f"{INDENT}def {operator_to_method[operator]}({get_parameters_operator(operator_dict[class_name][operator])}):"
                res = generate_newline(res)
                res += f"{INDENT * 2}_ret = {init_return_type(op.return_type)}"
                res = generate_newline(res)
                if op.return_type in builtin_classes - {"float", "int", "bool", "Nil"}:
                    res += f"{INDENT * 2}_ret._ptr = self._ptr.call_with_return({method_ids['normal_methods'][class_name][operator]}, (other,))"
                else:
                    res += f"{INDENT * 2}_ret= self._ptr.call_with_return({method_ids['normal_methods'][class_name][operator]}, (other,))"
                res = generate_newline(res)
                res += f"{INDENT * 2}return _ret"
                res = generate_newline(res)
    res = generate_newline(res)
    return res



def create_core_classes_set():
    res = "core_classes = {"
    for cls in builtin_classes - {"int", "float", "bool", "Nil"}:
        res += cls + ","
    res += "}"
    res = generate_newline(res)
    return res


def generate_classes(classes, filename, is_core=False, is_typed_array=False):
    res = generate_import()
    if classes[0]["name"] != "Object":
        res += "import py4godot.classes as classes"
        res = generate_newline(res)
    if is_typed_array:
        res = generate_newline(res)

        typedarray_type = classes[0]["name"].replace('TypedArray', '')
        if typedarray_type not in builtin_classes:
            res += f"if typing.TYPE_CHECKING:"
            res = generate_newline(res)
            res += f"{INDENT}import py4godot.classes.{typedarray_type} as py4godot_{typedarray_type.lower()}"
            res = generate_newline(res)

        res += f"from py4godot.classes.core import *"
        res = generate_newline(res)
        classes_to_import = get_classes_to_import(classes)
        for cls in classes_to_import:
            if cls in [class_["name"] for class_ in classes]:
                continue
            res += f"import py4godot.classes.{cls} as py4godot_{cls.lower()} "
            res = generate_newline(res)

    elif not is_core:
        if not "Object" in [cls["name"] for cls in classes]:
            res += "import py4godot.classes as classes"
            res = generate_newline(res)
        res += f"import py4godot.signals as signals"
        res = generate_newline(res)
        res = generate_newline(res)
        classes_to_import = get_classes_to_import(classes)
        res += "import typing"
        res = generate_newline(res)
        res += "if typing.TYPE_CHECKING:"
        res = generate_newline(res)
        res += f"{INDENT}pass"
        res = generate_newline(res)
        for cls in classes_to_import:
            if cls in [class_["name"] for class_ in classes]:
                continue
            if cls in [cls["name"] for cls in obj["classes"]] and cls in [class_["inherits"] for class_ in classes]:
                continue
            res += f"{INDENT}import py4godot.classes.{cls} as py4godot_{cls.lower()} "
            res = generate_newline(res)
        for cls in classes_to_import:
            if cls in [class_["name"] for class_ in classes]:
                continue
            if cls in [cls["name"] for cls in obj["classes"]] and cls not in [class_["inherits"] for class_ in classes]:
                continue
            res += f"import py4godot.classes.{cls} as py4godot_{cls.lower()} "
            res = generate_newline(res)
    for class_ in classes:
        if (class_["name"] in IGNORED_CLASSES):
            continue


        res += f"from py4godot.wrappers.wrappers import CPP{class_['name']}Wrapper"
        res = generate_newline(res)
        res = generate_newline(res)
        if is_singleton(class_["name"]):
            res += f"_{class_['name']}_singleton_instance = None"
            res = generate_newline(res)

        res += generate_enums(class_)
        res = generate_newline(res)

        res += f"class {class_['name']}({get_base_class(class_)}):"
        res = generate_newline(res)
        res += generate_class_docstring()
        res = generate_newline(res)
        res += generate_type_hints_constants_for_class(class_)
        res = generate_newline(res)
        res += generate_common_methods(class_)
        res += generate_special_methods(class_)
        res = generate_newline(res)
        res += generate_construction(class_)
        res = generate_newline(res)
        if "methods" in class_.keys():
            res += generate_properties(class_)
            res += generate_members_of_class(class_)
            for method in class_["methods"]:
                if native_structs_in_method(method):
                    # TODO: Check if this makes sense
                    continue
                res += generate_method(class_, method)
                res = generate_newline(res)
        res += generate_operators_for_class(class_["name"])
        if class_["name"] not in builtin_classes and not is_typed_array:
            res += generate_register_cast(class_["name"])
            res += generate_register_class(class_["name"])
    if is_core:
        res += create_core_classes_set()
    text_to_write = "# distutils: language=c++\n"+res
    write_if_different(filename, text_to_write)

def generate_register_cast(class_name):
    res = ""
    res += f"register_cast_function('{class_name}', {class_name}.cast)"
    res = generate_newline(res)
    if class_name == "ScriptExtension":
        res += f"register_cast_function('PyScriptExtension', {class_name}.cast)"
        res = generate_newline(res)
    return res

def generate_register_class(class_name):
    res = ""
    res += f"register_class('{class_name}', {class_name})"
    res = generate_newline(res)
    return res

def generate_dictionary_set_item():
    res = ""
    res += f"{INDENT}def __setitem__(self, key, value):"
    res = generate_newline(res)
    res += f"{INDENT*2}self._ptr.call_with_return({method_ids['normal_methods']['Dictionary']['__setitem__']}, (key, value))"
    res = generate_newline(res)
    return res


def generate_dictionary_get_item():
    res = ""
    res += f"{INDENT}def __getitem__(self,  key):"
    res = generate_newline(res)
    res += f"{INDENT * 2}if not self.has(key):"
    res = generate_newline(res)
    res += f"{INDENT * 3}raise KeyError(f\"Key '%s' not found\")".replace("%s", "{key}")
    res = generate_newline(res)
    res += f"{INDENT * 2}pyobject = self._ptr.call_with_return({method_ids['normal_methods']['Dictionary']['__getitem__']}, (key,))"
    res = generate_newline(res)
    res += f"{INDENT * 2}return pyobject"
    return res


def generate_get_item_from_array(classname):
    res = ""
    res += f"{INDENT}def __getitem__(self,  index):"
    res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}#if index < 0:"
    res = generate_newline(res)
    res += f"{INDENT * 3}#raise KeyError(f\"Index '%s' invalid\")".replace("%s", "{index}")
    res = generate_newline(res)
    res += f"{INDENT * 2}#cdef PyObject * pyobject = self.{classname}_internal_class_ptr.get()[0][index].get_converted_value(True)"
    res = generate_newline(res)
    res += f"{INDENT * 2}#cdef object o = None"
    res = generate_newline(res)
    res += f"{INDENT * 2}#if not is_none(pyobject):"
    res = generate_newline(res)
    res += f"{INDENT * 3}#o = <object>pyobject"
    res = generate_newline(res)
    res += f"{INDENT * 2}pass#return o"
    return res


def generate_get_item_from_type_array(classname, classtype):
    res = ""
    res += f"{INDENT}def __getitem__(self,  index):"
    res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}if index < 0:"
    res = generate_newline(res)
    res += f"{INDENT * 3}raise KeyError(f\"Index '%s' invalid\")".replace("%s", "{index}")
    res = generate_newline(res)
    if classtype in builtin_classes - {"int", "float", "bool", "Nil"}:
        res = generate_newline(res)
        res += f"{INDENT * 2}#cdef {classtype} pyobject = {classtype}()"
        res = generate_newline(res)
        res += f"{INDENT * 2}#pyobject.{classtype}_internal_class_ptr = self.{classname}_internal_class_ptr.get()[0][<int>index]"
        res = generate_newline(res)
        res += f"{INDENT * 2}pass#return pyobject"
    else:
        res += f"{INDENT * 2}pass#return self.{classname}_internal_class_ptr.get()[0][<int>index]"
    return res


def generate_special_methods_dictionary():
    res = ""
    res += generate_dictionary_set_item()
    res = generate_newline(res)
    res += generate_dictionary_get_item()
    return res

def is_builtin_class_in_name(classname):
    for cls in builtin_classes- {"int", "float", "bool", "Nil"}:
        if cls in classname:
            return True
    return False

def generate_array_set_item(class_):
    res = ""
    res += f"{INDENT}def __setitem__(self,  index, value):"
    res = generate_newline(res)
    if not is_builtin_class_in_name(class_):
        res += f"{INDENT * 2}self._ptr.call_with_return({method_ids['normal_methods'][class_['name']]['__setitem__']}, (index, value))"
    else:
        res += f"{INDENT * 2}self._ptr.call_with_return({method_ids['normal_methods'][class_['name']]['__setitem__']}, (index, value._ptr))"
    res = generate_newline(res)
    return res


def generate_array_get_item(class_):
    res = ""
    res += f"{INDENT}def __getitem__(self,  index):"
    res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}if index < 0:"
    res = generate_newline(res)
    res += f"{INDENT * 3}raise KeyError(f\"Index '%s' invalid\")".replace("%s", "{index}")
    res = generate_newline(res)
    if not is_builtin_class_in_name(class_):
        res += f"{INDENT * 2}pyobject = self._ptr.call_with_return({method_ids['normal_methods'][class_['name']]['__getitem__']}, (index,))"
    else:
        res += f"{INDENT * 2}pyobject._ptr = self._ptr.call_with_return({method_ids['normal_methods'][class_['name']]['__getitem__']}, (index,))"
    res = generate_newline(res)
    res += f"{INDENT * 2}return pyobject"
    return res

def generate_del(class_):
    res = ""
    if class_["name"] not in builtin_classes and class_["name"] not in typed_arrays_names:
        res += f"{INDENT}def __del__(self):"
        res = generate_newline(res)
        if class_["name"] == "RefCounted":
            res += f"{INDENT * 2}if self.casted_from is None:"
            res = generate_newline(res)
            res += f"{INDENT * 3}self._ptr.call_with_return({method_ids['normal_methods'][class_['name']]['py_destroy']}, ())"
            res = generate_newline(res)
            res += f"{INDENT * 3}self._ptr = None"
            res = generate_newline(res)
            return res
        else:
            res += f"{INDENT*2}pass"
            res = generate_newline(res)
    elif class_["name"] not in typed_arrays_names:
        res += f"{INDENT}def __del__(self):"
        res = generate_newline(res)
        res += f"{INDENT * 2}if hasattr( self, 'shouldBeDeleted') and self.shouldBeDeleted:" #TODO nzimmer: Improve this
        res = generate_newline(res)
        res += f"{INDENT * 3}self._ptr.call_with_return({method_ids['normal_methods'][class_['name']]['py_destroy']}, ())"
        res = generate_newline(res)
    return res


def generate_iter_array(class_):
    res = ""
    res += f"{INDENT}def __iter__(self):"
    res = generate_newline(res)
    res += f"{INDENT * 2}self._index = 0"
    res = generate_newline(res)
    res += f"{INDENT * 2}return self"
    return res


def generate_next_array(class_):
    res = ""
    res += f"{INDENT}def __next__(self):"
    res = generate_newline(res)
    res += f"{INDENT * 2}if self._index >= self.size():"
    res = generate_newline(res)
    res += f"{INDENT * 3}raise StopIteration()"
    res = generate_newline(res)
    res += f"{INDENT * 2}val = self[self._index]"
    res = generate_newline(res)
    res += f"{INDENT * 2}self._index += 1"
    res = generate_newline(res)
    res += f"{INDENT * 2}return val"
    res = generate_newline(res)

    return res


def generate_special_methods_array(class_):
    res = ""
    res += generate_array_set_item(class_)
    res = generate_newline(res)
    res += generate_array_get_item(class_)
    res = generate_newline(res)
    res += generate_iter_array(class_)
    res = generate_newline(res)
    res += generate_next_array(class_)
    res = generate_newline(res)
    return res


def generate_cast(class_):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def cast(other:'Object'):"
    res = generate_newline(res)
    res += f"{INDENT * 2}assert other != None # Object to be casted must not be None"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls = {class_['name']}.construct_without_init()"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls._ptr = CPP{class_['name']}Wrapper()"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls._ptr_before = other._ptr # Save pointer"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls._ptr.copy_gdowner(cls._ptr_before)"
    res = generate_newline(res)
    if is_refcounted(class_):
        res += f"{INDENT * 2}cls.casted_from = other"
        res = generate_newline(res)
    res += f"{INDENT * 2}return cls"
    res = generate_newline(res)


    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def cast_without_reference(other: 'Object'):"
    res = generate_newline(res)
    res += f"{INDENT * 2}assert other != None # Object to be casted must not be None"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls = {class_['name']}.construct_without_init()"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls._ptr = CPP{class_['name']}Wrapper()"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls._ptr_before = other._ptr # Save pointer"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls._ptr.copy_gdowner(cls._ptr_before)"
    res = generate_newline(res)
    res += f"{INDENT * 2}return cls"
    return res

def generate_type_assertion(arg_name,type_):
    res = ""
    type_ = untypearray_or_dictionary(unenumize_type(undouble_type(type_)))
    if type_ in ("int", "float"):
        res += f"assert isinstance({arg_name}, (int, float)), '{arg_name} must be int or float'"
    elif type_ == "String":

        res += f"assert isinstance({arg_name}, (str, String)), '{arg_name} must be str or String'"
    elif type_ == "StringName":
        res += f"assert isinstance({arg_name}, (str, StringName)), '{arg_name} must be str or StringName'"
    elif type_ == "NodePath":
        res += f"assert isinstance({arg_name}, (str, NodePath)), '{arg_name} must be str or NodePath'"
    elif type_ in ("bool",):
        res += f"assert isinstance({arg_name}, bool), '{arg_name} must be bool'"
    elif type_ in builtin_classes - {"int", "float", "bool"}:
        res += f"assert isinstance({arg_name}, {type_}), '{arg_name} must be {type_}'"
    elif type_ == "Variant":
        pass
    else:
        res += f"assert isinstance({arg_name}, get_class('{type_}')), '{arg_name} must be {type_}'"
    return res


def generate_str_method(class_):
    res = ""
    res += f"{INDENT}def __str__(self):"
    res = generate_newline(res)
    if class_["name"] == "String":
        res += f"{INDENT*2}return utils.gd_string_to_py_string(self)"
    if class_["name"] == "StringName":
        res += f"{INDENT*2}return utils.gd_string_name_to_py_string(self)"
    res = generate_newline(res)
    return res


def generate_special_methods(class_):
    res = ""
    if class_["name"] == "Dictionary":
        res += generate_special_methods_dictionary()

    if "array" in class_["name"].lower():
        res += generate_special_methods_array(class_)

    if class_["name"] in ("Vector3", "Vector2"):
        res += generate_vector_methods()

    if class_["name"] in classes - builtin_classes:
        res += generate_cast(class_)
    if class_["name"] in {"String", "StringName"}:
        res += generate_str_method(class_)

    if class_["name"] in ("PackedInt32Array", "PackedInt64Array", "PackedFloat32Array", "PackedFloat64Array", "PackedByteArray"):
        res += generate_from_list_array(class_)
        res = generate_newline(res)
        res += generate_special_methods_packed_array(class_)

    elif "array" in class_["name"].lower():
        res += generate_from_list_array(class_)
        res = generate_newline(res)
        res += generate_to_list_other_arrays(class_)

    return res

def generate_vector_methods():
    res = ""
    res += f"{INDENT*1}def __neg__(self):"
    res = generate_newline(res)
    res += f"{INDENT*2}return self * -1"
    res = generate_newline(res)
    return res


def generate_special_methods_packed_array(class_):
    res = ""
    packed_array_type = {"PackedInt32Array":"int32_t", "PackedInt64Array":"int64_t", "PackedFloat32Array":"float",
                         "PackedFloat64Array":"double",
                         "PackedByteArray":"byte"}[class_['name']]
    type_ = packed_array_type
    res = generate_newline(res)
    res += f"{INDENT * 1}def to_list(self):"
    res = generate_newline(res)
    res += f"{INDENT*2}return list(self.get_memory_view())"
    res = generate_newline(res)

    res += f"{INDENT * 1}def get_memory_view(self):"
    res = generate_newline(res)
    res += f"{INDENT * 2}return self._ptr.call_with_return({method_ids['normal_methods'][class_['name']]['get_memoryview']},())"
    res = generate_newline(res)

    res += f"{INDENT * 1}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT * 1}def from_memory_view(memory_view):"
    res = generate_newline(res)
    res += f"{INDENT*2}array = {class_['name']}.construct_without_init()"
    res = generate_newline(res)
    res += f"{INDENT*2}array._ptr = (static_method({classes_dict[class_['name']]},{method_ids['static_methods'][class_['name']]['from_memoryview']}, (memory_view,)))"
    res = generate_newline(res)
    res += f"{INDENT*2}return array"
    res = generate_newline(res)

    return res

def generate_to_list_other_arrays(class_):
    res = ""
    res += f"{INDENT * 1}def to_list(self):"
    res = generate_newline(res)
    res += f"{INDENT*2}return [value for value in self]"
    res = generate_newline(res)
    return res

def generate_from_list_array(class_):
    res = ""
    res = generate_newline(res)
    res += f"{INDENT * 1}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT * 1}def from_list(values):"
    res = generate_newline(res)
    res += f"{INDENT * 2}result = {class_['name']}.new0()"
    res = generate_newline(res)
    res += f"{INDENT*2}for value in values:"
    res = generate_newline(res)
    res += f"{INDENT * 3}result.push_back(value)"
    res = generate_newline(res)
    res += f"{INDENT*2}return result"
    res = generate_newline(res)
    return res

def generate_operators_set(class_):
    for operator in class_["operators"]:
        print(operator)
        if not class_["name"] in operator_dict.keys():
            operator_dict[class_["name"]] = dict()
        if not operator["name"] in operator_dict[class_["name"]]:
            operator_dict[class_["name"]][operator["name"]] = Operator(class_["name"], operator["name"],
                                                                       operator["return_type"])
        if "right_type" in operator.keys():
            operator_dict[class_["name"]][operator["name"]].right_type_values.append(operator["right_type"])


classes = set()


def collect_typed_arrays_from_return(method_):
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if "typedarray" in ret_val.type:
            return [ret_val.type]
    return []


def collect_typed_arrays_from_args(method):
    typed_arrays = []
    if "arguments" not in method.keys():
        return []
    else:
        for argument in method["arguments"]:
            if ("typedarray" in argument["type"]):
                typed_arrays.append(argument["type"])
    return typed_arrays


def collect_typed_arrays(classes):
    typed_arrays = []
    for cls in classes:
        if not "methods" in cls.keys():
            continue
        for method in cls["methods"]:
            typed_arrays += collect_typed_arrays_from_return(method)
            typed_arrays += collect_typed_arrays_from_args(method)

    return set(typed_arrays)


def generate_typed_array_name(name):
    return (name.split("::")[1] + "TypedArray").replace("24/17:", "").replace("27/0:TypedArray", "DictionaryTypedArray")

def generate_variant_checks(method, classname):
    res = ""
    args = method["arguments"]
    py4godot_type = "Object" if classname == "Object" else "classes.Object.Object"
    for arg in args:
        if arg["type"] == "Variant":
            res += f"{INDENT*2}if not (type({pythonize_name(arg['name'])}).__name__ in py4godot.variant_types.core_types or isinstance({pythonize_name(arg['name'])}, {py4godot_type})):"
            res = generate_newline(res)
            res += f"""{INDENT * 3}raise ValueError(
                f"Unsupported type for argument '{pythonize_name(arg['name'])}': "
                f"{{type({pythonize_name(arg['name'])}).__name__}}. "
                "Supported types are: Godot types (Vector3, Vector2, Array, Object, ...) "
                "and built-in types int, float, and bool."
            )"""
            res = generate_newline(res)

    if method["is_vararg"]:
        res += f"{INDENT*2}for arg in varargs:"
        res = generate_newline(res)
        res += f"{INDENT*3}if not (type(arg).__name__ in py4godot.variant_types.core_types or isinstance(arg, {py4godot_type})):"
        res = generate_newline(res)
        res += f"""{INDENT * 4}raise ValueError(
            f"Unsupported type in varargs: {{type(arg).__name__}}. "
            "Supported types are: Godot types (Vector3, Vector2, Array, Object, ...) "
            "and built-in types int, float, and bool."
        )"""
    return res



if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r') as myfile:
        is_core = False
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        full_classes = [cls for cls in obj["classes"]]
        for enum_def in obj["global_enums"]:
            enums.append(f"{enumize_name(enum_def['name'])}")
        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        collect_members(obj)
        for class_ in obj["builtin_classes"]:
            generate_operators_set(class_)

        for class_ in obj["classes"]:
            init_class(class_["name"])
            generate_classes([class_], f"py4godot/classes/{class_['name']}.py")

        array_cls = None
        arrays = []
        for cls in obj["builtin_classes"]:
            if cls["name"] == "Array":
                array_cls = cls
        print("typedarrays:", collect_typed_arrays(obj["classes"] + obj["builtin_classes"]))
        for typed_array in collect_typed_arrays(obj["classes"] + obj["builtin_classes"]):
            my_array_cls = copy.deepcopy(array_cls)
            my_array_cls["name"] = generate_typed_array_name(typed_array)
            typed_arrays_names.add(generate_typed_array_name(typed_array))
            arrays.append(my_array_cls)

        is_core = True
        arrays = sorted(arrays, key= lambda key:key["name"])
        for array in arrays:
            generate_classes([array], f"py4godot/classes/{array['name']}.py", is_core=False, is_typed_array=True)

        generate_classes(obj["builtin_classes"], f"py4godot/classes/core.py", is_core=True)