import json
import os.path

from generate_enums import enumize_name

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
              "from py4godot.enums.enums4 cimport *\n"
              "from py4godot.utils.utils cimport *\n"
              "from py4godot.classes.py_utils cimport *\n"
              "from py4godot.classes.generated4_core cimport *\n"
              "cimport py4godot.classes.Object.Object as py4godot_object\n")

    for cls in builtin_classes:
        if cls not in {"Nil", "float", "int", "bool"}:
            result += f"cimport py4godot.classes.generated4_core as py4godot_{cls.lower()}\n"
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


def generate_constructor_call_args(constructor):
    result = ""
    if "arguments" not in constructor:
        return result

    for arg in constructor["arguments"]:
        if arg["type"] in classes - IGNORED_CLASSES:
            if arg["type"] == "String":
                result += f"py_c_string_to_string({pythonize_name(arg['name'])}.encode('utf-8')).{untypearray(arg['type'])}_internal_class, "
            else:
                result += f"{pythonize_name(arg['name'])}.{arg['type']}_internal_class, "
        elif arg["type"] == "Variant":
            result += f"{convert_to_variant(pythonize_name(arg['name']))}.variant, "
        else:
            result += f"{pythonize_name(arg['name'])}, "
    result = result[:-2]
    return result


def generate_constructors(class_):
    res = ""
    if "constructors" not in class_.keys():
        return res
    for constructor in class_["constructors"]:
        res += f"{INDENT}@staticmethod"
        res = generate_newline(res)
        res += f"{INDENT}def new{constructor['index']}({generate_constructor_args(constructor)}):"
        res = generate_newline(res)
        if "arguments" in constructor:
            res += generate_assert(constructor["arguments"])
            res = generate_newline(res)
        res += f"{INDENT * 2}cdef {class_['name']} _class = {class_['name']}.__new__({class_['name']})"
        res = generate_newline(res)
        res += f"{INDENT * 2}_class.{class_['name']}_internal_class = (CPP{class_['name']}.py_new{constructor['index']}({generate_constructor_call_args(constructor)}))"
        res = generate_newline(res)
        res += f"{INDENT * 2}_class.{class_['name']}_internal_class = (CPP{class_['name']}.py_new{constructor['index']}({generate_constructor_call_args(constructor)}))"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _class"
        res = generate_newline(res)
    return res


def generate_class_imports(classes):
    result = "from py4godot.classes.generated4_core cimport *"
    result = "import py4godot.classes.generated4_core as generated_core"
    result = generate_newline(result)

    return result


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
                result = f"{INDENT * 2}return None if _ret.{ret_val.type}_internal_class.get_godot_owner() == NULL else _ret"
            else:
                result = ""
                result += f"{INDENT * 2}return _ret"
    result = generate_newline(result)
    return result


def generate_singleton_constructor(classname):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def get_instance():"
    res = generate_newline(res)

    res += f"{INDENT * 2}cdef {classname} singleton = {classname}()"
    res = generate_newline(res)
    res += f"{INDENT * 2}singleton.{classname}_internal_class = CPP{classname}.get_instance()"
    res = generate_newline(res)
    res += f"{INDENT * 2}return singleton"
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


def get_first_args_native(method_):
    if "arguments" not in method_:
        return "NULL"
    return "&_args[0]"


def get_args_count(method):
    if "arguments" in method:
        return len(method["arguments"])
    return 0

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
                result += f"{ret_val.name}.{ret_val.type}_internal_class"
            else:
                result += f"{ret_val.name}.{ret_val.type}_internal_class"
        elif ret_val.type == "Variant":
            result += f"_ret"
        elif "typedarray" in ret_val.type:
            result += f"_ret.{untypearray(ret_val.type)}_internal_class"
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
                result += f"{INDENT * 2}{ret_val.name}.set_gdowner({ret_val.name}.{ret_val.type}_internal_class.get_godot_owner())"
            else:
                result += f"{INDENT * 2}{ret_val.name}.set_gdowner({ret_val.name}.{ret_val.type}_internal_class.get_godot_owner())"
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
        result += f"{INDENT * 2}{generate_ret_call(method)} = py_{method['name']}({generate_method_args(method)})"
        result = generate_newline(result)
        result += generate_set_gd_owner_for_ret(method)
        result = generate_newline(result)
        result += generate_return_statement(method)
    else:
            result += f"{INDENT * 2}py_{pythonize_name(method['name'])}({generate_method_args(method)})"
    return result


