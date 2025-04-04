import copy
import json
import os.path

from generate_classes import pythonize_boolean_types, unref_type, \
    unnull_type

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
forbidden_types = {"const void*", "void*"}
normal_classes = set()
singletons = set()
builtin_classes = set()
core_classes = dict()
operator_dict = dict()
typed_arrays_names = set()
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


def generate_import(class_name):
    result = \
        f"""#ifndef {class_name.upper()}_
#define {class_name.upper()}_
#include "py4godot/cpputils/Wrapper.h"
#include "py4godot/cpputils/VariantTypeWrapper.h"
#include "py4godot/cppcore/Variant.h"
#include "py4godot/cppenums/cppenums.h"
#include<memory>
#ifndef BOOLDEFINED
#define BOODEFINED
typedef unsigned char byte;
#endif
"""
    return result


def ref(type_):
    return "&" if type_ not in {"float", "int", "bool"} else ""


def generate_constructor_args(constructor, should_make_shared = False):
    result = ""
    if "arguments" not in constructor:
        return result

    for arg in constructor["arguments"]:
        if not arg["type"].startswith("enum::"):
            if should_make_shared:
                result += f"{make_ptr(ungodottype(untypearray(unbitfield_type(arg['type']))))}{ref(arg['type'])} {pythonize_name(arg['name'])}, "
            else:
                result += f"{ungodottype(untypearray(unbitfield_type(arg['type'])))}{ref(arg['type'])} {pythonize_name(arg['name'])}, "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{untypearray(unenumize_type(arg_type))} {pythonize_name(arg['name'])}, "
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


def generate_constructors(class_):
    res = ""
    if "constructors" not in class_.keys():
        return res

    res += f"{INDENT}{class_['name']} (){{godot_owner = nullptr; shouldBeDeleted=false;}};"
    res = generate_newline(res)
    res += f"{INDENT}{class_['name']} (const {class_['name']}& copy_val);"
    res = generate_newline(res)
    res += f"{INDENT}{class_['name']}& operator= (const {class_['name']}& copy_val);"
    res = generate_newline(res)
    for constructor in class_["constructors"]:
        res += f"{INDENT}static {class_['name']} new{constructor['index']}({generate_constructor_args(constructor)});"
        res = generate_newline(res)
        res += f"{INDENT}static std::shared_ptr<{class_['name']}> py_new{constructor['index']}({generate_constructor_args(constructor, should_make_shared=True)});"
        res = generate_newline(res)
    return res


def generate_class_imports(classes):
    result = '#include "py4godot/gdextension-api/gdextension_interface.h"'
    result = generate_newline(result)
    return result


def generate_newline(str_):
    return str_ + "\n"


def get_base_class(class_):
    if "inherits" in class_.keys():
        return class_["inherits"]
    if class_["name"] in builtin_classes:
        return "VariantTypeWrapper"
    elif "Array" in class_["name"]:
        return "VariantTypeWrapper"
    return "Wrapper"


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


def generate_properties(class_):
    result = ""
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            result += generate_property(property)
    return result


def generate_singleton_constructor(classname):
    res = ""
    res += f"{INDENT}static std::shared_ptr<{classname}> get_instance();"
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


def is_static(mMethod):
    return mMethod["is_static"]


def generate_method_modifiers(mMethod):
    res = ""
    if is_static(mMethod):
        res = f"{INDENT}static"
        return res
    return ""


def unvarianttype(type_):
    if type_ == "Variant":
        return "PyObject*"
    return type_


def generate_method(class_, mMethod):
    res = ""
    if has_native_struct(mMethod):
        return res
    if get_ret_value(mMethod) in builtin_classes - {"float", "int", "bool", "Nil"}:
        res += f"{INDENT}{generate_method_modifiers(mMethod)} {get_ret_value(mMethod)}* buffer_{class_['name']}_{mMethod['name']};"
    args = generate_args(mMethod, builtin_classes, should_make_shared=True)
    args_normal = generate_args(mMethod, builtin_classes, is_cpp=True)
    def_function = f"{INDENT}{generate_method_modifiers(mMethod)} {ungodottype(unenumize_type(untypearray(get_ret_value(mMethod))))} {pythonize_name(mMethod['name'])}({args_normal});"
    def_function2 = f"{INDENT}{INDENT}{generate_method_modifiers(mMethod)} {make_ptr(unvarianttype(ungodottype(unenumize_type(untypearray(get_ret_value(mMethod))))))} py_{pythonize_name(mMethod['name'])}({args});"
    res = generate_newline(res)
    res += def_function
    res = generate_newline(res)
    res += def_function2
    res = generate_newline(res)
    return res


