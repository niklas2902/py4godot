import json
import os.path

INDENT = "  "


class ReturnType:
    def __init__(self, name, type_):
        self.type = type_
        self.name = name
        self.is_primitive = False


IGNORED_CLASSES = {"Nil", "bool", "float", "int"}

ACCEPTED_CLASSES = {"Object", "String"}

native_structs = {}
forbidden_types = {"cont void*", "void*"}
normal_classes = set()
singletons = set()
builtin_classes = set()

def generate_import():
    result = \
        """from py4godot.utils.Wrapper4 cimport *
from py4godot.utils.VariantTypeWrapper4 cimport *
from py4godot.utils.utils cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from libc.stdlib cimport malloc, free

def print_error(*objects, sep=' ', end=''):
    cdef str string = ""
    for object in objects:
        string += str(object) + sep
    string.rstrip(sep)
    string += end
    b_str = string.encode('utf-8')
    cdef char* c_str = b_str
    gdnative_interface.print_error(c_str, "test", "test",1, 1);

"""
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
    res = f"{INDENT*2}cdef GDExtensionTypePtr _args[{num_of_constructor_args}]"
    res = generate_newline(res)
    if "arguments" not in constructor.keys():
        return res
    index = 0
    for arg in constructor["arguments"]:
        res += f"{INDENT * 2}_args[{index}] = {generate_ret_value_assign(arg)}"
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
    if class_["name"] in builtin_classes:
        return f"GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_{convert_camel_case_to_underscore(class_['name']).upper()}"
    else:
        return f"GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL"
def generate_constructors(class_):
    res = ""
    if "constructors" not in class_.keys():
        return res
    for constructor in class_["constructors"]:
        res += f"{INDENT}@staticmethod"
        res = generate_newline(res)
        if constructor["index"] == 0 and class_["name"] == "String":
            #TODO: Remove this behavior. Same problem as VariantTypeWrapper. I don't really understand why you need *args against assertions
            res += f"{INDENT}def new{constructor['index']}(*args):"
        else:
            res += f"{INDENT}def new{constructor['index']}({generate_constructor_args(constructor)}):"
        res = generate_newline(res)
        res += f"{INDENT*2}cdef {class_['name']} _class = {class_['name']}()"
        res = generate_newline(res)
        res += f"{INDENT*2}_class.set_variant_type({generate_variant_type(class_)})"
        res = generate_newline(res)
        res += f"{INDENT*2}cdef GDExtensionPtrConstructor constructor = _interface.variant_get_ptr_constructor(_class.variant_type, {constructor['index']})"
        res = generate_newline(res)
        #TODO:improve - fill with args
        res += generate_constructor_args_array(constructor)
        res = generate_newline(res)
        res += f"{INDENT*2}constructor(_class.godot_owner,_args)"
        res = generate_newline(res)
        res += f"{INDENT*2}return _class"
        res = generate_newline(res)
        res = generate_newline(res)
    return res

def generate_class_imports(classes):
    result = "from py4godot.classes.generated4_core cimport *"
    result = generate_newline(result)
    for class_ in classes:
        result += f"from py4godot.classes.{class_}.{class_} cimport *"
        result = generate_newline(result)
    return result


def generate_header_statements():
    res = "cdef GDExtensionInterface* gdnative_interface = get_interface()"
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
            if ret_val.type in builtin_classes and ret_val.type != "NodePath": #TODO check why NodePath behaves differently
                result += f"{INDENT * 2}cdef {ret_val.type} {ret_val.name} = {ret_val.type}.new_native_ptr(create_native_ptr(gdnative_interface))"
            else:
                result += f"{INDENT * 2}cdef {ret_val.type} {ret_val.name} = {ret_val.type}()"
        elif ret_val.type == "Variant":
            result += f"{INDENT * 2}cdef {ret_val.type} {ret_val.name} = {ret_val.type}()"
        elif "typedarray" in ret_val.type:
            result += f"{INDENT * 2}cdef Array _ret = Array()"
        else:
            result += f"{INDENT * 2}cdef {unbitfield_type(unenumize_type(ret_val.type))} {ret_val.name}"
    else:
        result += f"{INDENT * 2}cdef GDExtensionTypePtr _ret"
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
    if ret_val.type in classes and ret_val.type in builtin_classes:
        result += f"{INDENT*2}_ret.godot_owner = &_ret.native_ptr"
        result = generate_newline(result)
    result += f"{INDENT*2}return _ret"
    return result