def generate_method_args(method):
    res = ""
    if "arguments" not in method.keys():
        if method["is_vararg"]:
            return "args_vector"
        return res
    for arg in method["arguments"]:
        if untypearray(arg["type"]) in classes - IGNORED_CLASSES - builtin_classes:
            res += f"&{pythonize_name(arg['name'])}.{untypearray(arg['type'])}_internal_class if {pythonize_name(arg['name'])} != None else NULL, "
        elif untypearray(arg["type"]) in builtin_classes - IGNORED_CLASSES:
            if arg["type"] == "String":
                res += f"py_c_string_to_string({pythonize_name(arg['name'])}.encode('utf-8')).{untypearray(arg['type'])}_internal_class, "
            else:
                res += f"{pythonize_name(arg['name'])}.{untypearray(arg['type'])}_internal_class, "
        elif arg["type"] == "Variant":
            res += f"variant_{(pythonize_name(arg['name']))}, "
        else:
            res += f"{pythonize_name(arg['name'])}, "
    if method["is_vararg"]:
        res += "args_vector, "
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

def generate_get_py_script_method():
    result = ""
    result += f"{INDENT}def get_pyscript(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}cdef int id = self.get_instance_id()"
    result = generate_newline(result)
    result += f"{INDENT * 2}cdef object script = <object>get_py_script(id)"
    result = generate_newline(result)
    result += f"{INDENT * 2}return script"
    result = generate_newline(result)

    result = generate_newline(result)
    result += f"{INDENT}@property"
    result = generate_newline(result)
    result += f"{INDENT}def _import_path(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}cdef String _ret = String.__new__(String)"
    result = generate_newline(result)
    result += f"{INDENT * 2}_ret.String_internal_class = self.Object_internal_class.get_import_path()"
    result = generate_newline(result)
    result += f"{INDENT * 2}_ret.set_gdowner(_ret.String_internal_class.get_godot_owner())"
    result = generate_newline(result)
    result += f"{INDENT * 2}return gd_string_to_py_string(_ret)"
    result = generate_newline(result)
    return result


def find_class(name):
    for cls in obj["classes"]:
        if cls["name"] == name:
            return cls


def generate_new_static(class_):
    res = ""
    res += f"{INDENT * 1}cdef void set_gdowner(self, void* owner):"
    res = generate_newline(res)
    res += f"{INDENT * 2}self.{class_['name']}_internal_class.set_gdowner_{class_['name']}(owner)"
    res = generate_newline(res)
    if "inherits" in class_.keys():
        cls = find_class(class_["inherits"])
        while cls:
            res += f"{INDENT * 2}self.{cls['name']}_internal_class.set_gdowner_{cls['name']}(owner)"
            res = generate_newline(res)
            if "inherits" not in cls.keys():
                break
            cls = find_class(cls["inherits"])

    return res


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


def generate_member_getter(class_, member):
    res = ""
    res += f"{INDENT}@property"
    res = generate_newline(res)
    res += f"{INDENT}def {member.name}(self):"
    res = generate_newline(res)
    if member.type_ != "int" and member.type_ != "float" and member.type_ != "double":
        res += f"{INDENT * 2}cdef {member.type_} _ret = {member.type_}()"
        res = generate_newline(res)
        res += f"{INDENT * 2}_ret.{member.type_}_internal_class = self.{class_}_internal_class.py_member_get_{member.name}()"
        res = generate_newline(res)
        res += f"{INDENT * 2}_ret.set_gdowner(_ret.{member.type_}_internal_class.get_godot_owner())"
        res = generate_newline(res)
    else:
        res += f"{INDENT * 2}cdef {member.type_} _ret = self.{class_}_internal_class.py_member_get_{member.name}()"
    res = generate_newline(res)
    res += f"{INDENT * 2}return _ret"
    res = generate_newline(res)
    return res