def has_native_struct(method):
    if "return_value" in method.keys() or "return_type" in method.keys():
        if "return_value" in method.keys():
            if "Glyph" in method["return_value"]["type"]:
                return True
        else:
            if "Glyph*" in method["return_type"]:
                return True
    return False


def get_ret_value(method):
    if "return_value" in method.keys() or "return_type" in method.keys():
        if "return_value" in method.keys():
            return_type = method["return_value"]["type"]
        else:
            return_type = method["return_type"]
        return unbitfield_type(unenumize_type(return_type))
    return "void"


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


def generate_callback():
    return f"{INDENT}std::function<void(void)> _internal_update_callback;"


def generate_common_methods(class_):
    result = ""
    if not is_singleton(class_["name"]):
        result += generate_destructor(class_["name"])
        result = generate_newline(result)
        result += generate_constructor(class_["name"])
        result = generate_newline(result)
    result += generate_constructors(class_)
    result = generate_newline(result)
    result += generate_new_static(class_)
    result = generate_newline(result)
    result += generate_set_owner(class_)
    result = generate_newline(result)
    return result


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


def generate_member_getter(class_, member):
    res = ""
    res += f"{INDENT}"
    res = generate_newline(res)
    res += f"{INDENT}{ungodottype(member.type_)} member_get_{member.name}();"
    res = generate_newline(res)
    res += f"{INDENT}{make_ptr(ungodottype(member.type_))} py_member_get_{member.name}();"
    res = generate_newline(res)
    return res


def generate_member_setter(class_, member):
    res = ""
    res += f"{INDENT}void member_set_{member.name}({member.type_}& value);"
    res = generate_newline(res)
    res += f"{INDENT}void py_member_set_{member.name}({make_ptr(member.type_)}& value);"
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


def generate_property(property):
    result = ""
    if property["name"] == "autoplay":
        return result
    if "get_filters" in property["getter"]:
        return result

    if "get_triangles" in property["getter"]:
        return result
    if "data" in property["name"]:
        return result
    if "light_textures" == property["name"]:
        return result
    if "camera_attributes" == property["name"]:
        return result
    if "right_icon" == property["name"]:
        return result
    if "get_color" in property["getter"]:
        return result
    if "get_transform2d_array" in property["getter"]:
        return result
    if "get_transform_array" in property["getter"]:
        return result
    if "tree_root" == property["name"]:
        return result
    if "assigned_animation" == property["name"]:
        return result
    if "current_animation" == property["name"]:
        return result
    if "material" == property["name"]:
        return result
    if "packet_sequence" == property["name"]:
        return result

    result += f"{INDENT}{simplify_type(untypearray(unbitfield_type(unenumize_type((property['type'])))))} prop_get_{pythonize_name(property['name'])}()" + ";"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        result += f"{INDENT}void prop_set_{pythonize_name(property['name'])}(  {untypearray(simplify_type(property['type']))} value);"
        result = generate_newline(result)

    return result


def pythonize_name(name):
    if name in ("from", "len", "in", "for", "with", "class", "pass", "raise", "global", "char", "default",
                "get_interface", "operator", "enum", "new", "template", "bool"):
        return name + "_"
    return name


def unbitfield_type(arg_type):
    if arg_type.startswith("bitfield::"):
        return "int"
    return arg_type

def make_ptr(type_):
    if type_ in builtin_classes - {"int", "float", "bool", "Nil"}:
        return f"std::shared_ptr<{type_}>"
    if type_ in classes:
        return f"std::shared_ptr<{type_}>"
    if type_ in typed_arrays_names:
        return f"std::shared_ptr<{type_}>"
    return type_

def ungodottype(type_):
    if type_ == "float":
        return "double"
    if type_ == "int":
        return "long long"
    return type_

