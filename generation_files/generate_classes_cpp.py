import copy
import json
import os.path

from generate_classes_hpp import get_ret_value, has_native_struct, ungodottype
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
operator_to_variant_operator = {"+": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_ADD",
                                "*": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_MULTIPLY",
                                "-": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_SUBTRACT",
                                "/": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_DIVIDE",
                                "%": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_MODULE",
                                "**": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_POWER",
                                "==": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL",
                                "!=": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_NOT_EQUAL",
                                "<": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_LESS",
                                "<=": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_LESS_EQUAL",
                                ">": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_GREATER",
                                ">=": "GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_GREATER_EQUAL",
                                }


def generate_import(class_, is_core):
    if not is_core:
        res = f'''
#include "py4godot/cpputils/utils.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/cppclasses/typedarrays.h"
#include "py4godot/godot_bindings/main.h"
#include <stdlib.h>
#include <memory>
'''
        for cls in get_classes_to_import([class_]):
            res += f'#include "py4godot/cppclasses/{cls}/{cls}.h"'
            res = generate_newline(res)
        res += f'''#include "py4godot/cppclasses/{class_['name']}/{class_['name']}.h"'''
        res = generate_newline(res)
        return res

    result = f'#include "py4godot/cpputils/utils.h"\n' \
             f'#include "py4godot/cppclasses/generated4_core.h"\n'
    f'#include <memory>"\n'
    if class_["name"].endswith("Array"):
        result += f'#include "py4godot/cppclasses/typedarrays.h"\n'
    return result


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
        elif untypearray(arg["type"]) in typed_arrays_names:
            if should_make_shared:
                result += f"{make_ptr(unenumize_type(untypearray(unbitfield_type(arg['type']))))} {pythonize_name(arg['name'])}, "
            else:
                result += f"{unenumize_type(untypearray(unbitfield_type(arg['type'])))}& {pythonize_name(arg['name'])}, "
        elif arg["type"] in {"int", "float", "bool"}:
            result += f"{ungodottype(unenumize_type(untypearray(unbitfield_type(arg['type']))))} {pythonize_name(arg['name'])}, "
        elif arg["type"] == "Variant":
            if is_cpp:
                result += f"Variant& {pythonize_name(arg['name'])}, "
            else:
                result += f"PyObject* {pythonize_name(arg['name'])}, "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"int {pythonize_name(arg['name'])} , "  # TODO: Look over this, enable enums again
    result = result[:-2]

    if method_with_args["is_vararg"]:
        result += ", std::vector<PyObject*>& varargs "
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

def make_ptr(type_):
    if type_ in builtin_classes - {"int", "float", "bool", "Nil"}:
        return f"std::shared_ptr<{type_}>"
    if type_ in classes:
        return f"std::shared_ptr<{type_}>"
    if type_ in typed_arrays_names:
        return f"std::shared_ptr<{type_}>"
    return type_
def generate_constructor_args_array(constructor):
    num_of_constructor_args = len(constructor["arguments"]) if "arguments" in constructor.keys() else 1
    res = f"{INDENT * 2}GDExtensionTypePtr _args[{num_of_constructor_args}];"
    res = generate_newline(res)
    if "arguments" not in constructor.keys():
        return res
    index = 0
    for arg in constructor["arguments"]:
        res += f"{INDENT * 2}_args[{index}] = {generate_ret_value_assign_constructor(arg)};"
        res = generate_newline(res)
        index += 1
    res = generate_newline(res)
    return res


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
            "vector4" in res.lower() or
            ""
            "vector3" in res.lower() or "vector2" in res.lower()) or "float64" in res.lower() or "float32" in res.lower() or "int64" in res.lower() or "int32" in res.lower()):
        res = res.replace("Array", "_Array")
    return res


def generate_variant_type(class_):
    if class_ in builtin_classes:
        return f"GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_{convert_camel_case_to_underscore(class_).upper()}"
    elif class_ in typed_arrays_names:
        return f"GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY"
    elif class_ == "Object" or class_ in classes:
        return f"GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_OBJECT"
    else:
        return f"GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL"


def call_constructor_args(constructor):
    res = ""
    if "arguments" not in constructor.keys():
        return res
    for arg in constructor["arguments"]:
        res += unref_pointer_constructor(type_ = arg["type"], value_name = pythonize_name(arg['name'])) + ", "

    return res.rstrip(", ")


def create_class(classname):
    if classname in builtin_classes - {"float", "int", "bool"}:
        return f"{classname}::new0();"
    elif classname in classes:
        return f"{classname}::constructor();"
    elif classname == "float":
        return "0f;"
    elif classname == "int":
        return "(long long)1;"
    elif classname == "bool":
        return "false;"
    return f"{classname}"


def address_val(classname, val_name='val'):
    if classname in builtin_classes - {"float", "int", "bool"}:
        return f"&val.godot_owner"
    elif classname in classes:
        return f"val.godot_owner"
    return f"&val"


def objectify_type(type_):
    if type_ in builtin_classes:
        return type_
    return "Object"


def generate_constructors(class_):
    res = ""
    if "constructors" not in class_.keys():
        return res

    res += generate_copy_constructor(class_)
    res = generate_newline(res)
    res += generate_copy_operator(class_)

    for constructor in class_["constructors"]:
        res += f"{INDENT}{class_['name']} {class_['name']}::new{constructor['index']}({generate_constructor_args(constructor)})" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}{class_['name']} _class{{}};"
        res = generate_newline(res)
        res += f"{INDENT * 2}_class.shouldBeDeleted = true;"
        res = generate_newline(res)
        res += f"{INDENT * 2}_class.set_variant_type({generate_variant_type(class_['name'])});"
        res = generate_newline(res)
        res += f"{INDENT * 2}GDExtensionPtrConstructor constructor = functions::get_variant_get_ptr_constructor()(_class.variant_type, {constructor['index']});"
        res = generate_newline(res)
        # TODO:improve - fill with args
        res += generate_constructor_args_array(constructor)
        res = generate_newline(res)
        res += f"{INDENT * 2}_class.allocated_memory = true;"
        res = generate_newline(res)

        res += f"{INDENT * 2}constructor(&_class.godot_owner,_args);"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _class;"
        res = generate_newline(res)
        res += "}"
        res = generate_newline(res)

        res += f"{INDENT}std::shared_ptr<{class_['name']}> {class_['name']}::py_new{constructor['index']}({generate_constructor_args(constructor, True)})" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}auto _class = {class_['name']}::new{constructor['index']}({call_constructor_args(constructor)});"
        res = generate_newline(res)
        res += f"{INDENT * 2}_class.shouldBeDeleted = false;"
        res = generate_newline(res)
        res += f"{INDENT * 2}return std::make_shared<{class_['name']}>(_class);"
        res = generate_newline(res)
        res += "}"
        res = generate_newline(res)
    return res