def generate_member_setter(class_, member):
    res = ""
    res += f"{INDENT}@{member.name}.setter"
    res = generate_newline(res)
    res += f"{INDENT}def {member.name}(self, {member.type_} value):"
    res = generate_newline(res)
    if member.type_ != "int" and member.type_ != "float" and member.type_ != "double":
        res += f"{INDENT * 2}self.{class_}_internal_class.py_member_set_{member.name}(value.{member.type_}_internal_class)"
    else:
        res += f"{INDENT * 2}self.{class_}_internal_class.py_member_set_{member.name}(value)"
    res = generate_newline(res)
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
            "str"):
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


def get_class_from_enum(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    return type_list[0]


def get_classes_to_import(classes):
    classes_to_import = []
    for class_ in classes:
        if ("inherits" in class_.keys()):
            classes_to_import.append(class_["inherits"])
        if "methods" in class_.keys():
            for method in class_["methods"]:
                if ("return_value" in method.keys()):
                    if (unbitfield_type(get_class_from_enum(method["return_value"]["type"])) in normal_classes):
                        classes_to_import.append(get_class_from_enum(method["return_value"]["type"]))
                if ("arguments" not in method.keys()):
                    continue
                for argument in method["arguments"]:
                    if argument["type"] in normal_classes:
                        classes_to_import.append(argument["type"])
                    if "enum" in argument["type"]:
                        type = argument["type"].lstrip("enum::")
                        if type.split(".")[0] in normal_classes:
                            classes_to_import.append(type.split(".")[0])

        if "properties" in class_.keys():
            for prop in class_["properties"]:

                if simplify_type(prop["type"]) in normal_classes:
                    classes_to_import.append(simplify_type(prop["type"]))

    return classes_to_import

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


def address_param(name, target):
    if target in builtin_classes - {"int", "float", "bool", "Nil"}:
        if name != "self":
            return f"complex_val_{target}.{target}_internal_class"
        else:
            return f"self_val.{target}_internal_class"
    elif target == "Object":
        if name != "self":
            return f"complex_val_{target}.{target}_internal_class"
        else:
            return f"self_val.{target}_internal_class"
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
                res += f"{INDENT * 2}cdef {unvariant(op.return_type)} _ret = {init_return_type(op.return_type)}"
                res = generate_newline(res)

                res = generate_newline(res)
                res += f"{INDENT * 2}cdef bint handled = False"
                res = generate_newline(res)
                res += f"{INDENT * 2}cdef {class_name} self_val = self"
                res = generate_newline(res)

                for target in op.right_type_values:

                    if target in {"float", "int", "bool", "Nil"}:
                        res += f"{INDENT * 2}cdef {ungodottype(target)} primitive_val_{target} = <{ungodottype(target)}>other"
                        res = generate_newline(res)
                    elif target in builtin_classes.union(classes):
                        res += f"{INDENT * 2}cdef {target} complex_val_{target}"
                        res = generate_newline(res)
                    elif target == "Variant":
                        res += f"{INDENT * 2}cdef PyVariant complex_val_variant"
                        res = generate_newline(res)
                    res += f"{INDENT * 2}if isinstance(other, {unvariant(get_instance_type(target))}):"
                    res = generate_newline(res)

                    if target in builtin_classes.union(classes):
                        res += f"{INDENT * 3}complex_val_{target} = <{target}>other"
                        res = generate_newline(res)
                    elif target == "Variant":
                        res += f"{INDENT * 3}complex_val_variant = create_variant_from_py_object(other)"
                        res = generate_newline(res)

                    res += f"{INDENT * 3}handled = True"
                    res = generate_newline(res)
                    if op.return_type in builtin_classes - {"float", "int", "bool"}:
                        res += f"{INDENT * 3}_ret.{op.return_type}_internal_class = {address_param('self', class_name)}.py_operator_{operator_to_python_name(operator)}({address_param('other', target)})"
                    elif op.return_type in {"Variant", "PyVariant",
                                            "object"}:  # I don't know the correct type, use only one
                        res += f"{INDENT * 3}_ret = {address_param('self', class_name)}.py_operator_{operator_to_python_name(operator)}({address_param('other', target)}).get_converted_value()"
                    else:
                        res += f"{INDENT * 3}_ret = {address_param('self', class_name)}.py_operator_{operator_to_python_name(operator)}({address_param('other', target)})"
                    res = generate_newline(res)

                res += f"{INDENT * 2}if not handled:"
                res = generate_newline(res)

                res += f"{INDENT * 3}raise Exception(f'type \"'+type(other)+'\" not supported')"
                res = generate_newline(res)
                res += f"{INDENT * 2}return _ret"
                res = generate_newline(res)
    res = generate_newline(res)
    return res


def should_skip_import(classname, class_to_import):
    return classname == "Node" and class_to_import in {"SceneTree", "Viewport", "Window"}

def generate_dictionary_set_item():
    res = ""
    res += f"{INDENT}def __setitem__(self, key, value):"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef Variant var = self.Dictionary_internal_class[create_variant_from_py_object(key).variant]"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef str typename = str(type(value).__name__)"
    res = generate_newline(res)
    res += f"{INDENT * 2}var.init_from_py_object(<PyObject*>value, typename.encode('utf-8'))"
    return res


def generate_dictionary_get_item():
    res = ""
    res += f"{INDENT}def __getitem__(self,  key):"
    res = generate_newline(res)
    res += f"{INDENT * 2}if not self.has(key):"
    res = generate_newline(res)
    res += f"{INDENT * 3}raise KeyError(f\"Key '%s' not found\")".replace("%s", "{key}")
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef PyObject * pyobject = self.Dictionary_internal_class[create_variant_from_py_object(key).variant].get_converted_value(True)"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef object o = None"
    res = generate_newline(res)
    res += f"{INDENT * 2}if not is_none(pyobject):"
    res = generate_newline(res)
    res += f"{INDENT * 3}o = <object>pyobject"
    res = generate_newline(res)
    res += f"{INDENT * 2}return o"
    return res


def generate_get_item_from_array(classname):
    res = ""
    res += f"{INDENT}def __getitem__(self,  index):"
    res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}if index < 0:"
    res = generate_newline(res)
    res += f"{INDENT * 3}raise KeyError(f\"Index '%s' invalid\")".replace("%s", "{index}")
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef PyObject * pyobject = self.{classname}_internal_class[index].get_converted_value(True)"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef object o = None"
    res = generate_newline(res)
    res += f"{INDENT * 2}if not is_none(pyobject):"
    res = generate_newline(res)
    res += f"{INDENT * 3}o = <object>pyobject"
    res = generate_newline(res)
    res += f"{INDENT * 2}return o"
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
        res += f"{INDENT * 2}cdef {classtype} pyobject = {classtype}()"
        res = generate_newline(res)
        res += f"{INDENT * 2}pyobject.{classtype}_internal_class = self.{classname}_internal_class[<int>index]"
        res = generate_newline(res)
        res += f"{INDENT * 2}return pyobject"
    else:
        res += f"{INDENT * 2}return self.{classname}_internal_class[<int>index]"
    return res