def generate_args(method_with_args, builtin_classes, is_cpp=False, should_make_shared=False):
    result = " "
    if (is_static(method_with_args)):
        result = ""
    if "arguments" not in method_with_args:
        if method_with_args["is_vararg"]:
            if not is_cpp:
                return "std::vector<PyObject*>& varargs"
            else:
                return "std::vector<PyObject*>& varargs"
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if arg["type"] not in builtin_classes and not arg["type"].startswith("enum::") and not arg["type"].startswith(
                "bitfield::") and not arg["type"].startswith("typedarray::") \
                and not arg["type"] == "Variant":
            if should_make_shared:
                result += f"{make_ptr(unenumize_type(untypearray(unbitfield_type(arg['type']))))} {pythonize_name(arg['name'])}, "
            else:
                result += f"{unenumize_type(untypearray(unbitfield_type(arg['type'])))}* {pythonize_name(arg['name'])}, "
        elif untypearray(arg["type"]) in builtin_classes - {"int", "float", "bool", "Nil"}:
            if should_make_shared:
                result += f"{make_ptr(unenumize_type(untypearray(unbitfield_type(arg['type']))))} {pythonize_name(arg['name'])}, "
            else:
                result += f"{unenumize_type(untypearray(unbitfield_type(arg['type'])))}& {pythonize_name(arg['name'])}, "
        elif arg["type"] == "Variant":
            if is_cpp:
                result += f"Variant& {pythonize_name(arg['name'])}, "
            else:
                result += f"PyObject* {pythonize_name(arg['name'])}, "
        elif untypearray(arg["type"]) in typed_arrays_names:
            if should_make_shared:
                result += f"{make_ptr(unenumize_type(untypearray(unbitfield_type(arg['type']))))} {pythonize_name(arg['name'])}, "
            else:
                result += f"{unenumize_type(untypearray(unbitfield_type(arg['type'])))}& {pythonize_name(arg['name'])}, "
        elif arg["type"] in {"int", "float", "bool"}:
            result += f"{ungodottype(unenumize_type(untypearray(unbitfield_type(arg['type']))))} {pythonize_name(arg['name'])}, "

        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"int {pythonize_name(arg['name'])} , "  # TODO: Look over this, enable enums again
    result = result[:-2]

    if method_with_args["is_vararg"]:
        result += ", std::vector<PyObject*>& varargs "
    return result

def unref_pointer(type_, value_name="value"):
    raise Exception("unref_pointer not implemented")

def generate_args_for_call(method_with_args, is_cpp=False):
    result = " "
    if (is_static(method_with_args)):
        result = ""
    if "arguments" not in method_with_args:
        if method_with_args["is_vararg"]:
            if not is_cpp:
                return "varargs"
            else:
                return "varargs"
        return result[:-2]

    for arg in method_with_args["arguments"]:
        result += f"{unref_pointer(pythonize_name(arg['type']), pythonize_name(arg['name']))}, "
    result = result[:-2]

    if method_with_args["is_vararg"]:
        result += ", varargs "
    return result


def unenumize_type(type_):
    if "enum::" in type_:
        return "int"  # TODO throw this out when enabling enums
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    if len(type_list) > 1:
        return "int"
        # TODO: enable againreturn type_list[0]+ "__" + type_list[1]
    return type_list[0]


def untypearray(type_):
    # TODO improve this by creating actually typed arrays
    if "typedarray" in type_:
        return generate_typed_array_name(type_)
    return type_


def get_class_from_enum(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    return type_list[0]

def generate_help_functions(classname):
    res = ""
    res += f"static std::shared_ptr<{classname}> construct_{classname}(){{"
    res = generate_newline(res)
    if not is_singleton(class_["name"]):
        res += f"{INDENT}return {classname}::constructor();"
    else:
        res += f"{INDENT} return std::shared_ptr<{classname}>();" #TODO: don't generate at all if this happens
    res = generate_newline(res)
    res += f"}}"
    res = generate_newline(res)
    res += f"static std::shared_ptr<{classname}> cast_to_{classname}(Wrapper* pwrapper){{"
    res = generate_newline(res)
    res += f"{INDENT}return {classname}::cast(pwrapper);"
    res = generate_newline(res)
    res += f"}}"
    res = generate_newline(res)
    return res


def generate_constructor(classname):
    res = ""
    res += f"{INDENT}static std::shared_ptr<{classname}> constructor();"
    res = generate_newline(res)
    return res


def generate_destructor(classname):
    res = ""
    if classname == "RefCounted":
        res += f"void {INDENT}py_destroy_ref();"
        res = generate_newline(res)
    if classname == "Node":
        res += f"void {INDENT}py_destroy_node();"
        res = generate_newline(res)

    if classname == "Object":
        res += f"void {INDENT}destroy();"
        res = generate_newline(res)
    res += f"void {INDENT}{classname}_py_destroy();"
    res = generate_newline(res)
    res += f"{INDENT}~{classname}();"
    res = generate_newline(res)
    return res


def generate_new_static(class_):
    res = ""
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}static {class_['name']} new_static(GDExtensionTypePtr owner);"
    else:
        res += f"{INDENT}static {class_['name']} new_static(GDExtensionObjectPtr owner);"

    return res


