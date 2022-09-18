import json

INDENT = "  "

def generate_newline(str_):
    return str_ +"\n"
def generate_method(method):
    args = generate_args(method)
    def_function = f"{INDENT}def {method['name']}({args}):"
    print(def_function)
    print(generate_method_body(method))

def generate_method_body(method):
    result = f"{INDENT*2}pass"
    return result

def generate_common_methods(class_):
    result = f"{INDENT}def new(self):"
    result = generate_newline(result)
    result += f"{INDENT*2}pass"
    return result

def generate_args(method):
    result = "self, "
    if "arguments" not in method:
        return result[:-2]

    for arg in method["arguments"]:
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
            print(f"class {class_['name']}:")
            print(generate_common_methods(class_))
            for method in class_["methods"]:
                generate_method(method)