def generate_special_methods_dictionary():
    res = ""
    res += generate_dictionary_set_item()
    res = generate_newline(res)
    res += generate_dictionary_get_item()
    return res


def generate_array_set_item(class_):
    res = ""
    if class_["name"] == "PackedInt32Array":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = <int>value"
    elif class_["name"] == "PackedInt64Array":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = <int>value"
    elif class_["name"] == "PackedFloat32Array":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = value"
    elif class_["name"] == "PackedFloat64Array":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = value"
    elif class_["name"] == "PackedBoolArray":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = value"
    #    elif class_["name"] == "PackedByteArray":
    #        res += f"{INDENT * 2}gdnative_interface.packed_byte_array_operator_index(self.godot_owner, index)[0] = value"

    elif class_["name"] == "PackedColorArray":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = (<Color>value).Color_internal_class"
    elif class_["name"] == "PackedVector3Array":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = (<Vector3>value).Vector3_internal_class"
    elif class_["name"] == "PackedVector2Array":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = (<Vector2>value).Vector2_internal_class"
    elif class_["name"] == "PackedStringArray":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}(&self.{class_['name']}_internal_class[index])[0] = (<String>value).String_internal_class"

    elif class_["name"] == "Array":
        res += f"{INDENT}def __setitem__(self,  index, value):"
        res = generate_newline(res)

        res += f"{INDENT * 2}self.{class_['name']}_internal_class[index].init_from_py_object(<PyObject*>value, type(value).__name__.encode('utf-8'))"

    res = generate_newline(res)
    return res