def generate_set_owner(class_):
    res = ""
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}void set_gdowner_{class_['name']}(GDExtensionTypePtr owner);"
    else:
        res += f"{INDENT}void set_gdowner_{class_['name']}(GDExtensionObjectPtr owner);"

    return res


def operator_to_python_name(operator_name):
    operator_names = {"*": "mult", "/": "divide", "+": "add", "-": "subtract", "==": "equals", "!=": "unequals",
                      "%": "modulo", "<": "lower_than", ">": "greater_than", ">=": "greater_euqals",
                      "<=": "lower_equals"}
    return operator_names[operator_name]


def generate_reference(type_):
    if type_ not in {"float", "int", "bool"}:
        return "&"
    return ""


def get_class_name(classname):
    if classname in typed_arrays_names:
        return "Array"
    else:
        return classname


def generate_operators_for_class(class_name):
    res = ""
    if get_class_name(class_name) in operator_dict.keys():
        for operator in operator_dict[get_class_name(class_name)]:
            if operator in operator_to_method.keys():
                op = operator_dict[get_class_name(class_name)][operator]
                if op.right_type_values:
                    for right_type in op.right_type_values:
                        res += f"{INDENT}{op.return_type} operator {operator} ({ungodottype(right_type)}{generate_reference(right_type)} other);"
                        res = generate_newline(res)

                        res += f"{INDENT}{make_ptr(op.return_type)} py_operator_{operator_to_python_name(operator)} ({make_ptr(ungodottype(right_type))}{generate_reference(right_type)} other);"
                        res = generate_newline(res)
    res = generate_newline(res)
    return res


def generate_classes(classes, filename, is_core=False):
    res = generate_import(filename.split("/")[-1].replace(".h", ""))
    res = generate_newline(res)
    class_names = [cls["name"] for cls in classes]

    if not is_core:
        res += f'''
#include "py4godot/cppclasses/generated4_core.h"
'''
        for class_ in classes:
            if ("inherits" in class_.keys()):
                res += f'#include "py4godot/cppclasses/{class_["inherits"]}/{class_["inherits"]}.h"'
        # for cls in get_classes_to_import(classes):
        #    if cls in class_names:
        #        continue
        #    res += f'#include "py4godot/cppclasses/{cls}/{cls}.h"'
        #    res = generate_newline(res)
        res = generate_newline(res)
    else:
        res += '#include "py4godot/cppclasses/class_defs.h"'
        res = generate_newline(res)
        res += '#include "py4godot/cppclasses/Object/Object.h"'
        res = generate_newline(res)
    res = generate_newline(res)
    res += "namespace godot{"
    # for class_ in classes:
    #    res += f"{INDENT}class {class_['name']};"
    #    res = generate_newline(res)
    for class_ in classes:
        if (class_["name"] in IGNORED_CLASSES):
            continue
        res = generate_newline(res)
        res = generate_newline(res)
        res += f"class LIBRARY_API  {class_['name']}:public {get_base_class(class_)}" + "{"
        res = generate_newline(res)
        res += f"{INDENT} public:"
        res = generate_newline(res)
        res += f"{INDENT*2}bool already_deleted = false;"
        res = generate_newline(res)
        res += generate_common_methods(class_)
        res = generate_newline(res)
        res += generate_special_methods(class_)
        res = generate_newline(res)
        res += generate_construction(class_)
        res = generate_newline(res)
        if "methods" not in class_.keys():
            res += "};"
            if not "typedarray" in class_["name"].lower():
                res = generate_newline(res)
                res += generate_help_functions(class_["name"])
            res = generate_newline(res)
            continue
        # res += generate_properties(class_)
        res += generate_members_of_class(class_)
        for method in class_["methods"]:
            if native_structs_in_method(method):
                # TODO: Check if this makes sense
                continue
            res += generate_method(class_, method)
            res = generate_newline(res)
        res += generate_operators_for_class(class_["name"])
        res = generate_newline(res)
        res += "};"
        if not "typedarray" in class_["name"].lower():
            res = generate_newline(res)
            res += generate_help_functions(class_["name"])
    res = generate_newline(res)
    res += "}"
    res = generate_newline(res)
    res += "#endif"
    if (os.path.exists(filename)):
        with open(filename, "r") as already_existing_file:
            if already_existing_file.read() == res:
                return
    with open(filename, "w") as f:
        f.write(res)