def generate_singleton_constructor(classname):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def get_instance():"
    res = generate_newline(res)

    res += f"{INDENT*2}cdef String class_name_string = String.new0()"
    res = generate_newline(res)
    res += f"{INDENT*2}_interface.string_new_with_utf8_chars(class_name_string.godot_owner, \"{classname}\")"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef StringName class_name = StringName.new2(class_name_string)"
    res = generate_newline(res)
    res = generate_newline(res)

    res += f"{INDENT*2}cdef {classname} singleton = {classname}()"
    res = generate_newline(res)
    res += f"{INDENT*2}cdef GodotObject object = gdnative_interface.global_get_singleton(class_name.godot_owner)"
    res = generate_newline(res)
    res += f"{INDENT*2}singleton.set_godot_owner(object)"
    res = generate_newline(res)
    res += f"{INDENT*2}return singleton"
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
    res += f"{INDENT * 2}cdef String _class_name_string = String.new0()"
    res = generate_newline(res)
    res += f"{INDENT * 2}_interface.string_new_with_utf8_chars(_class_name_string.godot_owner, \"{current_class['name']}\")"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef StringName _class_name = StringName.new2(_class_name_string)"
    res = generate_newline(res)
    res = generate_newline(res)

    res += f"{INDENT * 2}cdef String _method_name_string = String.new0()"
    res = generate_newline(res)
    res += f"{INDENT * 2}_interface.string_new_with_utf8_chars(_method_name_string.godot_owner, \"{method['name']}\")"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef StringName _method_name = StringName.new2(_method_name_string)"
    res = generate_newline(res)
    res = generate_newline(res)

    res = generate_newline(res)
    if current_class['name'] in builtin_classes:
        res += f"""{INDENT * 2}cdef GDExtensionPtrBuiltInMethod method_to_call = """ + \
               f"""gdnative_interface.variant_get_ptr_builtin_method(GDExtensionVariantType.{get_variant_type(current_class['name'])}, """ + \
               f"""_method_name.godot_owner, {method['hash']})"""
    else:
        res += f"""{INDENT*2}cdef GDExtensionMethodBindPtr method_bind = """ + \
               f"""gdnative_interface.classdb_get_method_bind(_class_name.godot_owner,""" + \
               f"""_method_name.godot_owner, {method['hash']})"""

    res = generate_newline(res)
    return res


def generate_virtual_return_type(return_type):
    if return_type == "bool":
        return "False"
    elif return_type == "int":
        return "0"
    elif return_type == "String":
        return "String()"

    return return_type+"()"
def generate_method_body_virtual(class_, mMethod):
    res = ""
    if "return_type" in mMethod.keys():
        res += f"{INDENT*2}return {generate_virtual_return_type(mMethod['return_type'])}"
    else:
        res += f"{INDENT*2}pass"
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
    return ""

def generate_method(class_, mMethod):
    res = ""
    args = generate_args(mMethod)
    def_function = f"{INDENT}def {pythonize_name(mMethod['name'])}({args}):"
    res += generate_method_headers(mMethod)
    res += def_function
    res = generate_newline(res)
    if("hash" in mMethod.keys()):
        res += generate_method_body_standard(class_, mMethod)
    else:
        res += generate_method_body_virtual(class_, mMethod)
    res = generate_newline(res)
    return res


def generate_ret_value_assign(argument):
    if argument["type"] in classes:
        return f"{pythonize_name(argument['name'])}.get_godot_owner()"
    elif argument["type"] == "Variant":
        return f"{pythonize_name(argument['name'])}.get_native_ptr()"
    elif "typedarray" in argument["type"]:
        return f"{pythonize_name(argument['name'])}.get_godot_owner()"
    return f"&{pythonize_name(argument['name'])}"


def generate_args_array(method):
    if 'arguments' not in method.keys():
        return f"{INDENT * 2}cdef GDExtensionVariantPtr _args[1]"
    result = f"{INDENT * 2}cdef GDExtensionTypePtr _args[{len(method['arguments'])}]"
    result = generate_newline(result)
    for i in range(0, len(method['arguments'])):
        result += f"{INDENT * 2}_args[{i}] = {generate_ret_value_assign(method['arguments'][i])}"
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
    return "self.godot_owner"
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
        result += f"{INDENT * 2}method_to_call({get_godot_owner(method)}, {get_first_args_native(method)}, {address_ret(method)}, {get_args_count(method)})"
    else:
        result += f"{INDENT * 2}gdnative_interface.object_method_bind_ptrcall(method_bind," \
                  f" {get_godot_owner(method)}, _args, {address_ret(method)})"

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

        if return_type in {"int", "float","bool"}:
            return "&_ret"
        if return_type in builtin_classes:
            return "&(_ret.native_ptr)"
        if return_type in classes:
            return "&(_ret.godot_owner)"
        if return_type == "Variant":
            return "&(_ret.native_ptr)"
        if "typedarray" in return_type:
            return "&(_ret.godot_owner)"
        return "&_ret"
    return "&_ret"