def generate_array_get_item(class_):
    res = ""

    if class_["name"] == "PackedInt32Array":
        res += generate_get_item_from_type_array(class_["name"], "int")
    elif class_["name"] == "PackedInt64Array":
        res += generate_get_item_from_type_array(class_["name"], "int")
    elif class_["name"] == "PackedFloat32Array":
        res += generate_get_item_from_type_array(class_["name"], "float")
    elif class_["name"] == "PackedFloat64Array":
        res += generate_get_item_from_type_array(class_["name"], "float")
    elif class_["name"] == "PackedBoolArray":
        res += generate_get_item_from_type_array(class_["name"], "bool")
    elif class_["name"] == "PackedByteArray":
        res += f"{INDENT * 2}raise Exception('not implemented')"

    elif class_["name"] == "PackedColorArray":
        res += generate_get_item_from_type_array(class_["name"], "Color")
    elif class_["name"] == "PackedVector3Array":
        res += generate_get_item_from_type_array(class_["name"], "Vector3")
    elif class_["name"] == "PackedVector2Array":
        res += generate_get_item_from_type_array(class_["name"], "Vector2")
    elif class_["name"] == "PackedStringArray":
        res += generate_get_item_from_type_array(class_["name"], "String")

    elif class_["name"] == "Array":
        res += generate_get_item_from_array(class_["name"])

    res = generate_newline(res)
    return res


def generate_init(class_):
    res = ""
    res += f"{INDENT}def __init__(self, *args):"
    res = generate_newline(res)
    res += f"{INDENT * 2}self = {class_['name']}.new0()"
    res = generate_newline(res)
    res += f"{INDENT * 2}for arg in args:"
    res = generate_newline(res)
    res += f"{INDENT * 3}self.push_back(arg)"
    return res


def generate_del(class_):
    if class_["name"] not in builtin_classes:
        return ""
    res = ""
    res += f"{INDENT}def __del__(self):"
    res = generate_newline(res)
    res += f"{INDENT * 2}self.{class_['name']}_internal_class._py_destroy()"
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
    res += f"{INDENT}def cast(Object other):"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef {class_['name']} cls = {class_['name']}()"
    res = generate_newline(res)
    res += f"{INDENT * 2}cls.{class_['name']}_internal_class = CPP{class_['name']}.cast(&other.Object_internal_class)"
    res = generate_newline(res)
    res += (f"{INDENT * 2}cls"
            f".set_gdowner(other.Object_internal_class.get_godot_owner())")
    res = generate_newline(res)
    res += f"{INDENT * 2}return cls"
    return res


def generate_special_methods(class_):
    res = ""
    if class_["name"] == "Dictionary":
        res += generate_special_methods_dictionary()

    if "array" in class_["name"].lower():
        res += generate_special_methods_array(class_)

    if class_["name"] in classes - builtin_classes:
        res += generate_cast(class_)

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

if __name__ == "__main__":
    with open('py4godot/gdextension-api/extension_api.json', 'r') as myfile:
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

        with open("py4godot/classes/common_functions.pyx", "w") as f:
            f.write(res)