def generate_dictionary_set_item():
    res = ""
    res += f"{INDENT}Variant operator [](Variant key);"
    res = generate_newline(res)
    return res


def generate_special_methods_dictionary():
    res = ""
    res += generate_dictionary_set_item()
    res = generate_newline(res)
    return res


def generate_array_set_item(class_):
    res = ""
    if class_["name"] == "PackedInt32Array":
        res += f"{INDENT}int& operator [](int index);"
    elif class_["name"] == "PackedInt64Array":
        res += f"{INDENT}int64_t& operator [](int index);"
    elif class_["name"] == "PackedFloat32Array":
        res += f"{INDENT}float& operator [](int index);"
    elif class_["name"] == "PackedFloat64Array":
        res += f"{INDENT}double& operator [](int index);"
    elif class_["name"] == "PackedBoolArray":
        res += f"{INDENT}bool& operator [](int index);"
    elif class_["name"] == "PackedByteArray":
        res += f"{INDENT}byte& operator [](int index);"

    elif class_["name"] == "PackedColorArray":
        res += f"{INDENT}std::shared_ptr<Color> operator [](int index);"
    elif class_["name"] == "PackedVector3Array":
        res += f"{INDENT}std::shared_ptr<Vector3> operator [](int index);"
    elif class_["name"] == "PackedVector2Array":
        res += f"{INDENT}std::shared_ptr<Vector2> operator [](int index);"
    elif class_["name"] == "PackedStringArray":
        res += f"{INDENT}std::shared_ptr<String> operator [](int index);"
    elif "Array" in class_["name"]:
        res += f"{INDENT}Variant operator [](int index);"
    return res


def generate_special_methods_object():
    res = ""
    res += f"{INDENT * 2}std::shared_ptr<String> get_import_path();"
    res = generate_newline(res)
    return res


def generate_special_methods_array(class_):
    res = ""
    res += generate_array_set_item(class_)
    return res


def generate_copy_methods(class_name):
    res = ""
    res += f"{INDENT}void copy_from_other( {class_name} from_);"
    res = generate_newline(res)
    return res


def generate_cast(class_):
    res = ""
    res += f"{INDENT}static std::shared_ptr<{class_['name']}> cast(Wrapper* pwrapper);"
    res = generate_newline(res)
    return res


def generate_special_methods(class_):
    res = ""
    if class_["name"] == "Dictionary":
        res += generate_special_methods_dictionary()

    if "array" in class_["name"].lower():
        res += generate_special_methods_array(class_)

    if class_["name"] in {"Vector3", "Vector2", "String", "Color"}:
        res += generate_copy_methods(class_["name"])

    if class_["name"] in classes:
        res += generate_cast(class_)

    if class_["name"] == "Object":
        res += generate_special_methods_object()

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
    return name.split("::")[1] + "TypedArray"


classes = set()

if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        collect_members(obj)
        for class_ in obj["builtin_classes"]:
            generate_operators_set(class_)

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

        for class_ in obj["classes"]:
            if (not os.path.exists(f"py4godot/cppclasses/{class_['name']}/")):
                os.mkdir(f"py4godot/cppclasses/{class_['name']}/")
            generate_classes([class_], f"py4godot/cppclasses/{class_['name']}/{class_['name']}.h")
        if not os.path.exists(f"py4godot/cppclasses/typedarrays/"):
            os.mkdir(f"py4godot/cppclasses/typedarrays/")
        for array in arrays:
            generate_classes([array], f"py4godot/cppclasses/typedarrays/{array['name']}.h", is_core=True)

        generate_classes(obj["builtin_classes"], f"py4godot/cppclasses/generated4_core.h", is_core=True)

        class_defs = (
            "#pragma once\n"
            '#include "py4godot/godot_bindings/macros.h"\n'
            "namespace godot{")
        for class_ in (obj["builtin_classes"] + obj["classes"] + arrays):
            if class_["name"] in {"Nil", "bool", "float", "int"}:
                continue
            class_defs += f"{INDENT}class {class_['name']};"
            class_defs = generate_newline(class_defs)
        class_defs += "}"
        with open("py4godot/cppclasses/class_defs.h", "w") as f:
            f.write(class_defs)
