import json
import os.path

from generate_classes_hpp import get_ret_value, has_native_struct, generate_args
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
        self.type_  = type_

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
operator_to_variant_operator = {"+":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_ADD",
                                "*":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_MULTIPLY",
                                "-":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_SUBTRACT",
                                "/":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_DIVIDE",
                                "%":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_MODULE",
                                "**":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_POWER",
                                "==":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_EQUAL",
                                "!=":"GDExtensionVariantOperator::GDEXTENSION_VARIANT_OP_NOT_EQUAL",
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
#include "py4godot/godot_bindings/main.h"
#include <stdlib.h>
'''
        for cls in get_classes_to_import([class_]):
            res += f'#include "py4godot/cppclasses/{cls}/{cls}.h"'
            res = generate_newline(res)
        res += f'''#include "py4godot/cppclasses/{class_['name']}/{class_['name']}.h"'''
        res = generate_newline(res)
        return res

    result = f'#include "py4godot/cpputils/utils.h"\n'\
             f'#include "py4godot/cppclasses/generated4_core.h"\n'
    return result

def generate_constructor_args(constructor):
    result = ""
    if "arguments" not in constructor:
        return result

    for arg in constructor["arguments"]:
        if not arg["type"].startswith("enum::"):
            result += f"{untypearray(unbitfield_type(arg['type']))} {pythonize_name(arg['name'])}, "
        else:
            #enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{untypearray(unenumize_type(arg_type))} {pythonize_name(arg['name'])}, "
    result = result[:-2]
    return result

def generate_constructor_args_array(constructor):
    num_of_constructor_args = len(constructor["arguments"]) if "arguments" in constructor.keys() else 1
    res = f"{INDENT*2}GDExtensionTypePtr _args[{num_of_constructor_args}];"
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
                res += "_"+char
        else:
            res += char
        was_upper = char.isupper()
        was_number = char in {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
    if (("vector3" in res.lower() or "vector2" in res.lower()) or "float64" in res.lower() or "float32" in res.lower() or "int64" in res.lower() or "int32" in res.lower()):
        res = res.replace("Array", "_Array")
    return res
def generate_variant_type(class_):
    if class_ in builtin_classes:
        return f"GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_{convert_camel_case_to_underscore(class_).upper()}"
    else:
        return f"GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL"

def generate_constructors(class_):
    res = ""
    if "constructors" not in class_.keys():
        return res
    for constructor in class_["constructors"]:
        res += f"{INDENT}{class_['name']} {class_['name']}::new{constructor['index']}({generate_constructor_args(constructor)})"+"{"
        res = generate_newline(res)
        res += f"{INDENT*2}{class_['name']} _class;"
        res = generate_newline(res)
        res += f"{INDENT*2}_class.set_variant_type({generate_variant_type(class_['name'])});"
        res = generate_newline(res)
        res += f"{INDENT*2}GDExtensionPtrConstructor constructor = _interface->variant_get_ptr_constructor(_class.variant_type, {constructor['index']});"
        res = generate_newline(res)
        #TODO:improve - fill with args
        res += generate_constructor_args_array(constructor)
        res = generate_newline(res)

        res += f"{INDENT*2}constructor(&_class.godot_owner,_args);"
        res = generate_newline(res)
        res += f"{INDENT*2}return _class;"
        res = generate_newline(res)
        res += "}"
        res = generate_newline(res)
    return res


def generate_header_statements():
    res = ""
    res = generate_newline(res)
    return res

def generate_newline(str_):
    return str_ + "\n"


def generate_return_value(method_):
    result = ""
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if ret_val.type in classes:
            if ret_val.type in builtin_classes:
                result += f"{INDENT * 2}{ret_val.type} {ret_val.name}"+"{};"
            else:
                result += f"{INDENT * 2}{ret_val.type} {ret_val.name} = {ret_val.type}();"
        elif ret_val.type == "Variant":
            result += f"{INDENT * 2}{ret_val.type} {ret_val.name} = {ret_val.type}();"
        elif "typedarray" in ret_val.type:
            result += f"{INDENT * 2}Array _ret = Array::new0();"
        else:
            result += f"{INDENT * 2}{unbitfield_type(unenumize_type(ret_val.type))} {ret_val.name};"
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
    return type.replace("*","").replace("const","").strip()
def native_structs_in_method(mMethod):
    #TODO: check whether this method makes sense for later
    if("arguments" in mMethod):
        for arg in mMethod["arguments"]:
            if arg["type"] in forbidden_types:
                return True
            if("*" in arg["type"]):
                return True
            if strip_symbols_from_type(arg["type"]) in native_structs:
                return True
    #if "return_value" in mMethod.keys():
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
    result += f"{INDENT*2}return _ret;"
    return result

def generate_singleton_constructor(classname):
    res = ""
    res += f"{INDENT}{classname} {classname}::get_instance()"+"{"
    res = generate_newline(res)

    res += f"{INDENT * 2}StringName class_name = c_string_to_string_name(\"{classname}\");"
    res = generate_newline(res)
    res = generate_newline(res)

    res += f"{INDENT*2}{classname} singleton = {classname}();"
    res = generate_newline(res)
    res += f"{INDENT*2}GDExtensionObjectPtr object = _interface->global_get_singleton(&class_name.godot_owner);"
    res = generate_newline(res)
    res += f"{INDENT*2}singleton.set_godot_owner(object);"
    res = generate_newline(res)
    res += f"{INDENT*2}return singleton;"
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

        "Nil":"GDEXTENSION_VARIANT_TYPE_NIL",

        #  atomic types
        "bool":"GDEXTENSION_VARIANT_TYPE_BOOL",
        "int":"GDEXTENSION_VARIANT_TYPE_INT",
        "float":"GDEXTENSION_VARIANT_TYPE_FLOAT",
        "string":"GDEXTENSION_VARIANT_TYPE_STRING",

        # math types
        "vector2":"GDEXTENSION_VARIANT_TYPE_VECTOR2",
        "vector2i":"GDEXTENSION_VARIANT_TYPE_VECTOR2I",
        "rect2":"GDEXTENSION_VARIANT_TYPE_RECT2",
        "rect2i":"GDEXTENSION_VARIANT_TYPE_RECT2I",
        "vector3":"GDEXTENSION_VARIANT_TYPE_VECTOR3",
        "vector3i":"GDEXTENSION_VARIANT_TYPE_VECTOR3I",
        "transform2d":"GDEXTENSION_VARIANT_TYPE_TRANSFORM2D",
        "vector4":"GDEXTENSION_VARIANT_TYPE_VECTOR4",
        "vector4i":"GDEXTENSION_VARIANT_TYPE_VECTOR4I",
        "plane":"GDEXTENSION_VARIANT_TYPE_PLANE",
        "quaternion":"GDEXTENSION_VARIANT_TYPE_QUATERNION",
        "aabb":"GDEXTENSION_VARIANT_TYPE_AABB",
        "basis":"GDEXTENSION_VARIANT_TYPE_BASIS",
        "transform3d":"GDEXTENSION_VARIANT_TYPE_TRANSFORM3D",
        "projection":"GDEXTENSION_VARIANT_TYPE_PROJECTION",

        # misc types
        "color":"GDEXTENSION_VARIANT_TYPE_COLOR",
        "stringname":"GDEXTENSION_VARIANT_TYPE_STRING_NAME",
        "nodepath":"GDEXTENSION_VARIANT_TYPE_NODE_PATH",
        "rid":"GDEXTENSION_VARIANT_TYPE_RID",
        "object":"GDEXTENSION_VARIANT_TYPE_OBJECT",
        "callable":"GDEXTENSION_VARIANT_TYPE_CALLABLE",
        "signal":"GDEXTENSION_VARIANT_TYPE_SIGNAL",
        "dictionary":"GDEXTENSION_VARIANT_TYPE_DICTIONARY",
        "array":"GDEXTENSION_VARIANT_TYPE_ARRAY",

        # typed arrays
        "packedbytearray":"GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY",
        "packedint32array":"GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY",
        "packedint64array":"GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY",
        "packedfloat32array":"GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY",
        "packedfloat64array":"GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY",
        "packedstringarray":"GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY",
        "packedvector2array":"GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY",
        "packedvector3array":"GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY",
        "packedcolorarray":"GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY"
    }

    return DICT[class_name.lower()]
def generate_method_bind(current_class, method):
    res = ""
    res += f"{INDENT * 2}StringName _class_name = c_string_to_string_name(\"{current_class['name']}\");"
    res = generate_newline(res)
    res = generate_newline(res)

    res += f"{INDENT * 2}StringName _method_name = c_string_to_string_name(\"{method['name']}\");"
    res = generate_newline(res)
    res = generate_newline(res)

    res = generate_newline(res)
    if current_class['name'] in builtin_classes:
        res += f"""{INDENT * 2}GDExtensionPtrBuiltInMethod method_to_call = """ + \
               f"""_interface->variant_get_ptr_builtin_method(GDExtensionVariantType::{get_variant_type(current_class['name'])}, """ + \
               f"""&_method_name.godot_owner, {method['hash']});"""
    else:
        res += f"""{INDENT*2}GDExtensionMethodBindPtr method_bind = """ + \
               f"""_interface->classdb_get_method_bind(&_class_name.godot_owner,""" + \
               f"""&_method_name.godot_owner, {method['hash']});"""

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

    return untypearray(return_type)+"();"
def generate_method_body_virtual(class_, mMethod):
    res = ""
    if "return_value" in mMethod.keys():
        res += f"{INDENT*2}return {generate_virtual_return_type(unenumize_type(mMethod['return_value']['type']))};"
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
        if not arg["type"].startswith("enum::") and not arg["type"].startswith("typedarray::") and not arg["type"].startswith("bitfield::"):
            type_ = untypearray(unbitfield_type(arg['type']))
            if arg["type"] in builtin_classes:
                res += f"{INDENT*2}{pythonize_name(arg['name'])} = {arg['type']}::new0()"
            else:
                res += f"{INDENT*2}{pythonize_name(arg['name'])} = {arg['type']}::constructor()"
        res = generate_newline(res)
    return res


def generate_method(class_, mMethod):
    res = ""
    if has_native_struct(mMethod):
        return res
    args = generate_args(mMethod, builtin_classes)
    def_function = f"{INDENT}{unenumize_type(untypearray(get_ret_value(mMethod)))} {class_['name']}::{pythonize_name(mMethod['name'])}({args})"+"{"
    res += def_function
    res = generate_newline(res)
    res += generate_default_args(mMethod)
    res = generate_newline(res)
    if("hash" in mMethod.keys()):
        res += generate_method_body_standard(class_, mMethod)
    else:
        res += generate_method_body_virtual(class_, mMethod)
    res = generate_newline(res)
    res += "}"
    res = generate_newline(res)
    return res


def generate_ret_value_assign(argument):
    if argument["type"] in classes - builtin_classes:
        return f"{pythonize_name(argument['name'])}->get_godot_owner()"
    elif argument["type"] in classes - {"int", "float", "bool", "Nil"}:
        return f"&{pythonize_name(argument['name'])}.godot_owner"
    elif "typedarray" in argument["type"]:
        return f"{pythonize_name(argument['name'])}.godot_owner"
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
        return "NULL"
    return "&_args[0]"

def get_args_count(method):
    if "arguments" in method:
        return len(method["arguments"])
    return 0

def get_godot_owner(method):
    if is_static(method):
        return "NULL"
    return "godot_owner"

def get_godot_owner_core(method):
    if is_static(method):
        return "NULL"
    return "&godot_owner"

def generate_method_body_standard(class_, method):
    number_arguments = 0
    result = ""
    if 'arguments' in method.keys():
        number_arguments = len(method['arguments'])

    result += generate_args_array(method)
    result = generate_newline(result)
    result += generate_return_value(method)
    result = generate_newline(result)

    result = generate_newline(result)
    result += generate_method_bind(class_, method)
    result = generate_newline(result)
    result += generate_operators(class_)
    result = generate_newline(result)

    if(class_['name'] in builtin_classes):
        result += f"{INDENT * 2}method_to_call({get_godot_owner_core(method)}, {get_first_args_native(method)}, {address_ret(method)}, {get_args_count(method)});"
        result = generate_newline(result)
    else:
        if ("return_value" in method.keys() or "return_type" in method.keys()):
            result += f"{INDENT * 2}_interface->object_method_bind_ptrcall(method_bind," \
                      f" {get_godot_owner(method)}, _args, {address_ret(method)});"
        else:
            result += f"{INDENT * 2}_interface->object_method_bind_ptrcall(method_bind," \
                      f" {get_godot_owner(method)}, _args, {address_ret(method)});"

    if ("return_value" in method.keys() or "return_type" in method.keys()):
        result = generate_newline(result)
        result += generate_return_statement(method)
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
        if("operators" in class_.keys()):
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

def generate_common_methods(class_):
    result = ""
    if not is_singleton(class_["name"]):
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
    if("properties" in class_.keys()):
        for property in class_["properties"]:
            result += generate_property(class_, property)
    return result

def generate_member_getter(class_,member):
    res = ""
    res += f"{INDENT}{unbitfield_type(unenumize_type((member.type_)))} {class_}::member_get_{member.name}()"+"{"
    res = generate_newline(res)
    res += f"{INDENT*2}String _member_name_string = String::new0();"
    res = generate_newline(res)
    res += f'{INDENT*2}_interface->string_new_with_utf8_chars(_member_name_string.godot_owner, "{member.name}");'
    res = generate_newline(res)
    res += f'{INDENT*2}StringName _member_name = StringName::new2(_member_name_string);'
    res = generate_newline(res)
    res += f"{INDENT*2}GDExtensionPtrGetter getter = _interface->variant_get_ptr_getter({generate_variant_type(class_)},_member_name.godot_owner);"
    res = generate_newline(res)
    if member.type_ == "int" or member.type_ == "float" or member.type_ == "double":
        res += f"{INDENT*2}{member.type_} _ret;"
    else:
        res += f"{INDENT * 2}{member.type_} _ret = {member.type_}::new0();"
    res = generate_newline(res)
    if member.type_ != "int" and member.type_ != "float" and member.type_ != "double":
        res += f"{INDENT * 2}getter(godot_owner, _ret.godot_owner);"
    else:
        res += f"{INDENT*2}getter(godot_owner, &_ret);"
    res = generate_newline(res)
    if member.type_ in builtin_classes:
        #TODO:enable this again
        #res = generate_newline(res)
        #res += f"{INDENT * 2}get_event_holder().add_event(self.set_{member.name}, <int>(&(<VariantTypeWrapper4>_ret).godot_owner))"
        res = generate_newline(res)
    res = generate_newline(res)
    res += f"{INDENT*2}return _ret;"
    res = generate_newline(res)
    res +="}"
    res = generate_newline(res)
    return res

def generate_member_setter(class_,member):
    res = ""
    res += f"{INDENT}void {class_}::member_set_{member.name}({member.type_} value)"+"{"
    res = generate_newline(res)
    res += f"{INDENT * 2}String _member_name_string = String::new0();"
    res = generate_newline(res)
    res += f'{INDENT * 2}_interface->string_new_with_utf8_chars(_member_name_string.godot_owner, "{member.name}");'
    res = generate_newline(res)
    res += f'{INDENT * 2}StringName _member_name = StringName::new2(_member_name_string);'
    res = generate_newline(res)
    res += f"{INDENT * 2}GDExtensionPtrSetter setter = _interface->variant_get_ptr_setter({generate_variant_type(class_)},_member_name.godot_owner);"
    res = generate_newline(res)
    if member.type_ != "int" and member.type_ != "float" and member.type_ != "double":
        res += f"{INDENT * 2}setter(godot_owner, value.godot_owner);"
    else:
        res += f"{INDENT * 2}setter(godot_owner, &value);"
    res = generate_newline(res)
    if class_ in builtin_classes:
        #TODO: enable this again
        #res = generate_newline(res)
        #res += f"{INDENT * 2}get_event_holder().notify_event(<int>(&self.godot_owner), self)"
        res = generate_newline(res)
    res = generate_newline(res)
    res += "}"
    return res


def generate_members_of_class(class_):
    res = ""
    if class_["name"] in core_classes.keys():
        for member in core_classes[class_["name"]].core_members:
            res += generate_member_getter(class_["name"],member)
            res = generate_newline(res)
            res += generate_member_setter(class_["name"],member)
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
    result += f"{INDENT}{simplify_type(untypearray(unbitfield_type(unenumize_type((property['type'])))))} {class_['name']}::prop_get_{pythonize_name(property['name'])}()"+"{"
    result = generate_newline(result)
    if "index" not in property.keys():
        result += f"{INDENT * 2}{simplify_type(unbitfield_type(unenumize_type((property['type']))))} _ret = {pythonize_name(property['getter'])}();"
    else:
        result += f"{INDENT * 2}{simplify_type(unbitfield_type(unenumize_type((property['type']))))} _ret = {pythonize_name(property['getter'])}({property['index']});"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        if(property["type"] in builtin_classes):
            #TODO: enable this again
            #result = generate_newline(result)
            #result += f"{INDENT * 2}get_event_holder().add_event({pythonize_name(property['setter'])}, <int>(&(<VariantTypeWrapper4>_ret).godot_owner))"
            result = generate_newline(result)
    result += f"{INDENT * 2}return _ret;"
    result = generate_newline(result)

    result += INDENT + "}"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        result += f"{INDENT}void {class_['name']}::prop_set_{pythonize_name(property['name'])}({untypearray(simplify_type(property['type']))} value)"+"{"
        result = generate_newline(result)
        if "index" not in property.keys():
            result += f"{INDENT * 2}{pythonize_name(property['setter'])}(value);"
        else:
            result += f"{INDENT * 2}{pythonize_name(property['setter'])}({property['index']},value);"
        result = generate_newline(result)
        result = generate_newline(result)
        if (property["type"] in builtin_classes):
            #TODO: enable this again
            #result = generate_newline(result)
            #result += f"{INDENT * 2}get_event_holder().notify_event(<int>(&(<VariantTypeWrapper4>self).godot_owner),self)"
            result = generate_newline(result)
        result += INDENT+"}"
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
    if("&" in arg_val):
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
        #return "int"
        #TODO: enable later
        return "int"
    elif type_ in enums:
        return "int"
    return type_list[0]

def untypearray(type_):
    #TODO improve this by creating actually typed arrays
    if "typedarray" in type_:
        return "Array"
    return type_

def get_class_from_enum(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    return type_list[0]
def get_classes_to_import(classes):
    classes_to_import = set()
    for class_ in classes:
        if( "inherits" in class_.keys()):
            classes_to_import.add(class_["inherits"])
        if "methods" in class_.keys():
            for method in class_["methods"]:
                if("return_value" in method.keys()):
                    if(unbitfield_type(get_class_from_enum(method["return_value"]["type"])) in normal_classes):
                        classes_to_import.add(get_class_from_enum(method["return_value"]["type"]))
                if("arguments" not in method.keys()):
                    continue
                for argument in method["arguments"]:
                    if argument["type"] in normal_classes:
                        classes_to_import.add(argument["type"])
                    if "enum" in argument["type"]:
                        type = argument["type"].lstrip("enum::")
                        if type.split(".")[0] in normal_classes:
                            classes_to_import.add(type.split(".")[0])

        if "properties" in class_.keys():
            for prop in class_["properties"]:

                if simplify_type(prop["type"]) in normal_classes:
                    classes_to_import.add(simplify_type(prop["type"]))

    return classes_to_import

def generate_constructor(classname):
    res = ""
    res += f"{INDENT}{classname} {classname}::constructor()"+"{"
    res = generate_newline(res)
    res += f"{INDENT*2}{classname} class_ = {classname}();"
    res = generate_newline(res)
    res += f"{INDENT*2}StringName class_name =  c_string_to_string_name(\"{classname}\");"
    res = generate_newline(res)

    res += f"{INDENT*2}class_.set_godot_owner(_interface->classdb_construct_object(&class_name.godot_owner));"
    res = generate_newline(res)
    res += f"{INDENT*2}_interface->object_set_instance(class_.get_godot_owner(),&class_name.godot_owner , &class_);"
    res = generate_newline(res)
    res += f"{INDENT*2}return class_;"
    res = generate_newline(res)
    res += INDENT+"}"
    res = generate_newline(res)
    return res

def generate_new_static(class_):
    res = ""
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}{class_['name']} {class_['name']}::new_static(GDExtensionTypePtr owner)"+"{"
    else:
        res += f"{INDENT}{class_['name']} {class_['name']}::new_static(GDExtensionObjectPtr owner)"+"{"

    res = generate_newline(res)
    res += f"{INDENT*2}{class_['name']} obj = {class_['name']}();"
    res = generate_newline(res)
    res += f"{INDENT * 2}obj.godot_owner = owner;"
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
    if(return_type in ("int", "float")):
        return "0"
    elif return_type == "bool":
        return "false"
    else:
        return f"{return_type}()"


def address_param(target):
    if target in builtin_classes - {"int", "float", "bool", "Nil"}:
        return f"other.godot_owner"
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


def generate_operators_for_class(class_name):
    res = ""
    if class_name in operator_dict.keys():
        for operator in operator_dict[class_name]:
            if operator in operator_to_method.keys():
                op = operator_dict[class_name][operator]
                if op.right_type_values:
                    for right_type in op.right_type_values:
                        res += f"{INDENT}{op.return_type} {class_name}::operator {operator}({right_type} other)"+"{"
                        res = generate_newline(res)
                        res += f"{INDENT * 2}{op.return_type} _ret = {init_return_type(op.return_type)};"
                        res = generate_newline(res)

                        res = generate_newline(res)
                        res += f"{INDENT * 2}GDExtensionPtrOperatorEvaluator operator_evaluator;"
                        res = generate_newline(res)
                        if right_type in {"float", "int", "bool", "Nil"}:
                            res += f"{INDENT*2}{right_type} primitive_val_{right_type} = other;"
                        res = generate_newline(res)
                        res += f"{INDENT * 2}operator_evaluator = {INDENT * 2}_interface->variant_get_ptr_operator_evaluator({operator_to_variant_operator[operator]}, {generate_variant_type(op.class_)}, {generate_variant_type(right_type)});"
                        res = generate_newline(res)
                        res += f"{INDENT*2}operator_evaluator(godot_owner, {address_param(right_type)}, {address_ret_decision(op.return_type)});"
                        res = generate_newline(res)

                        res += f"{INDENT*2}return _ret;"
                        res = generate_newline(res)
                        res +=INDENT + "}"
                        res = generate_newline(res)
    res = generate_newline(res)
    return res



def generate_classes(classes, filename, is_core=False):
    res = generate_import(classes[0], is_core)
    res = generate_newline(res)
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
        #res += generate_properties(class_)
        res += generate_members_of_class(class_)
        for method in class_["methods"]:
            if native_structs_in_method(method):
                # TODO: Check if this makes sense
                continue
            res += generate_method(class_, method)
            res = generate_newline(res)
        res += generate_operators_for_class(class_["name"])
    if(os.path.exists(filename)):
        with open(filename, "r") as already_existing_file:
            if already_existing_file.read() == res:
                return
    with open(filename, "w") as f:
        f.write(res)


def generate_dictionary_set_item():
    res = ""
    res += f"{INDENT}Variant Dictionary::operator [](Variant key)"+"{"
    res = generate_newline(res)
    res += f"{INDENT * 2}return Variant::new_static(_interface->dictionary_operator_index(godot_owner, key.native_ptr));"
    res = generate_newline(res)
    res += f"{INDENT}"+"}"
    res = generate_newline(res)
    return res


def generate_dictionary_get_item():
    res = ""
    res += f"{INDENT}const Variant Dictionary::operator[](Variant key)"+"{"
    res = generate_newline(res)
    res += f"{INDENT * 2}return Variant::new_static(_interface->dictionary_operator_index(godot_owner, key.native_ptr));"
    res = generate_newline(res)
    res += f"{INDENT}"+"}"
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
        res += f"{INDENT*2}return _interface->packed_int32_array_operator_index(godot_owner, index)[0];"
        res += INDENT+"}"
    elif class_["name"] == "PackedInt64Array":
        res += f"{INDENT}int64_t& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _interface->packed_int64_array_operator_index(godot_owner, index)[0];"
        res += INDENT + "}"
    elif class_["name"] == "PackedFloat32Array":
        res += f"{INDENT}float& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _interface->packed_float32_array_operator_index(godot_owner, index)[0];"
        res += INDENT+"}"
    elif class_["name"] == "PackedFloat64Array":
        res += f"{INDENT}double& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _interface->packed_float64_array_operator_index(godot_owner, index)[0];"
        res += INDENT + "}"
    elif class_["name"] == "PackedBoolArray":
        res += f"{INDENT}bool& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _interface->packed_bool_array_operator_index(godot_owner, index)[0];"
        res += INDENT + "}"
    elif class_["name"] == "PackedByteArray":
        res += f"{INDENT}byte& {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return _interface->packed_byte_array_operator_index(godot_owner, index)[0];"
        res += INDENT+"}"

    elif class_["name"] == "PackedColorArray":
        res += f"{INDENT}Color {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return Color::new_static(_interface->packed_color_array_operator_index(godot_owner, index));"
        res += INDENT + "}"
    elif class_["name"] == "PackedVector3Array":
        res += f"{INDENT}Vector3 {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return Vector3::new_static(_interface->packed_vector3_array_operator_index(godot_owner, index));"
        res += INDENT + "}"
    elif class_["name"] == "PackedVector2Array":
        res += f"{INDENT}Vector2 {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return Vector2::new_static(_interface->packed_vector2_array_operator_index(godot_owner, index));"
        res += INDENT + "}"
    elif class_["name"] == "PackedStringArray":
        res += f"{INDENT}String {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return String::new_static(_interface->packed_string_array_operator_index(godot_owner, index));;"
        res += INDENT + "}"
    elif class_["name"] == "Array":
        res += f"{INDENT}Variant {class_['name']}::operator[](int index)" + "{"
        res = generate_newline(res)
        res += f"{INDENT * 2}return Variant::new_static(_interface->array_operator_index(godot_owner, index));"
        res += INDENT + "}"
    return res

def generate_special_methods_array(class_):
    res = ""
    res += generate_array_set_item(class_)
    return res
def generate_special_methods(class_):
    res = ""
    if class_["name"] == "Dictionary":
        res += generate_special_methods_dictionary()
    
    if "array" in class_["name"].lower():
        res += generate_special_methods_array(class_)

    return res

def generate_operators_set(class_):
    for operator in class_["operators"]:
        print(operator)
        if not class_["name"] in operator_dict.keys():
            operator_dict[class_["name"]] = dict()
        if not operator["name"] in operator_dict[class_["name"]]:
            operator_dict[class_["name"]][operator["name"]] = Operator(class_["name"], operator["name"], operator["return_type"])
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
            enums.append( f"{enumize_name(enum_def['name'])}")
        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        collect_members(obj)
        for class_ in obj["builtin_classes"]:
            generate_operators_set(class_)
        for class_ in obj["classes"]:
            if(not os.path.exists(f"py4godot/cppclasses/{class_['name']}/")):
                os.mkdir(f"py4godot/cppclasses/{class_['name']}/")
            generate_classes([class_], f"py4godot/cppclasses/{class_['name']}/{class_['name']}.cpp")

        generate_classes(obj["builtin_classes"], f"py4godot/cppclasses/generated4_core.cpp", is_core=True)

