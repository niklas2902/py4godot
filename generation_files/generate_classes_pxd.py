import copy
import json
import os

import generate_pxd_bridge
from generate_classes import import_type, ReturnType

IGNORED_CLASSES = ("Nil", "bool", "float", "int")
INDENT = " "
builtin_classes = set()
typed_arrays_names = set()


def generate_import(class_to_import=None):
    res = ""
    if class_to_import:
        if class_to_import != "Wrapper4":
            res += f"cimport py4godot.classes.{class_to_import} as py4godot_{class_to_import.lower()}"
            res = generate_newline(res)
    res += f"from py4godot.classes.Object cimport *"
    res = generate_newline(res)
    res += f"from libcpp.memory cimport shared_ptr, allocator"
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

def generate_signals(cls):
    if not "signals" in cls.keys():
        return ""
    res = ""
    for signal in cls["signals"]:
        res += f"{INDENT}cdef public object {signal['name']}"
        res = generate_newline(res)
    return res

def generate_newline(str_):
    return str_ + "\n"


def get_base_class(class_):
    if "inherits" in class_.keys():
        return import_type(class_["inherits"], class_["name"])
    return ""


def generate_common_methods(class_):
    res = ""
    res += f"{INDENT * 1}cdef void set_gdowner(self, void* owner)"
    res = generate_newline(res)
    return res


def generate_c_props():
    return res


def generate_special_attributes(class_):
    if "array" in class_["name"].lower():
        return f"{INDENT}cdef int _index"
    return ""

def generate_properties(class_):
    result = ""
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            if "setter" in property.keys() or "getter" in property.keys():
                result += f"{INDENT}cdef object py__{property['name']}"
                result = generate_newline(result)
    return result

def generate_pxd_class(pxd_class):
    result = ""
    result += generate_enums(class_)
    result = generate_newline(result)
    result += f"cdef class {pxd_class['name']}({get_base_class(pxd_class)}):"
    result = generate_newline(result)
    if pxd_class["name"] == "Object":
        result += f"{INDENT}cdef bint already_deallocated"
    result = generate_newline(result)
    result += generate_wrapped_attribute(class_)
    result = generate_newline(result)
    result += generate_special_attributes(class_)
    result = generate_newline(result)
    result += generate_common_methods(class_)
    result = generate_newline(result)
    result += generate_properties(class_)
    result = generate_newline(result)
    result += generate_signals(pxd_class)
    result = generate_newline(result)
    return result


def generate_wrapped_attribute(class_):
    res = ""
    res = generate_newline(res)
    res += f"{INDENT}cdef shared_ptr [CPP{class_['name']}] {class_['name']}_internal_class_ptr"
    res = generate_newline(res)

    return res


def get_inherited_class(class_):
    if "inherits" in class_.keys():
        return class_["inherits"]
    return ""


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

def write_if_different(file_path, text_to_write):
    if os.path.exists(file_path):
        with open(file_path, 'r') as existing_file:
            if existing_file.read() != text_to_write:
                with open(file_path, 'w') as file_to_write:
                    file_to_write.write(text_to_write)
    else:
        with open(file_path, 'w') as file_to_write:
            file_to_write.write(text_to_write)



if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        builtin_classes = [class_["name"] for class_ in obj["builtin_classes"]]
        res = generate_import()
        res = generate_newline(res)
        for class_ in builtin_classes:
            if class_ in IGNORED_CLASSES:
                continue
            res += f"from py4godot.classes.cpp_bridge cimport {class_} as CPP{class_} "
            res = generate_newline(res)
        res = generate_newline(res)
        for class_ in obj["builtin_classes"]:
            if class_["name"] in IGNORED_CLASSES:
                continue

            res += generate_pxd_class(class_)

        text_to_write = "# distutils: language=c++"+res
        write_if_different("py4godot/classes/core.pxd", text_to_write)
        for class_ in obj["classes"]:
            if class_["name"] in IGNORED_CLASSES:
                continue

            res = generate_import(class_to_import=get_inherited_class(class_))
            res = generate_newline(res)

            res += f"from py4godot.classes.cpp_bridge cimport {class_['name']} as CPP{class_['name']} "
            res = generate_newline(res)
            res += f"from py4godot.classes.core cimport *"
            res = generate_newline(res)
            res += generate_pxd_class(class_)

            text_to_write = "# distutils: language=c++\n"+res
            write_if_different(f"py4godot/classes/{class_['name']}.pxd", text_to_write)
        array_cls = None
        arrays = []
        for cls in obj["builtin_classes"]:
            if cls["name"] == "Array":
                array_cls = cls
        print("typedarrays:", collect_typed_arrays(obj["classes"] + obj["builtin_classes"]))
        for typed_array in collect_typed_arrays(obj["classes"] + obj["builtin_classes"]):
            my_array_cls = copy.deepcopy(array_cls)
            my_array_cls["name"] = generate_typed_array_name(typed_array)
            typed_arrays_names.add(generate_typed_array_name(typed_array))
            arrays.append(my_array_cls)
        arrays = sorted(arrays, key = lambda array: array["name"])

        res = ""
        for class_ in arrays:
            print(class_["name"])
            res += f"from py4godot.classes.cpp_bridge cimport {class_['name']} as CPP{class_['name']} "
            res = generate_newline(res)
            res += f"from libcpp.memory cimport shared_ptr, allocator"
            res = generate_newline(res)
            res += generate_pxd_class(class_)

        text_to_write = "# distutils: language=c++\n"+res

        write_if_different(f"py4godot/classes/typedarrays.pxd", text_to_write)