def generate_operators(class_):
    if class_["name"] == "Dictionary":
        print(class_["name"])
        if("operators" in class_.keys()):
            for operator in class_["operators"]:
                print(operator)
    return ""


def generate_common_methods(class_):
    result = generate_constructor(class_["name"])
    result = generate_newline(result)
    result += generate_new_static(class_)
    result = generate_newline(result)
    result += generate_new_native_ptr(class_)
    result = generate_newline(result)
    result += generate_from_variant(class_)
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
            result += generate_property(property)
    return result

def simplify_type(type):
    list_types = type.split(",")
    return list_types[-1]
def generate_property(property):
    result = ""
    result += f"{INDENT}@property"
    result = generate_newline(result)
    result += f"{INDENT}def {pythonize_name(property['name'])}(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}return self. {pythonize_name(property['getter'])}()"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        result += f"{INDENT}@{pythonize_name(property['name'])}.setter"
        result = generate_newline(result)
        result += f"{INDENT}def {pythonize_name(property['name'])}(self, {untypearray(simplify_type(property['type']))} value):"
        result = generate_newline(result)
        result += f"{INDENT * 2}self.{pythonize_name(property['setter'])}(value)"
        result = generate_newline(result)
        result = generate_newline(result)

    return result


def pythonize_name(name):
    if name in ("from", "len", "in", "for", "with", "class", "pass", "raise", "global"):
        return name + "_"
    return name

def unbitfield_type(arg_type):
    if arg_type.startswith("bitfield::"):
        return "int"
    return arg_type

def generate_args(method_with_args):
    result = "self, "
    if(is_static(method_with_args)):
        result = ""
    if "arguments" not in method_with_args:
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if not arg["type"].startswith("enum::"):
            result += f"{untypearray(unbitfield_type(arg['type']))} {pythonize_name(arg['name'])}, "
        else:
            #enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{untypearray(unenumize_type(arg_type))} {pythonize_name(arg['name'])}, "
    result = result[:-2]
    return result

def unenumize_type(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    if len(type_list) > 1:
        return type_list[0]+ "__" + type_list[1]
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
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def constructor():"
    res = generate_newline(res)
    res += f"{INDENT*2}cdef {classname} class_ = {classname}()"
    res = generate_newline(res)
    res += f"{INDENT*2}cdef StringName class_name =  c_string_to_string_name(\"{classname}\")"
    res = generate_newline(res)

    res += f"{INDENT*2}class_.set_godot_owner(gdnative_interface.classdb_construct_object(class_name.godot_owner))"
    res = generate_newline(res)
    res += f"{INDENT*2}gdnative_interface.object_set_instance(class_.get_godot_owner(),class_name.godot_owner , <void*>class_)"
    res = generate_newline(res)
    res += f"{INDENT*2}return class_"
    res = generate_newline(res)
    return res

def generate_new_static(class_):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}cdef {class_['name']} new_static(GDExtensionTypePtr owner):"
    else:
        res += f"{INDENT}cdef {class_['name']} new_static(GodotObject owner):"

    res = generate_newline(res)
    res += f"{INDENT*2}cdef {class_['name']} obj = {class_['name']}()"
    res = generate_newline(res)
    res += f"{INDENT * 2}obj.godot_owner = owner"
    res = generate_newline(res)
    res += f"{INDENT * 2}return obj"

    return res

def generate_from_variant(class_):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}cdef {class_['name']} from_variant(GDExtensionVariantPtr variant_ptr, GDExtensionTypeFromVariantConstructorFunc constructor):"
    else:
        return ""

    res = generate_newline(res)
    res += f"{INDENT*2}cdef {class_['name']} obj = {class_['name']}()"
    res = generate_newline(res)
    res += f"{INDENT*2}obj.native_ptr = malloc(sizeof(uint8_t)*8)"
    res = generate_newline(res)
    res += f"{INDENT*2}exec_constructor(gdnative_interface, variant_ptr,&obj.native_ptr,constructor)"
    res = generate_newline(res)
    res += f"{INDENT*2}obj.godot_owner = &obj.native_ptr"
    res = generate_newline(res)
    res += f"{INDENT*2}return obj"
    res = generate_newline(res)

    return res


