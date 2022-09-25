import json

INDENT = "  "

class ReturnType():
    def __init__(self, name, type):
        self.type = type
        self.name = name
        self.is_primitive = False
def generate_import():
    result = \
    """from py4godot.utils.Wrapper4 cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *"""
    return result


def generate_newline(str_):
    return str_ + "\n"

def generate_return_value(method):
    result = ""
    if "return_value" in method.keys():
        ret_val = ReturnType("ret",method['return_value']['type'])
        result += f"{INDENT*2}cdef {ret_val.type} {ret_val.name}"
    else:
        result+= f"{INDENT*2}cdef void* ret = NULL"
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
    if not "methods" in current_class.keys():
        return ""
    for mMethod in current_class["methods"]:
        if(mMethod["is_virtual"]):
            continue
        print(f"""cdef GDNativeMethodBindPtr {generate_method_bind_name(current_class['name'], mMethod['name'])} = """ +
              f"""gdnative_interface.classdb_get_method_bind("{current_class['name']}","""
              f""""{mMethod['name']}", {mMethod['hash']})""")


def generate_method(class_, mMethod):
    args = generate_args(mMethod)
    def_function = f"{INDENT}def {mMethod['name']}({args}):"
    print(def_function)
    print(generate_method_body(class_, mMethod))


def generate_args_array(method):
    result = f"{INDENT * 2}cdef GDNativeVariantPtr[] args"
    result = generate_newline(result)
    if 'arguments' not in method.keys():
        return result
    for i in range(0, len(method['arguments'])):
        result += f"{INDENT * 2}args[{i}] = {method['arguments'][i]['name']}"
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
              f" self.godot_owner, args, {number_arguments}, &ret, &error)"

    if("return_value" in method.keys() and is_primitive(method['return_value']['type'])):
        result += generate_return_statement(method)
    return result


def generate_common_methods(class_):
    result = f"{INDENT}def new(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}pass"
    return result


def generate_args(method_with_args):
    result = "self, "
    if "arguments" not in method_with_args:
        return result[:-2]

    for arg in method_with_args["arguments"]:
        result += f"{arg['type']} {arg['name']}, "
    result = result[:-2]
    return result

classes = set()

if __name__ == "__main__":
    print(generate_import())
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] for class_ in obj['classes']])
        print("classes:",classes)
        for class_ in obj["classes"]:
            #if class_["name"] != "Object":
            #    continue
            generate_method_binds(class_)
            print(f"class {class_['name']}(Wrapper4):")
            print(generate_common_methods(class_))
            if "methods" not in class_.keys():
                continue
            for method in class_["methods"]:
                if(method["is_virtual"]):
                    continue
                generate_method(class_, method)
