import json
import os
import sys

from generation_tools import write_if_different


def generate_newline(str_):
    return str_ + "\n"

def enumize_name(str_):
    str_array = str_.split(".")
    if len(str_array) >1:
        return str_array[0]+ "__" + str_array[1]
    return str_array[0]

if __name__ == "__main__":
    os.chdir("..")
    sys.path.append(os.path.abspath('..'))

    res = ""
    res += "from py4godot.godot_bindings.binding4_godot4 cimport *"
    res = generate_newline(res)
    res = generate_newline(res)

    res_pyi = ""
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
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

            res_pyi += f"class {enumize_name(enum_def['name'])}:"
            res_pyi = generate_newline(res_pyi)
            for value in enum_def["values"]:
                res_pyi += f"  {value['name']} = {value['value']}"
                res_pyi = generate_newline(res_pyi)


    write_if_different("py4godot/enums/enums.pyx","# distutils: language=c++\n"+"from py4godot.godot_bindings.binding4_godot4 cimport *")
    write_if_different("py4godot/enums/enums.pxd", "# distutils: language=c++\n"+res)
    write_if_different("py4godot/enums/enums.pyi", "# distutils: language=c++\n"+res_pyi)
