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
allowed_operators = {"+": "__add__",
                      "*": "__mul__",
                      "-": "__sub__",
                      "/": "__truediv__",
                      "%": "__mod__",
                      "**": "__pow__",
                      "==": "__eq__",
                      "!=": "__ne__",
                      "<": "__lt__",
                      "<=": "__le__",
                      ">": "__gt__",
                      ">=": "__ge__",
                      }


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
    res += '#include "Python.h"'
    res = generate_newline(res)
    res += '#include "py4godot/cppclasses/generated4_core.h"'
    res = generate_newline(res)
    for cls in classes:
        if "typedarray" in cls.lower():
            res += f'#include "py4godot/cppclasses/typedarrays/{cls}.h"\n'
        elif cls in builtin_classes:
            continue
        else:
            res += f'#include "py4godot/cppclasses/{cls}/{cls}.h"'

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



def collect_methods(class_, static_methods):
    res = []
    if "methods" in class_:
        res += list(filter(lambda method: is_static(method) == static_methods and not has_native_struct(method), class_["methods"]))

    if "inherits" in class_:
        res = collect_methods(find_class(class_["inherits"]), static_methods) +res
    res = list(filter (lambda method: not native_structs_in_method(method), res))
    return res

def collect_members(class_):
    members = []
    if "members" not in class_:
        return members
    for member in class_["members"]:
        members.append(member["name"])
    return members

def is_static(mMethod):

    return mMethod["is_static"]

def has_native_struct(method):
    if "return_value" in method.keys() or "return_type" in method.keys():
        if "return_value" in method.keys():
            if "Glyph" in method["return_value"]["type"]:
                return True
        else:
            if "Glyph*" in method["return_type"]:
                return True
    return False


def find_class(name):
    for cls in obj["classes"]:
        if cls["name"] == name:
            return cls
def is_virtual(method):
    return "hash" not in method.keys() or method["name"].startswith("_")

def native_structs_in_method(mMethod):
    forbidden_types = {"cont void*", "void*"}
    # TODO: check whether this method makes sense for later
    if ("arguments" in mMethod):
        for arg in mMethod["arguments"]:
            if arg["type"] in forbidden_types:
                return True
            if ("*" in arg["type"]):
                return True
            if strip_symbols_from_type(arg["type"]) in native_structs:
                return True
    # if "return_value" in mMethod.keys():
    #    if mMethod["return_value"]["type"] in forbidden_types:
    #        return True
    #    if strip_symbols_from_type(mMethod["return_value"]["type"]) in native_structs:
    #        return True
    return False

def strip_symbols_from_type(type):
    return type.replace("*", "").replace("const", "").strip()


def generate_method_ids(classes):
    normal_methods = dict()
    static_methods = dict()
    for cls in classes:
        id = 0
        methods = collect_methods(cls, False)
        normal_methods[cls["name"]] = dict()

        for method in methods:
            normal_methods[cls["name"]][method["name"]] = id
            id += 1
        if cls["name"] in builtin_classes:
            members = collect_members(cls)
            for member in members:
                normal_methods[cls["name"]]["get_member_"+member] = id
                id += 1
                normal_methods[cls["name"]]["set_member_" + member] = id
                id += 1

        if "operators" in cls:
            for operator in cls["operators"]:
                if operator["name"] not in allowed_operators:
                    continue
                normal_methods[cls["name"]][operator["name"]] = id
                id += 1

        if "array" in cls["name"].lower():
            normal_methods[cls["name"]]["__getitem__"] = id
            id += 1
            normal_methods[cls["name"]]["__setitem__"] = id
            id += 1

        static_id = 0
        static_methods_list = collect_methods(cls, True)
        static_methods[cls["name"]] = dict()

        for method in static_methods_list:
            static_methods[cls["name"]][method["name"]] = static_id
            static_id += 1

    return "method_ids = " + to_json_string(normal_methods, static_methods)


def to_json_string(normal_methods, static_methods):
    """Convert dictionaries to JSON string format"""
    data = {
        "normal_methods": normal_methods,
        "static_methods": static_methods
    }
    return json.dumps(data, indent=2)




if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = obj['classes'] + obj["builtin_classes"]
        builtin_classes = [class_["name"] for class_ in obj["builtin_classes"]]
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
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

        write_if_different("py4godot/method_ids.py", generate_method_ids([array for array in arrays] + list(classes)))
