import copy
import json
import os

from generate_classes import ReturnType, generate_newline
from generation_files.generation_tools import write_if_different
from py4godot.class_ids import classes_dict

IGNORED_CLASSES = ("Nil", "bool", "float", "int")
INDENT = " "
builtin_classes = set()

def type_checking():
    res = "# distutils: language=c++"
    res = generate_newline(res)
    for cls in set(builtin_classes) - {"float", "int", "bool", "Nil"}:
        res += f"from py4godot.py_classes.core import {cls}"
        res = generate_newline(res)

    for cls in set(builtin_classes) - {"Nil"}:
        res += f"cdef api bint is_{cls}(object o):"
        res = generate_newline(res)
        res += f"{INDENT}return type(o) == {cls}"
        res = generate_newline(res)

    return res


def generate_wrapper_header(class_name):
    res = ""
    res += f"bool type_checking_{class_name}(PyObject* object);"
    res = generate_newline(res)
    return res


def generate_wrapper_source(class_name):
    res = ""
    res = generate_newline(res)
    res += f"bool type_checking_{class_name}(PyObject* object){{return is_{class_name}(object);}};"
    res = generate_newline(res)
    return res




if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = obj['classes'] + obj["builtin_classes"]
        builtin_classes = [class_["name"] for class_ in obj["builtin_classes"]]
        builtin_classes.remove("Nil")

        write_if_different("py4godot/wrappers/type_checking.pyx", type_checking())

        res = ""
        res += '#include "Python.h"'
        res = generate_newline(res)
        res += '#include "py4godot/wrappers/type_checking_api.h"'
        res = generate_newline(res)
        res += "void init_type_checking(){import_py4godot__wrappers__type_checking();}"
        res = generate_newline(res)
        for cls in builtin_classes:
            res += generate_wrapper_source(cls)

        write_if_different("py4godot/wrappers/type_checking_wrapper.cpp", res)


        res = ""
        res += '#include "Python.h"'
        res = generate_newline(res)
        res += "void init_type_checking();"
        res = generate_newline(res)
        for cls in builtin_classes:
            res += generate_wrapper_header(cls)

        write_if_different("py4godot/wrappers/type_checking_wrapper.h", res)


