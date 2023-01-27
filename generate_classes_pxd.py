import json

IGNORED_CLASSES = ("Nil", "bool", "float", "int")
INDENT = " "
builtin_classes = set()


def generate_import(class_to_import = None):
    res = "from py4godot.utils.Wrapper4 cimport *"
    res = generate_newline(res)
    res += "from py4godot.utils.VariantTypeWrapper4 cimport *"
    res = generate_newline(res)
    if class_to_import:
        if class_to_import != "Wrapper4":
            res += f"from py4godot.classes.{class_to_import}.{class_to_import} cimport *"
        else:
            res += f"from py4godot.utils.Wrapper4 cimport *"
    else:
        res += f"from py4godot.utils.Wrapper4 cimport *"
    return res

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

def generate_newline(str_):
    return str_ + "\n"

def get_base_class(class_):
    if "inherits" in class_.keys():
        return class_["inherits"]
    if class_["name"] in builtin_classes:
        return "VariantTypeWrapper4"
    return "Wrapper4"
def generate_pxd_class(pxd_class):
    result = ""
    result += generate_enums(class_)
    result = generate_newline(result)
    result += f"cdef class {pxd_class['name']}({get_base_class(pxd_class)}):"
    result = generate_newline(result)
    result += generate_new_static(class_)
    result = generate_newline(result)
    return result

def generate_new_static(class_):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    if (class_["name"] in builtin_classes):
        res += f"{INDENT}cdef {class_['name']} new_static(GDExtensionTypePtr owner)"
    else:
        res += f"{INDENT}cdef {class_['name']} new_static(GodotObject owner)"
    return res


def get_inherited_class(class_):
    if "inherits" in class_.keys():
        return class_["inherits"]
    return "Wrapper4"


if __name__ == "__main__":
    with open('py4godot/gdextension-api/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        res = generate_import()
        res = generate_newline(res)
        for class_ in obj["builtin_classes"]:
            if class_["name"] in IGNORED_CLASSES:
                continue

            res += generate_pxd_class(class_)

        with open("py4godot/classes/generated4_core.pxd", "w") as f:
            f.write(res)

        for class_ in obj["classes"]:
            if class_["name"] in IGNORED_CLASSES:
                continue

            res = generate_import(class_to_import=get_inherited_class(class_))
            res = generate_newline(res)

            res += generate_pxd_class(class_)

            with open(f"py4godot/classes/{class_['name']}/{class_['name']}.pxd", "w") as f:
                f.write(res)