def generate_copy_constructor(class_):
    res = ""
    res += f"{INDENT}{class_['name']}::{class_['name']}(const {class_['name']}& copy_val)" + "{"
    res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}this->shouldBeDeleted = true;"
    res = generate_newline(res)
    res += f"{INDENT * 2}this->_callback = nullptr;"
    res = generate_newline(res)
    res += f"{INDENT * 2}this->set_variant_type({get_class_name(generate_variant_type(class_['name']))});"
    res = generate_newline(res)
    res += f"{INDENT * 2}GDExtensionPtrConstructor constructor = functions::get_variant_get_ptr_constructor()(this->variant_type, 1);"
    res = generate_newline(res)
    # TODO:improve - fill with args
    res += f"{INDENT * 2}GDExtensionTypePtr _args[1];"
    res = generate_newline(res)
    res += f"{INDENT * 2}_args[0] = &const_cast<{class_['name']}&>(copy_val).godot_owner;"

    res = generate_newline(res)
    res += f"{INDENT * 2}godot_owner = (void*)(&data);"
    res = generate_newline(res)
    res += f"{INDENT * 2}allocated_memory = true;"
    res = generate_newline(res)
    res += f"{INDENT * 2}constructor(&godot_owner,_args);"
    res = generate_newline(res)
    res += f"{INDENT}}}"
    res = generate_newline(res)
    return res


def generate_copy_operator(class_):
    res = ""
    res += f"{INDENT}{class_['name']}& {class_['name']}::operator=(const {class_['name']}& copy_val)" + "{"
    res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}this->shouldBeDeleted = copy_val.shouldBeDeleted;"
    res = generate_newline(res)
    res += f"{INDENT * 2}this->_callback = nullptr;"
    res = generate_newline(res)
    res += f"{INDENT * 2}this->set_variant_type({get_class_name(generate_variant_type(class_['name']))});"
    res = generate_newline(res)
    res += f"{INDENT * 2}GDExtensionPtrConstructor constructor = functions::get_variant_get_ptr_constructor()(this->variant_type, 1);"
    res = generate_newline(res)
    # TODO:improve - fill with args
    res += f"{INDENT * 2}GDExtensionTypePtr _args[1];"
    res = generate_newline(res)
    res += f"{INDENT * 2}_args[0] = &const_cast<{class_['name']}&>(copy_val).godot_owner;"
    res = generate_newline(res)
    res += f"{INDENT * 2}godot_owner = &data;"
    res = generate_newline(res)
    res += f"{INDENT * 2}constructor(&godot_owner,_args);"
    res = generate_newline(res)
    res += f"{INDENT * 2}return *this;"
    res += f"{INDENT}}}"
    res = generate_newline(res)
    return res


def generate_header_statements():
    res = '#include "main.h"'
    res = generate_newline(res)
    return res


def generate_newline(str_):
    return str_ + "\n"


def generate_return_value(method_, classname):
    result = ""
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if ret_val.type in classes:
            if ret_val.type in builtin_classes - {"float", "int", "bool", "Nil"} and not is_static(
                    method_):  # TODO get rid of is_static
                result += f"{INDENT * 2}{ret_val.type} {ret_val.name}{{}};"
            elif ret_val.type in builtin_classes:
                result += f"{INDENT * 2}{ungodottype(ret_val.type)} {ret_val.name}" + "{};"
            else:
                result += f"{INDENT * 2}{ret_val.type} {ret_val.name} = {ret_val.type}();"
        elif ret_val.type == "Variant":
            result += f"{INDENT * 2}{ret_val.type} {ret_val.name} = {ret_val.type}(1);"  # TODO: is the constructor really necessary
        elif "typedarray" in ret_val.type:
            result += f"{INDENT * 2}{generate_typed_array_name(ret_val.type)} _ret = {generate_typed_array_name(ret_val.type)}::new0();"
        else:
            result += f"{INDENT * 2}{ungodottype(unbitfield_type(unenumize_type(ret_val.type)))} {ret_val.name};"
    else:
        result += f"{INDENT * 2}GDExtensionTypePtr _ret;"
    return result


def get_base_class(class_):
    if "inherits" in class_.keys():
        return class_["inherits"]
    if class_["name"] in builtin_classes:
        return "VariantTypeWrapper4"
    return "Wrapper4"


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
    # TODO handle primitive types
    ret_val = None
    if ("return_value" in method_.keys()):
        ret_val = ReturnType("_ret", method_['return_value']['type'])
    else:
        ret_val = ReturnType("_ret", method_['return_type'])
    result = ""
    result += f"{INDENT * 2}return _ret;"
    return result


def generate_return_py_statement(method_):
    # TODO handle primitive types
    ret_val = None
    if ("return_value" in method_.keys()):
        ret_val = ReturnType("_ret", method_['return_value']['type'])
    else:
        ret_val = ReturnType("_ret", method_['return_type'])
    result = ""
    result += f"{INDENT * 2}return {generate_ret_ptr(ret_val.type, '_ret')};"
    return result


def get_class_name(classname):
    if classname in typed_arrays_names:
        return "Array"
    else:
        return classname


def generate_singleton_constructor(classname):
    res = ""
    res += f"{INDENT}std::shared_ptr<{classname}> {classname}::get_instance()" + "{"
    res = generate_newline(res)

    res += f"{INDENT * 2}StringName class_name = c_string_to_string_name(\"{get_class_name(classname)}\");"
    res = generate_newline(res)

    res += f"{INDENT * 2}class_name.shouldBeDeleted = true;"
    res = generate_newline(res)

    res += f"{INDENT * 2}{classname} singleton = {classname}();"
    res = generate_newline(res)
    res += f"{INDENT * 2}GDExtensionObjectPtr object = functions::get_global_get_singleton()(&class_name.godot_owner);"
    res = generate_newline(res)
    res += f"{INDENT * 2}singleton.set_godot_owner(object);"
    res = generate_newline(res)
    res += f"{INDENT * 2}return std::make_shared<{classname}>(singleton);"
    res = generate_newline(res)
    res += "}"
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
        "packedcolorarray": "GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY",
        "packedvector4array": "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR4_ARRAY"
    }
    if (class_name in typed_arrays_names):
        return "GDEXTENSION_VARIANT_TYPE_ARRAY"
    return DICT[class_name.lower()]


def get_hash(method):
    if "hash_compatibility" in method:
        return method["hash_compatibility"][0]
    else:
        return method["hash"]  # TODO: why is is this weird?


