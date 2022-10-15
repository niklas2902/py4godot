import json

IGNORED_CLASSES = ("Nil", "bool", "float", "int")
INDENT = " "


def generate_import():
    return "from py4godot.utils.Wrapper4 cimport *"


def generate_newline(str_):
    return str_ + "\n"


def generate_pxd_class(pxd_class):
    result = ""

    result += f"cdef class {pxd_class['name']}(Wrapper4):"
    result = generate_newline(result)
    result += f"{INDENT}pass"
    result = generate_newline(result)
    return result


if __name__ == "__main__":
    res = generate_import()
    res = generate_newline(res)
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        for class_ in obj["classes"] + obj["builtin_classes"]:
            if class_["name"] in IGNORED_CLASSES:
                continue

            res += generate_pxd_class(class_)

        with open("py4godot/classes/generated4.pxd", "w") as f:
            f.write(res)
