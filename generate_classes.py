import json

INDENT = "  "


class ReturnType:
    def __init__(self, name, type_):
        self.type = type_
        self.name = name
        self.is_primitive = False


IGNORED_CLASSES = ("Nil", "bool", "float", "int")


def generate_import():
    result = \
        """from py4godot.utils.Wrapper4 cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.core.variant4.Variant4 cimport *
from libcpp cimport bool
"""
    return result


def generate_newline(str_):
    return str_ + "\n"


def generate_return_value(method_):
    result = ""
    if "return_value" in method_.keys():
        ret_val = ReturnType("ret", method_['return_value']['type'])
        result += f"{INDENT * 2}cdef {unenumize_type(ret_val.type)} {ret_val.name}"
    else:
        result += f"{INDENT * 2}cdef GDNativeTypePtr ret = NULL"
    return result


def is_primitive(type_):
    return type_ in obj["classes"]


def generate_return_statement():
    # TODO handle primitive types
    return f"return ret"


def generate_error():
    return f"{INDENT * 2}cdef GDNativeCallError error"


def generate_method_bind_name(class_name, method_name):
    return f"method_bind__{class_name}_{method_name}"


def generate_method_binds(current_class):
    res = ""
    if not "methods" in current_class.keys():
        return ""
    for mMethod in current_class["methods"]:
        if ("is_virtual" in mMethod.keys() and mMethod["is_virtual"]):
            continue
        res += f"""cdef GDNativeMethodBindPtr {generate_method_bind_name(current_class['name'], mMethod['name'])} = """ + \
               f"""gdnative_interface.classdb_get_method_bind("{current_class['name']}",""" + \
               f""""{mMethod['name']}", {mMethod['hash']})"""
        res = generate_newline(res)
    return res


def generate_method(class_, mMethod):
    res = ""
    args = generate_args(mMethod)
    def_function = f"{INDENT}def {mMethod['name']}({args}):"
    res += def_function
    res = generate_newline(res)
    res += generate_method_body(class_, mMethod)
    res = generate_newline(res)
    return res


def generate_ret_value_assign(argument):
    print(argument)
    if argument["type"] in classes:
        return f"{pythonize_name(argument['name'])}.get_godot_owner()"
    elif argument["type"] == "Variant":
        return f"{pythonize_name(argument['name'])}.get_native_ptr()"
    return f"&{pythonize_name(argument['name'])}"


def generate_args_array(method):
    if 'arguments' not in method.keys():
        return f"{INDENT * 2}cdef GDNativeVariantPtr args[0]"
    result = f"{INDENT * 2}cdef void* args[{len(method['arguments'])}]"
    result = generate_newline(result)
    for i in range(0, len(method['arguments'])):
        result += f"{INDENT * 2}args[{i}] = {generate_ret_value_assign(method['arguments'][i])}"
        result = generate_newline(result)
    return result


def generate_method_body(class_, method):
    number_arguments = 0
    result = ""
    if 'arguments' in method.keys():
        number_arguments = len(method['arguments'])

    result += generate_args_array(method)
    result = generate_newline(result)
    result += generate_return_value(method)
    result = generate_newline(result)

    result += generate_error()
    result = generate_newline(result)
    result += f"{INDENT * 2}gdnative_interface.object_method_bind_call({generate_method_bind_name(class_['name'], method['name'])}," \
              f" self.godot_owner, args, {number_arguments}, {address_ret(method)}, &error)"

    if ("return_value" in method.keys() and is_primitive(method['return_value']['type'])):
        result += generate_return_statement()
    return result


def address_ret(method):
    if "return_value" in method.keys():
        return "&ret"
    return "NULL"


def generate_common_methods(class_):
    result = f"{INDENT}def new(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}pass"
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



def pythonize_name(name):
    if name in ("from", "len", "in", "for", "with"):
        return name + "_"
    return name


def generate_args(method_with_args):
    result = "self, "
    if "arguments" not in method_with_args:
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if not arg["type"].startswith("enum::"):
            result += f"{arg['type']} {pythonize_name(arg['name'])}, "
        else:
            #enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{unenumize_type(arg_type)} {pythonize_name(arg['name'])}, "
    result = result[:-2]
    return result

def unenumize_type(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    if len(type_list) > 1:
        return type_list[0]+ "__" + type_list[1]
    return type_list[0]


classes = set()

if __name__ == "__main__":
    res = generate_import()
    res = generate_newline(res)
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        for class_ in obj["classes"] + obj["builtin_classes"]:
            if (class_["name"] in IGNORED_CLASSES):
                continue
            if not class_["name"] in ("String", "Vector3", "Vector4", "Quat", "Transform", "Transform2D", "AESContext"):
                continue
            res += generate_method_binds(class_)
            res += generate_enums(class_)
            res = generate_newline(res)
            res += f"cdef class {class_['name']}(Wrapper4):"
            res = generate_newline(res)
            res += generate_common_methods(class_)
            res = generate_newline(res)
            if "methods" not in class_.keys():
                continue
            for method in class_["methods"]:
                if ("is_virtual" in method.keys() and method["is_virtual"]):
                    continue
                res += generate_method(class_, method)
                res = generate_newline(res)

        print(res)
        with open("py4godot/classes/generated4.pyx", "w") as f:
            f.write(res)