def generate_method_bind(current_class, method):
    res = ""
    res += f"{INDENT * 2}StringName _class_name = c_string_to_string_name(\"{get_class_name(current_class['name'])}\");"
    res = generate_newline(res)
    res += f"{INDENT * 2}_class_name.shouldBeDeleted = true;"
    res = generate_newline(res)

    res = generate_newline(res)

    res += f"{INDENT * 2}StringName _method_name = c_string_to_string_name(\"{method['name']}\");"
    res = generate_newline(res)
    res += f"{INDENT * 2}_method_name.shouldBeDeleted = true;"
    res = generate_newline(res)
    res = generate_newline(res)

    res = generate_newline(res)
    if current_class['name'] in builtin_classes or current_class["name"] in typed_arrays_names:
        res += f"""{INDENT * 2}GDExtensionPtrBuiltInMethod method_to_call = """ + \
               f"""functions::get_variant_get_ptr_builtin_method()(GDExtensionVariantType::{get_variant_type(current_class['name'])}, """ + \
               f"""&_method_name.godot_owner, {method['hash']});"""
    else:
        res += f"""{INDENT * 2}GDExtensionMethodBindPtr method_bind = """ + \
               f"""functions::get_classdb_get_method_bind()(&_class_name.godot_owner,""" + \
               f"""&_method_name.godot_owner, {get_hash(method)});"""
        res = generate_newline(res)
        res += f"{INDENT * 2}assert(method_bind != nullptr);"

    res = generate_newline(res)
    return res


def generate_virtual_return_type(return_type):
    if return_type == "bool":
        return "false;"
    elif return_type in ("int", "float"):
        return "0;"
    elif return_type == "String":
        return "String();"
    elif return_type == "void*":
        return "nullptr;"

    return untypearray(return_type) + "();"


def generate_method_body_virtual(class_, mMethod):
    res = ""
    if "return_value" in mMethod.keys():
        res += f"{INDENT * 2}return {generate_virtual_return_type(unenumize_type(mMethod['return_value']['type']))};"
        res = generate_newline(res)
    return res


def is_static(mMethod):
    return mMethod["is_static"]


def generate_native_params(mMethod):
    if "arguments" not in mMethod.keys():
        return ""
    res = ""
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
            type_ = untypearray(unbitfield_type(arg['type']))
            if arg["type"] in builtin_classes:
                res += f"{INDENT * 2}{pythonize_name(arg['name'])} = {arg['type']}::new0()"
            else:
                res += f"{INDENT * 2}{pythonize_name(arg['name'])} = {arg['type']}::constructor()"
        res = generate_newline(res)
    return res


def generate_varargs_variants(mMethod):
    res = ""
    if "arguments" not in mMethod:
        return ""
    if not mMethod["is_vararg"]:
        return ""

    for arg in mMethod["arguments"]:
        if arg["type"] in builtin_classes:
            res += f"{INDENT * 2}Variant* variant_{pythonize_name(arg['name'])} = new Variant({pythonize_name(arg['name'])});"
        else:
            res += f"{INDENT * 2}Variant* variant_{pythonize_name(arg['name'])} = new Variant(*{pythonize_name(arg['name'])});"
        res = generate_newline(res)
    return res


def generate_variant_vector(mMethod):
    res = ""
    if mMethod["is_vararg"]:
        res += f"{INDENT * 2}std::vector<void*> argument_array{{}};"
        res = generate_newline(res)
        res += f"{INDENT * 2}std::vector<Variant*> variant_argument_array{{}};"
        res = generate_newline(res)
        if "arguments" in mMethod.keys():
            for arg in mMethod["arguments"]:
                res += f"{INDENT * 2}argument_array.push_back(&variant_{pythonize_name(arg['name'])}->native_ptr);"
                res = generate_newline(res)
        res += f"{INDENT * 2}for(auto& _variant: varargs){{"
        res = generate_newline(res)
        res += f"{INDENT * 3}Variant* _var = new Variant(1);"
        res = generate_newline(res)
        res += f'{INDENT * 3}_var->init_from_py_object_native_ptr(_variant, get_python_typename(_variant).c_str());'
        res = generate_newline(res)
        res += f'{INDENT * 3}variant_argument_array.push_back(_var);'
        res = generate_newline(res)
        res += f"{INDENT * 3}argument_array.push_back(&_var->native_ptr);"
        res = generate_newline(res)
        res += f"{INDENT * 2}}}"
        res = generate_newline(res)

    return res


def generate_delete_varargs_variants(mMethod):
    res = ""
    if "arguments" not in mMethod:
        return ""
    if not mMethod["is_vararg"]:
        return ""

    if "arguments" in mMethod.keys():
        for arg in mMethod["arguments"]:
            res = generate_newline(res)
            res += f"{INDENT * 2}delete variant_{pythonize_name(arg['name'])};"
        res = generate_newline(res)
        res += f"{INDENT * 2}for(auto& _variant:variant_argument_array){{"
        res = generate_newline(res)
        res += f"{INDENT * 3}delete _variant;"
        res = generate_newline(res)
        res += f"{INDENT * 2}}}"
        res = generate_newline(res)

    return res


def convert_to_py_if_variant(method_):
    result = ""
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])

        if ret_val.type == "Variant":
            result = ".get_converted_value_native_ptr(true)"

    return result


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
        if arg["type"] == "Variant":
            result += f"*variant_{pythonize_name(arg['name'])}, "
        else:
            result += f"{unref_pointer(pythonize_name(arg['type']), pythonize_name(arg['name']))}, "
    result = result[:-2]

    if method_with_args["is_vararg"]:
        result += ", varargs "
    return result

def unref_pointer_constructor(type_, value_name="value"):
    if type_ in typed_arrays_names or "typedarray" in type_:
        return f"*({value_name})"
    if type_ in builtin_classes - {"int", "float", "bool", "Nil"}:
        return f"*({value_name})"
    if type_ in classes:
        return f"*({value_name})"
    return value_name

def generate_variants(method):
    result = ""
    if "arguments" not in method:
        return result
    for arg in method["arguments"]:
        if arg["type"] == "Variant":
            result += f"{INDENT*2}Variant* variant_{pythonize_name(arg['name'])} = new Variant(1);"
            result = generate_newline(result)
            result += f"{INDENT*2}std::string type_name_{pythonize_name(arg['name'])} = get_python_typename({pythonize_name(arg['name'])});"
            result = generate_newline(result)
            result += f"{INDENT*2}variant_{pythonize_name(arg['name'])}->init_from_py_object_native_ptr({pythonize_name(arg['name'])}, type_name_{pythonize_name(arg['name'])}.c_str());"
            result = generate_newline(result)
    return result
