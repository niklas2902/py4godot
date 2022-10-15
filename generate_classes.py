import json

INDENT = "  "

class ReturnType():
    def __init__(self, name, type):
        self.type = type
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

def generate_return_value(method):
    result = ""
    if "return_value" in method.keys():
        ret_val = ReturnType("ret",method['return_value']['type'])
        result += f"{INDENT*2}cdef {ret_val.type} {ret_val.name}"
    else:
        result+= f"{INDENT*2}cdef GDNativeTypePtr ret = NULL"
    return result

def is_primitive(type):
    return type in obj["classes"]

def generate_return_statement(method):
    #TODO handle primitive types
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
        if("is_virtual" in mMethod.keys() and mMethod["is_virtual"]):
            continue
        res += f"""cdef GDNativeMethodBindPtr {generate_method_bind_name(current_class['name'], mMethod['name'])} = """ + \
               f"""gdnative_interface.classdb_get_method_bind("{current_class['name']}","""+\
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
        #TODO: rework
        #result += f"{INDENT * 2}args[{i}] = NULL"
        #TODO: enable again
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

    if("return_value" in method.keys() and is_primitive(method['return_value']['type'])):
        result += generate_return_statement(method)
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

def pythonize_name(name):
    if name in ("from", "len", "in", "for"):
        return name +"_"
    return name


def generate_args(method_with_args):
    result = "self, "
    if "arguments" not in method_with_args:
        return result[:-2]

    for arg in method_with_args["arguments"]:
        result += f"{arg['type']} {pythonize_name(arg['name'])}, "
    result = result[:-2]
    return result

classes = set()

if __name__ == "__main__":
    res = generate_import()
    res = generate_newline(res)
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        print(obj["native_structures"])
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in obj['classes'] + obj["builtin_classes"]])
        for class_ in obj["classes"] + obj["builtin_classes"]:
            if(class_["name"] in IGNORED_CLASSES):
                continue
            if not class_["name"] == "String":
                continue
            res += generate_method_binds(class_)
            res += f"cdef class {class_['name']}(Wrapper4):"
            res = generate_newline(res)
            res += generate_common_methods(class_)
            res = generate_newline(res)
            if "methods" not in class_.keys():
                continue
            for method in class_["methods"]:
                if("is_virtual" in method.keys() and method["is_virtual"]):
                    continue
                res += generate_method(class_, method)
                res = generate_newline(res)

        print(res)
        with open("py4godot/classes/generated4.pyx", "w") as f:
            f.write(res)