def generate_new_native_ptr(class_):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}cdef {class_['name']} new_native_ptr(void* ptr):"
    else:
        return ""

    res = generate_newline(res)
    res += f"{INDENT*2}cdef {class_['name']} obj = {class_['name']}()"
    res = generate_newline(res)
    res += f"{INDENT * 2}obj.native_ptr = ptr"
    res = generate_newline(res)
    res += f"{INDENT * 2}return obj"

    return res


def generate_init(class_):
    res = ""
    res += f"{INDENT}def __init__(self, *args):"
    res = generate_newline(res)
    res += f"{INDENT*2}self.godot_owner = &self.opaque"
    res = generate_newline(res)
    return res


def generate_classes(classes, filename, is_core=False):
    res = generate_import()
    res = generate_newline(res)
    if not is_core:
        res += generate_class_imports(get_classes_to_import(classes))
        res = generate_newline(res)
    else:
        res += "from py4godot.classes.Object.Object cimport *"
        res = generate_newline(res)
    res += generate_header_statements()
    for class_ in classes:
        if (class_["name"] in IGNORED_CLASSES):
            continue
        res = generate_newline(res)
        res += f"cdef class {class_['name']}({get_base_class(class_)}):"
        res = generate_newline(res)
        if(is_core):
            res = generate_newline(res)
            res += generate_init(class_)
        res += generate_common_methods(class_)
        res += generate_special_methods(class_)
        res = generate_newline(res)
        res += generate_construction(class_)
        res = generate_newline(res)
        if "methods" not in class_.keys():
            continue
        res += generate_properties(class_)
        for method in class_["methods"]:
            if native_structs_in_method(method):
                # TODO: Check if this makes sense
                continue
            res += generate_method(class_, method)
            res = generate_newline(res)

    if(os.path.exists(filename)):
        with open(filename, "r") as already_existing_file:
            if already_existing_file.read() == res:
                return
    with open(filename, "w") as f:
        f.write(res)


def generate_dictionary_set_item():
    res = ""
    res += f"{INDENT}def __setitem__(self, value, key):"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef Variant var_key = Variant(key)"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef Variant var_value = Variant.new_static(gdnative_interface.dictionary_operator_index(self.godot_owner, var_key.native_ptr))"
    res = generate_newline(res)
    res += f"{INDENT * 2}var_value.init_type(value)"
    return res


def generate_dictionary_get_item():
    res = ""
    res += f"{INDENT}def __getitem__(self,  key):"
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef Variant var_key = Variant(key)"
    res = generate_newline(res)
    res += f"{INDENT * 2}if not self.has(var_key):"
    res = generate_newline(res)
    res += f"{INDENT * 3}raise KeyError(f\"Key '%s' not found\")".replace("%s", "{key}")
    res = generate_newline(res)
    res += f"{INDENT * 2}cdef Variant var_value = Variant.new_static(gdnative_interface.dictionary_operator_index(self.godot_owner, var_key.native_ptr))"
    res = generate_newline(res)
    res += f"{INDENT * 2}return var_value.get_converted_value()"
    return res


def generate_special_methods_dictionary():
    res = ""
    res += generate_dictionary_set_item()
    res = generate_newline(res)
    res += generate_dictionary_get_item()
    return res


def generate_array_set_item(class_):
    res = ""
    res += f"{INDENT}def __setitem__(self, value,  index):"
    res = generate_newline(res)
    if class_["name"] == "PackedInt32Array":
        res += f"{INDENT*2}gdnative_interface.packed_int32_array_operator_index(self.godot_owner, index)[0] = value"
    elif class_["name"] == "PackedInt64Array":
        res += f"{INDENT * 2}gdnative_interface.packed_int64_array_operator_index(self.godot_owner, index)[0] = value"
    elif class_["name"] == "PackedFloat32Array":
        res += f"{INDENT*2}gdnative_interface.packed_float32_array_operator_index(self.godot_owner, index)[0] = value"
    elif class_["name"] == "PackedFloat64Array":
        res += f"{INDENT * 2}gdnative_interface.packed_float64_array_operator_index(self.godot_owner, index)[0] = value"
    elif class_["name"] == "PackedBoolArray":
        res += f"{INDENT * 2}gdnative_interface.packed_bool_array_operator_index(self.godot_owner, index)[0] = value"
    elif class_["name"] == "PackedByteArray":
        res += f"{INDENT * 2}gdnative_interface.packed_byte_array_operator_index(self.godot_owner, index)[0] = value"

    elif class_["name"] == "PackedColorArray":
        res += f"{INDENT * 2}Color.new_static(gdnative_interface.packed_color_array_operator_index(self.godot_owner, index)).copy_from(value)"
    elif class_["name"] == "PackedVector3Array":
        res += f"{INDENT * 2}Vector3.new_static(gdnative_interface.packed_vector3_array_operator_index(self.godot_owner, index)).copy_from(value)"
    elif class_["name"] == "PackedVector2Array":
        res += f"{INDENT * 2}Vector2.new_static(gdnative_interface.packed_vector2_array_operator_index(self.godot_owner, index)).copy_from(value)"
    elif class_["name"] == "PackedStringArray":
        res += f"{INDENT * 2}String.new_static(gdnative_interface.packed_string_array_operator_index(self.godot_owner, index)).copy_from(value)"

    elif class_["name"] == "Array":
        res += f"{INDENT * 2}Variant.new_static(gdnative_interface.array_operator_index(self.godot_owner, index)).init_value(value)"


    res = generate_newline(res)
    res += f"{INDENT * 2}pass"
    return res

