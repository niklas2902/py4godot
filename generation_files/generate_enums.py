import json
import os


def generate_newline(str_):
    return str_ + "\n"

def enumize_name(str_):
    str_array = str_.split(".")
    if len(str_array) >1:
        return str_array[0]+ "__" + str_array[1]
    return str_array[0]

if __name__ == "__main__":
    os.chdir("..")

    res = ""
    res += "from py4godot.godot_bindings.binding4_godot4 cimport *"
    res = generate_newline(res)
    res = generate_newline(res)
    with open('py4godot/gdextension-api/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        for enum_def in obj["global_enums"]:
            res += f"cpdef enum {enumize_name(enum_def['name'])}:"
            res = generate_newline(res)
            for value in enum_def["values"]:
                res += f"  {value['name']} = {value['value']}"
                res = generate_newline(res)

            res = generate_newline(res)

            res += "####################################"
            res = generate_newline(res)

    with open("py4godot/enums/enums4.pyx", "w") as f:
        f.write("from py4godot.godot_bindings.binding4_godot4 cimport *")
    with open("py4godot/enums/enums4.pxd", "w") as f:
        f.write(res)
