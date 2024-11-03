import json
import os.path

from generate_enums import enumize_name
from generation_tools import write_if_different

INDENT = "  "


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
operator_to_method = {"+": "__add__",
                      "*": "__mul__",
                      "-": "__sub__",
                      "/": "__div__",
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
    result = ("from py4godot.core.variant4.Variant4 cimport *\n"
              "from libcpp cimport bool\n"
              "from libcpp.vector cimport vector\n"
              "from py4godot.enums.enums cimport *\n"
              "from py4godot.utils.utils cimport *\n"
              "from py4godot.classes.core cimport *\n"
              "cimport py4godot.classes.Object as py4godot_object\n")

    for cls in sorted(list(builtin_classes)):
        if cls not in {"Nil", "float", "int", "bool"}:
            result += f"cimport py4godot.classes.core as py4godot_{cls.lower()}\n"
    return result


def generate_constructor_args(constructor):
    result = ""
    if "arguments" not in constructor:
        return result

    for arg in constructor["arguments"]:
        if not arg["type"].startswith("enum::"):
            result += f"{unstring(unvariant(untypearray(unbitfield_type(arg['type']))))} {pythonize_name(arg['name'])}, "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{unstring(unvariant(untypearray(unenumize_type(arg_type))))} {pythonize_name(arg['name'])}, "
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


def generate_newline(str_):
    return str_ + "\n"


def generate_return_value(method_):
    result = ""
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if ret_val.type in {"int", "float", "bool"}:
            result += f"{INDENT * 2}cdef {ungodottype(ret_val.type)} {ret_val.name} = 0"
        elif ret_val.type in classes:
                result += f"{INDENT * 2}cdef py4godot_{ret_val.type.lower()}.{ret_val.type} {ret_val.name} = py4godot_{ret_val.type.lower()}.{ret_val.type}.__new__(py4godot_{ret_val.type.lower()}.{ret_val.type})"
        elif ret_val.type == "Variant":
            result += f"{INDENT * 2}cdef PyObject* {ret_val.name} = NULL"
        elif "typedarray" in ret_val.type:
            result += f"{INDENT * 2}cdef Array _ret = Array.new0()"
        elif "enum::" in ret_val.type:
            result += f"{INDENT * 2}cdef int {ret_val.name}"
        else:
            result += f"{INDENT * 2}cdef {unbitfield_type(unenumize_type(ret_val.type))} {ret_val.name}"
    else:
        result += f"{INDENT * 2}cdef object ret = None"
    result = generate_newline(result)
    return result


def get_base_class(class_):
    if "inherits" in class_.keys():
        return import_type(class_["inherits"], class_["name"])
    if class_["name"] in builtin_classes:
        return ""
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
    # if "return_value" in mMethod.keys():
    #    if mMethod["return_value"]["type"] in forbidden_types:
    #        return True
    #    if strip_symbols_from_type(mMethod["return_value"]["type"]) in native_structs:
    #        return True
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
            result = f"{INDENT * 2}return gd_string_to_py_string(_ret)"
        elif ret_val.type == "Variant":
            result = f"{INDENT * 2}if is_none(_ret):"
            result = generate_newline(result)
            result += f"{INDENT * 3}return None"
            result = generate_newline(result)
            result += f"{INDENT * 2}return <object>_ret"
        else:
            if ret_val.type in classes - builtin_classes:
                result = f"{INDENT * 2}return None if _ret.{ret_val.type}_internal_class_ptr.get().get_godot_owner() == NULL else _ret"
            else:
                result = ""
                result += f"{INDENT * 2}return _ret"
    result = generate_newline(result)
    return result


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


def generate_native_params(mMethod):
    if "arguments" not in mMethod.keys():
        return ""
    res = ""
    for arg in mMethod["arguments"]:
        if arg["type"] == "String":
            res += f"{INDENT * 2}cdef String string_{arg['name']} = c_string_to_string({pythonize_name(arg['name'])}.encode('utf-8'))"
            res = generate_newline(res)
        if arg["type"] == "StringName":
            res += f"{INDENT * 2}cdef StringName string_name_{arg['name']} = c_string_to_string_name({pythonize_name(arg['name'])}.encode('utf-8'))"
            res = generate_newline(res)
        if arg["type"] == "Variant":
            res += f"{INDENT * 2}cdef Variant variant_{arg['name']} = Variant({pythonize_name(arg['name'])})"
            res = generate_newline(res)
    return res


def generate_default_args(mMethod):
    res = ""
    if "arguments" not in mMethod:
        return ""

    for arg in mMethod["arguments"]:
        if "default_value" not in arg["type"]:
            return ""
        if arg["type"] in {"float", "int", "Nil", "bool"}:
            continue
        if not arg["type"].startswith("enum::") and not arg["type"].startswith("typedarray::") and not arg[
            "type"].startswith("bitfield::"):
            type_ = unvariant(untypearray(unbitfield_type(arg['type'])))
            if arg["type"] in builtin_classes:
                res += f"{INDENT * 2}{pythonize_name(arg['name'])} = {arg['type']}.new0()"
            else:
                res += f"{INDENT * 2}{pythonize_name(arg['name'])} = {arg['type']}.constructor()"
        res = generate_newline(res)
    return res


def should_skip_method(class_, method):
    return class_["name"] == "Node" and method["name"] in {"get_tree", "get_viewport", "get_window",
                                                           "get_last_exclusive_window"}


def generate_assert(args):
    res = ""

    for arg in args:
        if (arg["type"] in classes.union(builtin_classes - {"int", "float", "bool", "Nil"})):
            if "default_value" in arg:
                continue
            res += f"{INDENT * 2}assert(not {pythonize_name(arg['name'])} is None)"
            res = generate_newline(res)
    return res


def generate_method(mMethod):
    res = ""
    args = generate_args(mMethod)
    def_function = f"def {pythonize_name(mMethod['name'])}({args}):"
    res += def_function
    res = generate_newline(res)
    res += generate_default_args(mMethod)
    res = generate_newline(res)
    if "arguments" in mMethod.keys():
        res += generate_assert(mMethod["arguments"])
        res = generate_newline(res)
    if ("hash" in mMethod.keys()):
        res += generate_method_body_standard(mMethod)
    res = generate_newline(res)
    return res

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
                result += f"_ret"
            elif ret_val.type in builtin_classes:
                result += f"{ret_val.name}.{ret_val.type}_internal_class_ptr"
            else:
                result += f"{ret_val.name}.{ret_val.type}_internal_class_ptr"
        elif ret_val.type == "Variant":
            result += f"_ret"
        elif "typedarray" in ret_val.type:
            result += f"_ret.{untypearray(ret_val.type)}_internal_class_ptr"
        else:
            result += f"_ret"
    else:
        result += f"_ret"
    return result

def generate_set_gd_owner_for_ret(method):
    result = ""
    if "return_value" in method.keys() or "return_type" in method.keys():
        if ("return_value" in method.keys()):
            ret_val = ReturnType("_ret", method['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method['return_type'])
        if ret_val.type in classes:
            if ret_val.type in builtin_classes:
                result += f"{INDENT * 2}{ret_val.name}.set_gdowner({ret_val.name}.{ret_val.type}_internal_class_ptr.get().get_godot_owner())"
            else:
                result += f"{INDENT * 2}{ret_val.name}.set_gdowner({ret_val.name}.{ret_val.type}_internal_class_ptr.get().get_godot_owner())"
        result = generate_newline(result)
    return result

def generate_varargs_vector(method):
    result = ""
    if method["is_vararg"]:
        result += f"{INDENT * 2}cdef vector[PyObject*] args_vector"
        result = generate_newline(result)
        result += f"{INDENT * 2}cdef list args_list_pyvariants = []"
        result = generate_newline(result)
        result += f"{INDENT * 2}cdef PyVariant args_variant"
        result = generate_newline(result)
        result += f"{INDENT * 2}for arg in varargs:"
        result = generate_newline(result)
        result += f"{INDENT * 3}args_variant = {convert_to_variant('arg')}"
        result = generate_newline(result)
        result += f"{INDENT * 3}args_list_pyvariants.append(args_variant)"
        result = generate_newline(result)
        result += f"{INDENT * 3}args_vector.push_back(<PyObject*>arg)"
        result = generate_newline(result)
    return result

def generate_variants(method):
    result = ""
    if "arguments" not in method.keys():
        return result
    for arg in method["arguments"]:
        if arg["type"] == "Variant":
            result += f"{INDENT * 2}cdef PyVariant py_variant_{pythonize_name(arg['name'])} = create_variant_from_py_object({pythonize_name(arg['name'])})"
            result = generate_newline(result)
            result += f"{INDENT * 2}cdef Variant variant_{pythonize_name(arg['name'])} = py_variant_{pythonize_name(arg['name'])}.variant"
            result = generate_newline(result)
    return result


def generate_method_body_standard(method):
    number_arguments = 0
    result = ""
    if 'arguments' in method.keys():
        number_arguments = len(method['arguments'])

    result = generate_newline(result)
    result += generate_varargs_vector(method)
    result = generate_newline(result)
    result += generate_variants(method)
    result = generate_newline(result)
    if "return_value" in method.keys() or "return_type" in method.keys():
        result += generate_return_value(method)
        result += f"{INDENT * 2}{generate_ret_call(method)} = py_{pythonize_name(method['name'])}({generate_method_args(method)})"
        result = generate_newline(result)
        result += generate_set_gd_owner_for_ret(method)
        result = generate_newline(result)
        result += generate_return_statement(method)
    else:
            result += f"{INDENT * 2}py_{pythonize_name(method['name'])}({generate_method_args(method)})"
    return result

def cast_from_obj_to_type(typename):
    if typename in classes - builtin_classes and typename != "Object":
        return f"my_static_pointer_cast[CPPObject,CPP{typename}]"
    return ""

def cast_from_type_to_obj(typename):
    if typename in classes - builtin_classes and typename!="Object":
        return f"my_static_pointer_cast [CPP{typename}, CPPObject ]"
    return ""
def generate_method_args(method):
    res = ""
    if "arguments" not in method.keys():
        if method["is_vararg"]:
            return "args_vector"
        return res
    for arg in method["arguments"]:
        if untypearray(arg["type"]) in classes - IGNORED_CLASSES - builtin_classes:
            res += f"&{pythonize_name(arg['name'])}.{untypearray(arg['type'])}_internal_class_ptr if {pythonize_name(arg['name'])} != None else NULL, "
        elif untypearray(arg["type"]) in builtin_classes - IGNORED_CLASSES:
            if arg["type"] == "String":
                res += f"py_c_string_to_string({pythonize_name(arg['name'])}.encode('utf-8')).{untypearray(arg['type'])}_internal_class_ptr, "
            else:
                res += f"{pythonize_name(arg['name'])}.{untypearray(arg['type'])}_internal_class_ptr, "
        elif arg["type"] == "Variant":
            res += f"variant_{(pythonize_name(arg['name']))}, "
        else:
            res += f"{pythonize_name(arg['name'])}, "
    if method["is_vararg"]:
        res += "args_vector, "
    if len(res) > 2:
        return res[:-2]
    return res

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

def find_class(name):
    for cls in obj["classes"]:
        if cls["name"] == name:
            return cls



def generate_enums(class_):
    if not "enums" in class_.keys():
        return ""
    res = ""
    for enum in class_["enums"]:
        res += f"cpdef enum {class_['name']}__{enum['name']}:"
        res = generate_newline(res)
        for enum_value in enum["values"]:
            res += f"{INDENT}{class_['name']}__{enum_value['name']} = {enum_value['value']}"
            res = generate_newline(res)
    res = generate_newline(res)
    return res


def generate_properties(class_):
    result = ""
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            result += generate_property(property, class_["name"])
    return result


def simplify_type(type):
    list_types = type.split(",")
    return list_types[-1]


def generate_property_index(property, is_setter=False):
    if not is_setter:
        if "index" in property.keys():
            return str(property["index"])
    else:
        if "index" in property.keys():
            return str(property["index"]) + ", "

    return ""


def generate_property(property, classname):
    result = ""
    result += f"{INDENT}@property"
    result = generate_newline(result)
    result += f"{INDENT}def {pythonize_name(property['name'])}(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}cdef _ret = self. {pythonize_name(property['getter'])}({generate_property_index(property)})"
    result = generate_newline(result)

    result += f"{INDENT * 2}return _ret"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        result += f"{INDENT}@{pythonize_name(property['name'])}.setter"
        result = generate_newline(result)
        result += f"{INDENT}def {pythonize_name(property['name'])}(self, {import_type(unvariant(unstring(untypearray(simplify_type(property['type'])))), classname)} value):"
        result = generate_newline(result)
        result += f"{INDENT * 2}self.{pythonize_name(property['setter'])}({generate_property_index(property, True)}value)"
        result = generate_newline(result)

    return result


def pythonize_name(name):
    if name in (
            "from", "len", "in", "for", "with", "class", "pass", "raise", "global", "new", "get_interface", "object",
            "str", "typeof"):
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


def convert_from_variant(arg_name):
    return f"{arg_name}.get_converted_value()"


def convert_to_variant(arg_name):
    return f"create_variant_from_py_object({arg_name})"


def unnull_type(value_to_return):
    if value_to_return == "null":
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


def core_import(class_):
    if class_["name"] in builtin_classes:
        return ""
    return "generated_core."


def generate_default_arg(arg, arg_type):
    set_to_iterate = builtin_classes.union(classes) - {"int", "float", "bool", "Nil"}
    if "default_value" in arg:
        if arg_type in set_to_iterate:
            if arg_type == "String":
                return "= ''"
            return "= None"
        else:
            return f"={pythonize_boolean_types(unref_type(unnull_type(arg['default_value'])))}"

    return ""


def import_type(type_):
    if type_ in builtin_classes:
        return type_
    elif type_ == "PyVariant":
        return type_
    elif type_ == "object":  # TODO merge with PyVariant
        return type_
    elif type_ == "Object":
        return type_
    elif type_ == "str":
        return type_
    return "py4godot_" + type_.lower() + "." + type_


def unstring(type_):
    return "str" if type_ == "String" else type_


def generate_args(method_with_args):
    result = "self, "
    if "arguments" not in method_with_args:
        if method_with_args["is_vararg"]:
            result += "*varargs, "
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if not arg["type"].startswith("enum::"):
            type_ = unstring(unvariant(untypearray(unbitfield_type(arg['type']))))
            result += f"{import_type(type_)} {pythonize_name(arg['name'])} {generate_default_arg(arg, type_)}, "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            type_ = unstring(unvariant(untypearray(unenumize_type(arg_type))))
            result += f"{import_type(type_)} {pythonize_name(arg['name'])} {generate_default_arg(arg, type_)}, "
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
    elif type_ in enums:
        return "int"
    return type_list[0]


def untypearray(type_):
    # TODO improve this by creating actually typed arrays
    if "typedarray" in type_:
        return "Array"
    return type_

classes = set()

if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        for enum_def in obj["global_enums"]:
            enums.append(f"{enumize_name(enum_def['name'])}")
        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        collect_members(obj)
        res = ""
        res += generate_import()
        for utility_function in obj["utility_functions"]:
            res += generate_method(utility_function)
            res = generate_newline(res)
        write_if_different("py4godot/functions.pyx", "# distutils: language=c++\n"+res)