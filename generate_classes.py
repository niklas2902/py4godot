import json

INDENT = "  "


def generate_newline(str_):
    return str_ + "\n"


def generate_method_bind_name(class_name, method_name):
    return f"method_bind__{class_name}_{method_name}"


def generate_method_binds(current_class):
    for mMethod in current_class["methods"]:
        print(f"""cdef GDNativeMethodBindPtr {generate_method_bind_name(current_class['name'], mMethod['name'])} = """ +
              f"""gdnative_interface.classdb_get_method_bind("{current_class['name']}","""
              f""""{mMethod['name']}", {mMethod['hash']})""")


def generate_method(class_, mMethod):
    args = generate_args(mMethod)
    def_function = f"{INDENT}def {mMethod['name']}({args}):"
    print(def_function)
    print(generate_method_body(class_, mMethod))


def generate_method_body(class_,method):
    number_arguments = 0
    if 'arguments' in method.keys():
        number_arguments = len(method['arguments'])
    result = f"{INDENT * 2}gdnative_interface.object_method_bind_call({generate_method_bind_name(class_['name'], method['name'])}," \
             f" GDNativeObjectPtr p_instance, const GDNativeVariantPtr *p_args, {number_arguments}, GDNativeVariantPtr r_ret, GDNativeCallError *r_error)"
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


if __name__ == "__main__":

    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        for class_ in obj["classes"]:
            if class_["name"] != "Object":
                continue
            generate_method_binds(class_)
            print(f"class {class_['name']}:")
            print(generate_common_methods(class_))
            for method in class_["methods"]:
                generate_method(class_, method)