def generate_py_method_body(class_, method):
    result = ""

    result += generate_variants(method)

    if ("return_value" in method.keys() or "return_type" in method.keys()):
        if not is_static(method):
            result += f"{INDENT * 2}auto _ret = this->{pythonize_name(method['name'])}({generate_args_for_call(method)}){convert_to_py_if_variant(method)};"
        else:
            result += f"{INDENT * 2}auto _ret = {class_['name']}::{pythonize_name(method['name'])}({generate_args_for_call(method)}){convert_to_py_if_variant(method)};"
    else:
        if not is_static(method):
            result += f"{INDENT * 2}this->{pythonize_name(method['name'])}({generate_args_for_call(method)});"
        else:
            result += f"{INDENT * 2}{class_['name']}::{pythonize_name(method['name'])}({generate_args_for_call(method)});"

    result = generate_newline(result)
    result += free_variants(method)
    result = generate_newline(result)
    if ("return_value" in method.keys() or "return_type" in method.keys()):
        if ("return_value" in method.keys()):
            ret_val = ReturnType("_ret", method['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method['return_type'])
        if is_refcounted(find_class(ret_val.type)):
            result = generate_newline(result)
            result += f"{INDENT*2}_ret.already_deleted = true;"
        result = generate_newline(result)
        result += generate_return_py_statement(method)
        result = generate_newline(result)

    result += f"{INDENT}}}"
    result = generate_newline(result)
    return result


def free_variants(mMethod):
    res = ""
    if "arguments" not in mMethod.keys():
        return res
    for argument in mMethod["arguments"]:
        if argument["type"] == "Variant":
            res += f"{INDENT * 2}if (functions::get_variant_get_type()(&variant_{pythonize_name(argument['name'])}->native_ptr) != GDEXTENSION_VARIANT_TYPE_OBJECT){{"
            res = generate_newline(res)
            res += f"{INDENT * 3}functions::get_variant_destroy()(&variant_{pythonize_name(argument['name'])}->native_ptr);"
            res = generate_newline(res)
            res += f"{INDENT * 3}free(variant_{pythonize_name(argument['name'])});"
            res = generate_newline(res)
            res += f"{INDENT*3}Py_DECREF({pythonize_name(argument['name'])});"
            res +=f"{INDENT*2}}}"
            res = generate_newline(res)
    return res


def unvarianttype(type_):
    if type_ == "Variant":
        return "PyObject*"
    return type_


def generate_method(class_, mMethod):
    res = ""
    if has_native_struct(mMethod):
        return res
    args = generate_args(mMethod, builtin_classes, True, False)
    args_ptr = generate_args(mMethod, builtin_classes, False, True)
    py_def_function = f"{INDENT}{make_ptr(unvarianttype(ungodottype(unenumize_type(untypearray(get_ret_value(mMethod))))))} {class_['name']}::py_{pythonize_name(mMethod['name'])}({args_ptr})" + "{"
    res += py_def_function
    res = generate_newline(res)
    res += generate_py_method_body(class_, mMethod)
    res = generate_newline(res)
    res = generate_newline(res)

    def_function = f"{INDENT}{ungodottype(unenumize_type(untypearray(get_ret_value(mMethod))))} {class_['name']}::{pythonize_name(mMethod['name'])}({args})" + "{"
    res += def_function
    res = generate_newline(res)
    res += generate_default_args(mMethod)
    res = generate_newline(res)
    res += generate_varargs_variants(mMethod)
    res += generate_variant_vector(mMethod)
    if ("hash" in mMethod.keys()):
        res += generate_method_body_standard(class_, mMethod)
    else:
        res += generate_method_body_virtual(class_, mMethod)

    res += generate_delete_varargs_variants(mMethod)
    res = generate_newline(res)
    res += "}"
    res = generate_newline(res)
    return res


def generate_ret_value_assign(argument):
    if argument["type"] in classes - builtin_classes:

        return f"{pythonize_name(argument['name'])} != nullptr?&({pythonize_name(argument['name'])}->godot_owner):nullptr"
    elif argument["type"] in classes - {"int", "float", "bool", "Nil"}:
        return f"&{pythonize_name(argument['name'])}.godot_owner"
    elif "typedarray" in argument["type"]:
        return f"&{pythonize_name(argument['name'])}.godot_owner"
    elif "Variant" == argument["type"]:
        return f"&{pythonize_name(argument['name'])}.native_ptr"
    return f"&{pythonize_name(argument['name'])}"


def generate_ret_value_assign_constructor(argument):
    if argument["type"] in classes:
        return f"&{pythonize_name(argument['name'])}.godot_owner"
    elif argument["type"] == "Variant":
        return f"{argument['name']}.get_native_ptr()"
    elif "typedarray" in argument["type"]:
        return f"{pythonize_name(argument['name'])}.get_godot_owner()"
    return f"&{pythonize_name(argument['name'])}"


def generate_args_array(method):
    if 'arguments' not in method.keys():
        return f"{INDENT * 2}GDExtensionVariantPtr _args[1];"
    result = f"{INDENT * 2}GDExtensionTypePtr _args[{len(method['arguments'])}];"
    result = generate_newline(result)
    for i in range(0, len(method['arguments'])):
        result += f"{INDENT * 2}_args[{i}] = {generate_ret_value_assign(method['arguments'][i])};"
        result = generate_newline(result)
    return result


def get_first_args_native(method_):
    if "arguments" not in method_:
        if method_["is_vararg"]:
            return "argument_array.empty()?NULL:&argument_array[0]"
        return "NULL"
    return "&_args[0]"


def get_args_count(method):
    if "arguments" in method:
        return len(method["arguments"])
    if "arguments" not in method:
        if method["is_vararg"]:
            return "argument_array.size()"
    return 0


def get_godot_owner(method):
    if is_static(method):
        return "NULL"
    return "godot_owner"


def get_godot_owner_core(method):
    if is_static(method):
        return "NULL"
    return "&godot_owner"


def generate_callback(class_, method):
    if is_static(method):
        return ""
    if "return_value" in method.keys() or "return_type" in method.keys():
        ret_val = None
        if ("return_value" in method.keys()):
            ret_val = ReturnType("_ret", method['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method['return_type'])
        if is_property_setter(class_, method["name"]) and class_["name"] in builtin_classes:
            result = ""
            result += f"{INDENT * 2}if(_callback != nullptr){{"
            result = generate_newline(result)
            result += f"{INDENT * 3}Callback<{ret_val.type}>* _update_callback = (Callback<{ret_val.type}>*)_callback"
            result = generate_newline(result)
            result += f"{INDENT * 3}if(_update_callback) _update_callback->callback(*this, _update_callback->instance);"
            result = generate_newline(result)
            result += f"{INDENT * 2}}}"
            result = generate_newline(result)
            return result
        if is_property_getter(class_, method["name"]) and ret_val.type in builtin_classes - {"float", "int", "bool",
                                                                                             "Nil"}:
            setter = get_setter_for_getter(class_, method["name"], ret_val.type)
            if setter and "arguments" not in method.keys():
                result = ""
                result += f"{INDENT * 2}Callback<{ret_val.type}>* _update_callback = new Callback<{ret_val.type}>();"
                result = generate_newline(result)
                result += f"{INDENT * 2}_update_callback->callback = []({ret_val.type}& arg, void* _instance){{static_cast<{class_['name']}*>(_instance)->{setter}(arg);}};"
                result = generate_newline(result)
                result += f"{INDENT * 2}_update_callback->instance = this;"
                result = generate_newline(result)
                result += f"{INDENT * 2}_ret._callback = (Callback<{ret_val.type}>*)_update_callback;"
                result = generate_newline(result)
                return result
    return ""


def generate_method_body_standard(class_, method):
    number_arguments = 0
    result = ""
    if 'arguments' in method.keys():
        number_arguments = len(method['arguments'])

    result += generate_args_array(method)
    result = generate_newline(result)
    result += generate_return_value(method, class_["name"])
    result = generate_newline(result)

    result = generate_newline(result)
    result += generate_method_bind(class_, method)
    result = generate_newline(result)
    result += generate_operators(class_)
    result = generate_newline(result)

    if (class_['name'] in builtin_classes or class_["name"] in typed_arrays_names):
        result += f"{INDENT * 2}method_to_call({get_godot_owner_core(method)}, {get_first_args_native(method)}, {address_ret(method)}, {get_args_count(method)});"
        result = generate_newline(result)
    else:
        result += generate_method_call_object(method)

    if ("return_value" in method.keys() or "return_type" in method.keys()):
        result = generate_newline(result)
        result += generate_callback(class_, method)
        result = generate_newline(result)
        result += generate_return_statement(method)
    return result


def get_argument_count(method):
    if "arguments" in method.keys():
        return f"{len(method['arguments'])} + varargs.size()"
    return "varargs.size()"


def generate_method_call_object(method):
    result = ""
    if not method["is_vararg"]:
        if ("return_value" in method.keys() or "return_type" in method.keys()):
            result += f"{INDENT * 2}functions::get_object_method_bind_ptrcall()(method_bind," \
                      f" {get_godot_owner(method)}, _args, {address_ret(method)});"
        else:
            result += f"{INDENT * 2}functions::get_object_method_bind_ptrcall()(method_bind," \
                      f" {get_godot_owner(method)}, _args, {address_ret(method)});"
    else:
        # GDExtensionMethodBindPtr p_method_bind, GDExtensionObjectPtr p_instance, const GDExtensionConstVariantPtr *p_args, GDExtensionInt p_arg_count, GDExtensionUninitializedVariantPtr r_ret, GDExtensionCallError *r_error
        result += f"{INDENT * 2}GDExtensionCallError call_error;"
        result = generate_newline(result)
        result += f"{INDENT * 2}functions::get_object_method_bind_call()(method_bind," \
                  f" {get_godot_owner(method)}, &argument_array[0],{get_argument_count(method)}, " \
                  f"{address_ret(method)}, &call_error);"
    return result


def address_ret(method):
    if "return_value" in method.keys() or "return_type" in method.keys():

        if "return_value" in method.keys():
            return_type = method["return_value"]["type"]
        else:
            return_type = method["return_type"]

        return address_ret_decision(return_type)
    return "&_ret"


def address_ret_decision(return_type):
    if return_type in {"int", "float", "bool"}:
        return "&_ret"
    if return_type == "Transform3D":
        return "&_ret.godot_owner"
    if return_type in builtin_classes:
        return "&(_ret.godot_owner)"
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

def find_class(name):
    for cls in obj["classes"]:
        if cls["name"] == name:
            return cls
def is_refcounted(class_):
    if class_ == None:
        return False
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
def generate_destructor(class_):
    classname = class_["name"]
    res = ""
    if classname == "RefCounted":
        res += f"void {INDENT}RefCounted::py_destroy_ref(){{"
        res = generate_newline(res)
        res += f"{INDENT * 2}if (!already_deleted && godot_owner != nullptr && get_reference_count() == 1 ){{"
        res = generate_newline(res)
        res += f"{INDENT * 3}functions::get_object_destroy()(godot_owner);"
        res = generate_newline(res)
        res += f"{INDENT * 3}already_deleted=true;"
        res = generate_newline(res)
        res += f"{INDENT * 2}}}"
        res = generate_newline(res)
        res +=f"{INDENT}}}"
        res = generate_newline(res)

    if classname == "Node":
        res += f"void {INDENT}Node::py_destroy_node(){{"
        res = generate_newline(res)
        res += f"{INDENT * 2}if (!already_deleted && godot_owner != nullptr && !is_inside_tree() && is_put_in_tree){{"
        res = generate_newline(res)
        res += f"{INDENT * 3}functions::get_object_destroy()(godot_owner);"
        res = generate_newline(res)
        res += f"{INDENT * 3}already_deleted=true;"
        res = generate_newline(res)
        res += f"{INDENT * 2}}}"
        res = generate_newline(res)
        res +=f"{INDENT}}}"
        res = generate_newline(res)

    if classname == "Object":
        res += f"void {INDENT}Object::destroy(){{"
        res = generate_newline(res)
        res += f"{INDENT * 2}if (godot_owner != nullptr){{"
        res = generate_newline(res)
        res += f"{INDENT * 3}functions::get_object_destroy()(godot_owner);"
        res = generate_newline(res)
        res += f"{INDENT * 2}}}"
        res = generate_newline(res)
        res +=f"{INDENT}}}"
        res = generate_newline(res)

    res += f"{INDENT}void {classname}::{class_['name']}_py_destroy(){{"
    res = generate_newline(res)

    if classname in builtin_classes or classname in typed_arrays_names:
        if class_["has_destructor"]:
            res += f"{INDENT * 2}auto destructor = functions::get_variant_get_ptr_destructor()({generate_variant_type(classname)});"
            res = generate_newline(res)
            res += f"{INDENT*2}if (destructor){{destructor(&godot_owner);}}"
        else:
            res += f"{INDENT * 2}godot_owner = nullptr;"
            res = generate_newline(res)

    elif classname == "Object":
        res += f"{INDENT * 2}functions::get_object_destroy()(godot_owner);"
        res = generate_newline(res)
    elif classname == "Node" or is_node(class_):
        pass
        #TODO: implement destruction for Node
        #res += f"{INDENT * 2}if(godot_owner && is_inside_tree()){{"
        #res = generate_newline(res)
        #res += f"{INDENT * 3}functions::get_object_destroy()(godot_owner);"
        #res = generate_newline(res)
        #res += f"{INDENT * 2}}}"
        #res = generate_newline(res)

    res = generate_newline(res)
    # res += f"{INDENT * 2}if(allocated_memory)free(godot_owner);"
    # res = generate_newline(res)
    res += f"{INDENT}}}"
    res = generate_newline(res)
    res += f"{INDENT}{classname}::~{classname}(){{"
    res = generate_newline(res)
    if classname not in builtin_classes and classname not in typed_arrays_names:
        res += f"{INDENT}}}"
        return res

    res += f"{INDENT * 2}if(_callback != nullptr){{"
    res = generate_newline(res)
    res += f"{INDENT * 3}delete _callback;"
    res = generate_newline(res)
    res += f"{INDENT * 2}}}"
    res = generate_newline(res)

    res += f"{INDENT * 2}if(shouldBeDeleted && godot_owner != nullptr){{"
    res = generate_newline(res)
    res += f"{INDENT * 3}auto destructor = functions::get_variant_get_ptr_destructor()({generate_variant_type(classname)});"
    res = generate_newline(res)
    res += f"{INDENT * 3}if(destructor == nullptr) return;"
    res = generate_newline(res)
    res += f"{INDENT * 3}destructor(&godot_owner);"
    res = generate_newline(res)
    res += f"{INDENT * 2}}}"
    res = generate_newline(res)
    res += f"{INDENT}}}"
    return res


def generate_common_methods(class_):
    result = ""
    if not is_singleton(class_["name"]):
        result += generate_destructor(class_)
        result = generate_newline(result)
        result += generate_constructor(class_["name"])
        result = generate_newline(result)
    result += generate_new_static(class_)
    result = generate_newline(result)
    result += generate_set_owner(class_)
    result = generate_newline(result)
    result += generate_constructors(class_)
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


def generate_properties(class_):
    result = ""
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            result += generate_property(class_, property)
    return result


def generate_member_getter(class_, member):
    res = ""
    res += f"{INDENT}{make_ptr(unbitfield_type(unenumize_type((member.type_))))} {class_}::py_member_get_{member.name}()" + "{"
    res = generate_newline(res)
    res += f"{INDENT}auto _ret = member_get_{member.name}();"
    res = generate_newline(res)
    res += f"{INDENT}return {generate_ret_ptr(member.type_)};"
    res = generate_newline(res)
    res += f"{INDENT}}}"
    res = generate_newline(res)

    res += f"{INDENT}{unbitfield_type(unenumize_type((member.type_)))} {class_}::member_get_{member.name}()" + "{"
    res = generate_newline(res)
    res += f"{INDENT * 2}String _member_name_string = String::new0();"
    res = generate_newline(res)
    res += f'{INDENT * 2}functions::get_string_new_with_utf8_chars()(&_member_name_string.godot_owner, "{member.name}");'
    res = generate_newline(res)
    res += f'{INDENT * 2}StringName _member_name = StringName::new2(_member_name_string);'
    res = generate_newline(res)
    res += f"{INDENT * 2}GDExtensionPtrGetter getter = functions::get_variant_get_ptr_getter()({generate_variant_type(class_)},&_member_name.godot_owner);"
    res = generate_newline(res)
    if member.type_ == "int" or member.type_ == "float" or member.type_ == "double":
        res += f"{INDENT * 2}{member.type_} _ret;"
    else:
        res += f"{INDENT * 2}{member.type_} _ret = {member.type_}::new0();"
    res = generate_newline(res)
    if member.type_ != "int" and member.type_ != "float" and member.type_ != "double":
        res += f"{INDENT * 2}getter(&godot_owner, &_ret.godot_owner);"
    else:
        res += f"{INDENT * 2}getter(&godot_owner, &_ret);"
    res = generate_newline(res)
    if member.type_ in builtin_classes - {"int", "float", "bool", "Nil"}:
        res += f"{INDENT * 2}Callback<{member.type_}>* _update_callback = new Callback<{member.type_}>();"
        res = generate_newline(res)
        res += f"{INDENT * 2}_update_callback->callback = []({member.type_}& arg, void* _instance){{static_cast<{class_}*>(_instance)->member_set_{member.name}(arg);}};"
        res = generate_newline(res)
        res += f"{INDENT * 2}_update_callback->instance = this;"
        res = generate_newline(res)
        res += f"{INDENT * 2}_ret._callback = (Callback<{member.type_}>*)_update_callback;"
        res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}return _ret;"
    res = generate_newline(res)
    res += "}"
    res = generate_newline(res)
    return res

def generate_ret_ptr(type_, _ret_name = "_ret"):
    if untypearray(type_) in typed_arrays_names:
        return f"std::make_shared<{untypearray(type_)}>({_ret_name})"
    if type_ in builtin_classes - {"int", "float", "bool", "Nil"}:
        return f"std::make_shared<{type_}>({_ret_name})"
    if type_ in classes:
        return f"std::make_shared<{type_}>({_ret_name})"
    return _ret_name

def unref_pointer(type_, value_name="value"):

    if type_ in typed_arrays_names or "typedarray::" in type_:
        return f"*({value_name})"
    if type_ in builtin_classes - {"int", "float", "bool", "Nil"}:
        return f"*({value_name})"
    if type_ in classes:
        return f"({value_name}).get()"
    return value_name

def generate_member_setter(class_, member):
    res = ""
    res += f"{INDENT}void {class_}::py_member_set_{member.name}({make_ptr(member.type_)}& value)" + "{"
    res = generate_newline(res)
    res += f"{INDENT}member_set_{member.name}({unref_pointer(member.type_)});"
    res = generate_newline(res)
    res += f"{INDENT}}}"
    res = generate_newline(res)

    res += f"{INDENT}void {class_}::member_set_{member.name}({member.type_}& value)" + "{"
    res = generate_newline(res)
    res += f"{INDENT * 2}String _member_name_string = String::new0();"
    res = generate_newline(res)
    res += f'{INDENT * 2}functions::get_string_new_with_utf8_chars()(&_member_name_string.godot_owner, "{member.name}");'
    res = generate_newline(res)
    res += f'{INDENT * 2}StringName _member_name = StringName::new2(_member_name_string);'
    res = generate_newline(res)
    res += f"{INDENT * 2}GDExtensionPtrSetter setter = functions::get_variant_get_ptr_setter()({generate_variant_type(class_)},&_member_name.godot_owner);"
    res = generate_newline(res)
    if member.type_ != "int" and member.type_ != "float" and member.type_ != "double":
        res += f"{INDENT * 2}setter(&godot_owner, &value.godot_owner);"
    else:
        res += f"{INDENT * 2}setter(&godot_owner, &value);"
    res = generate_newline(res)
    if class_ in builtin_classes:
        # TODO: enable this again
        # res = generate_newline(res)
        # res += f"{INDENT * 2}get_event_holder().notify_event(<int>(&self.godot_owner), self)"
        res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT * 2}Callback<{class_}>* _update_callback = (Callback<{class_}>*)_callback;"
    res = generate_newline(res)
    res += f"{INDENT * 2}if(_update_callback) _update_callback->callback(*this, _update_callback->instance);"
    res = generate_newline(res)
    res += "}"
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


def generate_property(class_, property):
    result = ""
    if property["name"] == "autoplay":
        return result
    if "get_filters" in property["getter"]:
        return result
    if "data" in property["name"]:
        return result
    if "light_textures" == property["name"]:
        return result
    if "camera_attributes" == property["name"]:
        return result
    if "get_triangles" in property["getter"]:
        return result
    if "right_icon" in property["getter"]:
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
    if "packet_sequence" == property["name"]:
        return result
    result += f"{INDENT}"
    result = generate_newline(result)
    result += f"{INDENT}{simplify_type(untypearray(unbitfield_type(unenumize_type((property['type'])))))} {class_['name']}::prop_get_{pythonize_name(property['name'])}()" + "{"
    result = generate_newline(result)
    if "index" not in property.keys():
        result += f"{INDENT * 2}{simplify_type(unbitfield_type(unenumize_type((property['type']))))} _ret = {pythonize_name(property['getter'])}();"
    else:
        result += f"{INDENT * 2}{simplify_type(unbitfield_type(unenumize_type((property['type']))))} _ret = {pythonize_name(property['getter'])}({property['index']});"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        if (property["type"] in builtin_classes):
            # TODO: enable this again
            # result = generate_newline(result)
            # result += f"{INDENT * 2}get_event_holder().add_event({pythonize_name(property['setter'])}, <int>(&(<VariantTypeWrapper4>_ret).godot_owner))"
            result = generate_newline(result)
    result += f"{INDENT * 2}return _ret;"
    result = generate_newline(result)

    result += INDENT + "}"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        result += f"{INDENT}void {class_['name']}::prop_set_{pythonize_name(property['name'])}({untypearray(simplify_type(property['type']))} value)" + "{"
        result = generate_newline(result)
        if "index" not in property.keys():
            result += f"{INDENT * 2}{pythonize_name(property['setter'])}(value);"
        else:
            result += f"{INDENT * 2}{pythonize_name(property['setter'])}({property['index']},value);"
        result = generate_newline(result)
        result = generate_newline(result)
        if (property["type"] in builtin_classes):
            # TODO: enable this again
            # result = generate_newline(result)
            # result += f"{INDENT * 2}get_event_holder().notify_event(<int>(&(<VariantTypeWrapper4>self).godot_owner),self)"
            result = generate_newline(result)
        result += INDENT + "}"
        result = generate_newline(result)

    return result


def generate_special_methods_object():
    res = ""
    res += f"{INDENT}std::shared_ptr<String> Object::get_import_path(){{"
    res = generate_newline(res)
    res += f'{INDENT * 2}auto my_string = c_string_to_string("import_path");'
    res = generate_newline(res)
    res += f'{INDENT * 2}return std::make_shared<String>(my_string);'
    res = generate_newline(res)
    res += f'{INDENT}}}'
    res = generate_newline(res)
    return res


def pythonize_name(name):
    if name in ("from", "len", "in", "for", "with", "class", "pass", "raise", "global", "char", "default",
                "get_interface", "operator", "enum", "new", "template", "bool"):
        return name + "_"
    return name


def unbitfield_type(arg_type):
    if arg_type.startswith("bitfield::"):
        return "int"
    return arg_type


def unnull_type(value_to_return):
    if value_to_return == "null":
        return "None"
    return value_to_return


def pythonize_boolean_types(arg_val):
    if arg_val == "true":
        return "true"
    elif arg_val == "false":
        return "false"
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
        return generate_typed_array_name(type_)
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


def generate_constructor(classname):
    res = ""
    res += f"{INDENT}std::shared_ptr<{classname}> {classname}::constructor()" + "{"
    res = generate_newline(res)
    res += f"{INDENT * 2}{classname} class_ = {classname}();"
    res = generate_newline(res)
    res += f"{INDENT * 2}StringName class_name =  c_string_to_string_name(\"{get_class_name(classname)}\");"
    res = generate_newline(res)
    res += f"{INDENT * 2}class_name.shouldBeDeleted = true;"
    res = generate_newline(res)

    res += f"{INDENT * 2}class_.set_godot_owner(functions::get_classdb_construct_object()(&class_name.godot_owner));"
    res = generate_newline(res)
    res += f"{INDENT * 2}return std::make_shared<{classname}>(class_);"
    res = generate_newline(res)
    res += INDENT + "}"
    res = generate_newline(res)
    return res


def generate_new_static(class_):
    res = ""
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}{class_['name']} {class_['name']}::new_static(GDExtensionTypePtr owner)" + "{"
    else:
        res += f"{INDENT}{class_['name']} {class_['name']}::new_static(GDExtensionObjectPtr owner)" + "{"

    res = generate_newline(res)
    res += f"{INDENT * 2}{class_['name']} obj = {class_['name']}();"
    res = generate_newline(res)
    res += f"{INDENT * 2}obj.godot_owner = owner;"
    res = generate_newline(res)
    res += f"{INDENT * 2}obj.shouldBeDeleted = false;"
    res = generate_newline(res)
    res += f"{INDENT * 2}return obj;"
    res = generate_newline(res)
    res += "}"
    return res


def generate_set_owner(class_):
    res = ""
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}void {class_['name']}::set_gdowner_{class_['name']}(GDExtensionTypePtr owner)" + "{"
    else:
        res += f"{INDENT}void {class_['name']}::set_gdowner_{class_['name']}(GDExtensionObjectPtr owner)" + "{"

    res = generate_newline(res)
    res += f"{INDENT * 2}godot_owner = owner;"
    res = generate_newline(res)
    res += "}"

    return res


def init_return_type(return_type):
    if (return_type in ("int", "float")):
        return "0"
    elif return_type == "bool":
        return "false"
    elif return_type in builtin_classes - {"float", "int", "bool", "Nil"}:
        return f"{return_type}::new0()"
    else:
        return f"{return_type}()"


def address_param(target):
    if target in builtin_classes - {"int", "float", "bool", "Nil"}:
        return f"&other.godot_owner"
    if target == "int":
        return "&primitive_val_int"
    if target == "float":
        return "&primitive_val_float"
    if target == "bool":
        return "&primitive_val_bool"
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


def generate_reference(type_):
    if type_ not in {"float", "int", "bool"}:
        return "&"
    return ""


def generate_operators_for_class(class_name):
    res = ""
    if get_class_name(class_name) in operator_dict.keys():
        for operator in operator_dict[get_class_name(class_name)]:
            if operator in operator_to_method.keys():
                op = operator_dict[get_class_name(class_name)][operator]
                if op.right_type_values:
                    for right_type in op.right_type_values:
                        res += f"{INDENT}{op.return_type} {class_name}::operator {operator}({ungodottype(right_type)}{generate_reference(right_type)} other)" + "{"
                        res = generate_newline(res)
                        res += f"{INDENT * 2}{op.return_type} _ret = {init_return_type(op.return_type)};"
                        res = generate_newline(res)

                        res = generate_newline(res)
                        res += f"{INDENT * 2}GDExtensionPtrOperatorEvaluator operator_evaluator;"
                        res = generate_newline(res)
                        if right_type in {"float", "int", "bool", "Nil"}:
                            res += f"{INDENT * 2}{ungodottype(right_type)} primitive_val_{right_type} = other;"
                        res = generate_newline(res)
                        res += f"{INDENT * 2}operator_evaluator = {INDENT * 2}functions::get_variant_get_ptr_operator_evaluator()({operator_to_variant_operator[operator]}, {generate_variant_type(op.class_)}, {generate_variant_type(right_type)});"
                        res = generate_newline(res)
                        res += f"{INDENT * 2}operator_evaluator(&godot_owner, {address_param(right_type)}, {address_ret_decision(op.return_type)});"
                        res = generate_newline(res)

                        res += f"{INDENT * 2}return _ret;"
                        res = generate_newline(res)
                        res += INDENT + "}"
                        res = generate_newline(res)

                        res += f"{INDENT}{make_ptr(op.return_type)} {class_name}::py_operator_{operator_to_python_name(operator)}({make_ptr(ungodottype(right_type))}{generate_reference(right_type)} other)" + "{"
                        res = generate_newline(res)
                        res += f"{INDENT * 2}auto _ret = *this {operator} {unref_pointer(type_=ungodottype(right_type), value_name='other')};"
                        res = generate_newline(res)
                        res += f"{INDENT * 2}return {generate_ret_ptr(op.return_type)};"
                        res = generate_newline(res)
                        res += INDENT + "}"
                        res = generate_newline(res)
    res = generate_newline(res)
    return res


def generate_typed_array_import(classes):
    res = ""
    for cls in classes:
        if cls["name"] in typed_arrays_names:
            cls_name = cls["name"][:-10]
            if cls_name not in builtin_classes:
                res += f'#include "py4godot/cppclasses/{cls_name}/{cls_name}.h"\n'
    return res


def generate_classes(classes, filename, is_core=False):
    res = generate_import(classes[0], is_core)
    res = generate_newline(res)

    res += generate_typed_array_import(classes)
    res += generate_header_statements()
    res = generate_newline(res)
    for class_ in classes:
        if (class_["name"] in IGNORED_CLASSES):
            continue
        res = generate_newline(res)
        res += generate_common_methods(class_)
        res += generate_special_methods(class_)
        res = generate_newline(res)
        res += generate_construction(class_)
        res = generate_newline(res)
        if "methods" not in class_.keys():
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
    if (os.path.exists(filename)):
        with open(filename, "r") as already_existing_file:
            if already_existing_file.read() == res:
                return
    with open(filename, "w") as f:
        f.write(res)


def generate_dictionary_set_item():
    res = ""
    res += f"{INDENT}Variant Dictionary::operator [](Variant key)" + "{"
    res = generate_newline(res)
    res += f"{INDENT * 2}return Variant::new_static(functions::get_dictionary_operator_index()(&godot_owner, &key.native_ptr));"
    res = generate_newline(res)
    res += f"{INDENT}" + "}"
    res = generate_newline(res)
    return res


def generate_dictionary_get_item():
    res = ""
    res += f"{INDENT}const Variant Dictionary::operator[](Variant key)" + "{"
    res = generate_newline(res)
    res += f"{INDENT * 2}return Variant::new_static(functions::get_dictionary_operator_index()(godot_owner, key.native_ptr));"
    res = generate_newline(res)
    res += f"{INDENT}" + "}"
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
        res += f"{INDENT}int& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return functions::get_packed_int32_array_operator_index()(&godot_owner, index)[0];"
        res += INDENT + "}"
    elif class_["name"] == "PackedInt64Array":
        res += f"{INDENT}int64_t& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return functions::get_packed_int64_array_operator_index()(&godot_owner, index)[0];"
        res += INDENT + "}"
    elif class_["name"] == "PackedFloat32Array":
        res += f"{INDENT}float& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return functions::get_packed_float32_array_operator_index()(&godot_owner, index)[0];"
        res += INDENT + "}"
    elif class_["name"] == "PackedFloat64Array":
        res += f"{INDENT}double& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return functions::get_packed_float64_array_operator_index()(&godot_owner, index)[0];"
        res += INDENT + "}"
    elif class_["name"] == "PackedByteArray":
        res += f"{INDENT}byte& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return functions::get_packed_byte_array_operator_index()(&godot_owner, index)[0];"
        res += INDENT + "}"

    elif class_["name"] == "PackedColorArray":
        res += f"{INDENT}std::shared_ptr<Color> {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return std::make_shared<Color>(Color::new_static(functions::get_packed_color_array_operator_index()(&godot_owner, index)));"
        res += INDENT + "}"
    elif class_["name"] == "PackedVector3Array":
        res += f"{INDENT}std::shared_ptr<Vector3> {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return std::make_shared<Vector3>(Vector3::new_static(functions::get_packed_vector3_array_operator_index()(&godot_owner, index)));"
        res += INDENT + "}"
    elif class_["name"] == "PackedVector2Array":
        res += f"{INDENT}std::shared_ptr<Vector2> {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return std::make_shared<Vector2>(Vector2::new_static(functions::get_packed_vector2_array_operator_index()(&godot_owner, index)));"
        res += INDENT + "}"
    elif class_["name"] == "PackedStringArray":
        res += f"{INDENT}std::shared_ptr<String> {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return std::make_shared<String>(String::new_static(functions::get_packed_string_array_operator_index()(&godot_owner, index)));"
        res += INDENT + "}"
    elif get_class_name(class_["name"]) == "Array":
        res += f"{INDENT}Variant {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return Variant::new_static(functions::get_array_operator_index()(&godot_owner, index));"
        res += INDENT + "}"
    return res


def generate_special_methods_array(class_):
    res = ""
    res += generate_array_set_item(class_)
    return res


def generate_cast(class_):
    res = ""
    res += f"{INDENT}std::shared_ptr<{class_['name']}> {class_['name']}::cast(Wrapper* pwrapper){{"
    res = generate_newline(res)
    res += f"{INDENT * 2}return std::make_shared<{class_['name']}>();"
    res += f"{INDENT}}}"
    res = generate_newline(res)
    return res


def generate_special_methods(class_):
    res = ""
    if class_["name"] == "Dictionary":
        res += generate_special_methods_dictionary()

    if "array" in class_["name"].lower():
        res += generate_special_methods_array(class_)
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


def get_setter_for_getter(class_, methodname, ret_type):
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            if "setter" in property.keys():
                if methodname == property["getter"]:
                    for method in class_["methods"]:
                        if method["name"] == property["setter"] and are_types_same(method, ret_type):
                            return property["setter"]


def are_types_same(method, ret_type):
    return method["arguments"][0]["type"] == ret_type


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
    if (name == "typedarray::Array"):
        pass
    return name.split("::")[1] + "TypedArray"


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
            generate_classes([class_], f"py4godot/cppclasses/{class_['name']}/{class_['name']}.cpp")

        generate_classes(arrays, f"py4godot/cppclasses/typedarrays.cpp", is_core=True)
        generate_classes(obj["builtin_classes"], f"py4godot/cppclasses/generated4_core.cpp", is_core=True)