def generate_array_get_item(class_):
    res = ""
    res += f"{INDENT}def __getitem__(self,  index):"
    res = generate_newline(res)
    if class_["name"] == "PackedInt32Array":
        res += f"{INDENT*2}return gdnative_interface.packed_int32_array_operator_index(self.godot_owner, index)[0]"
    elif class_["name"] == "PackedInt64Array":
        res += f"{INDENT * 2}return gdnative_interface.packed_int64_array_operator_index(self.godot_owner, index)[0]"
    elif class_["name"] == "PackedFloat32Array":
        res += f"{INDENT*2}return gdnative_interface.packed_float32_array_operator_index(self.godot_owner, index)[0]"
    elif class_["name"] == "PackedFloat64Array":
        res += f"{INDENT * 2}return gdnative_interface.packed_float64_array_operator_index(self.godot_owner, index)[0]"
    elif class_["name"] == "PackedBoolArray":
        res += f"{INDENT * 2}return gdnative_interface.packed_bool_array_operator_index(self.godot_owner, index)[0]"
    elif class_["name"] == "PackedByteArray":
        res += f"{INDENT * 2}return gdnative_interface.packed_byte_array_operator_index(self.godot_owner, index)[0]"

    elif class_["name"] == "PackedColorArray":
        res += f"{INDENT * 2}Color.new_static(gdnative_interface.packed_color_array_operator_index(self.godot_owner, index))"
    elif class_["name"] == "PackedVector3Array":
        res += f"{INDENT * 2}return Vector3.new_static(gdnative_interface.packed_vector3_array_operator_index(self.godot_owner, index))"
    elif class_["name"] == "PackedVector2Array":
        res += f"{INDENT * 2}return Vector2.new_static(gdnative_interface.packed_vector2_array_operator_index(self.godot_owner, index))"
    elif class_["name"] == "PackedStringArray":
        res += f"{INDENT * 2}return String.new_static(gdnative_interface.packed_string_array_operator_index(self.godot_owner, index))"

    elif class_["name"] == "Array":
        res += f"{INDENT * 2}return Variant.new_static(gdnative_interface.array_operator_index(self.godot_owner, index)).get_converted_value()"


    res = generate_newline(res)
    res += f"{INDENT * 2}pass"
    return res

def generate_special_methods_array(class_):
    res = ""
    res += generate_array_set_item(class_)
    res = generate_newline(res)
    res += generate_array_get_item(class_)
    return res

def generate_copy_methods(class_name):
    res = ""
    res += f"{INDENT}def copy_from_other(self, {class_name} from_):"
    res = generate_newline(res)
    res += f"{INDENT*2}cdef GDExtensionPtrConstructor constructor = _interface.variant_get_ptr_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_{class_name.upper()}, 1)"
    res = generate_newline(res)
    res += f"{INDENT*2}cdef GDExtensionTypePtr _args[1]"
    res = generate_newline(res)
    res += f"{INDENT*2}_args[0] = from_.get_godot_owner()"
    res = generate_newline(res)
    res += f"{INDENT * 2}constructor(self.godot_owner, _args)"
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

    return res


classes = set()

if __name__ == "__main__":
    with open('py4godot/gdextension-api/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        for class_ in obj["classes"]:
            if(not os.path.exists(f"py4godot/classes/{class_['name']}/")):
                os.mkdir(f"py4godot/classes/{class_['name']}/")
            with open (f"py4godot/classes/{class_['name']}/__init__.py", "w"):
                pass
            generate_classes([class_], f"py4godot/classes/{class_['name']}/{class_['name']}.pyx")

        generate_classes(obj["builtin_classes"], f"py4godot/classes/generated4_core.pyx", is_core=True)

