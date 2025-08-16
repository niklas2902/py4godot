import copy
import json
import os

from generate_classes import ReturnType
from generation_files.generation_tools import write_if_different
from py4godot.class_ids import classes_dict

IGNORED_CLASSES = ("Nil", "bool", "float", "int")
INDENT = " "
builtin_classes = set()
typed_arrays_names = set()


def collect_typed_arrays_from_return(method_):
    if "return_value" in method_.keys() or "return_type" in method_.keys():
        ret_val = None
        if ("return_value" in method_.keys()):
            ret_val = ReturnType("_ret", method_['return_value']['type'])
        else:
            ret_val = ReturnType("_ret", method_['return_type'])
        if "typedarray" in ret_val.type:
            return [ret_val.type]
    return []

def collect_typed_arrays_from_args(method):
    typed_arrays = []
    if "arguments" not in method.keys():
        return []
    else:
        for argument in method["arguments"]:
            if ("typedarray" in argument["type"]):
                typed_arrays.append(argument["type"])
    return typed_arrays

def collect_typed_arrays(classes):
    typed_arrays = []
    for cls in classes:
        if not "methods" in cls.keys():
            continue
        for method in cls["methods"]:
            typed_arrays += collect_typed_arrays_from_return(method)
            typed_arrays += collect_typed_arrays_from_args(method)

    return set(typed_arrays)

def generate_typed_array_name(name):
    if (name == "typedarray::Array"):
        pass
    return name.split("::")[1] + "TypedArray"

def generate_newline(str_):
    return str_ + "\n"

def generate_includes(classes):
    res = ""
    res += "#include Python.h"
    res = generate_newline(res)
    res += '#include "py4godot/cppclasses/generated4_core.h"'
    res = generate_newline(res)
    for cls in classes:
        if "typedarray" in cls:
            res += f'#include "py4godot/cppclasses/typedarrays/{cls}.h"\n'
        elif cls in builtin_classes:
            continue
        else:
            res += f'#include "py4godot/cppclasses/{cls}/{cls}.h'

        res = generate_newline(res)
    return res

def generate_call_static_methods():
    res = ""
    res += f"PyObject* call_static_method(int class_id, int hash, PyObject* args){{"
    res = generate_newline(res)
    res += f"{INDENT}switch(class_id){{"
    for entry in classes_dict.items():
        res += f"{INDENT*2}case {entry[1]}: return {entry[0]}::call_static_method_with_return(hash, args);"
        res = generate_newline(res)
    res += f"{INDENT}}}"
    res = generate_newline(res)

    res += f"{INDENT}assert(false); return Py_None;}}"
    res = generate_newline(res)
    return res


def generate_call_constructor():
    res = ""
    res += f"PyObject* call_constructor(int class_id, int constructor_num, PyObject* args){{"
    res = generate_newline(res)
    res += f"{INDENT}switch(class_id){{"
    for entry in classes_dict.items():
        res += f"{INDENT*2}case {entry[1]}: return {entry[0]}::call_constructor(constructor_num, args);"
        res = generate_newline(res)
    res += f"{INDENT}}}"
    res = generate_newline(res)

    res += f"{INDENT}assert(false); return Py_None;}}"
    res = generate_newline(res)
    return res


def generate_static_methods(classes):
    res = ""
    res += generate_includes(classes)
    res = generate_newline(res)
    res += generate_call_static_methods()
    res = generate_newline(res)
    res += generate_call_constructor()
    return res



if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        builtin_classes = [class_["name"] for class_ in obj["builtin_classes"]]
        res = "from py4godot.utils.CPPWrapper cimport *"
        res = generate_newline(res)
        array_cls = None
        arrays = []
        for cls in obj["builtin_classes"]:
            if cls["name"] == "Array":
                array_cls = cls
        for typed_array in collect_typed_arrays(obj["classes"] + obj["builtin_classes"]):
            my_array_cls = copy.deepcopy(array_cls)
            my_array_cls["name"] = generate_typed_array_name(typed_array)
            typed_arrays_names.add(generate_typed_array_name(typed_array))
            arrays.append(my_array_cls)
        arrays = sorted(arrays, key = lambda array: array["name"])

        classes.remove(None)
        write_if_different("py4godot/cppclasses/static_methods.h", generate_static_methods([array["name"] for array in arrays] + list(classes)))
