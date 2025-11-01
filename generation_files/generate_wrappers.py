import copy
import json
import os

import generate_pxd_bridge
from generate_classes import import_type, ReturnType
from generation_tools import write_if_different

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

def generate_import():
    res = ""
    res += "from libcpp.memory cimport shared_ptr, make_shared"
    res = generate_newline(res)
    res += "from cpython.ref cimport PyObject"
    res = generate_newline(res)
    res += "cimport py4godot.classes.cpp_bridge as bridge"
    res = generate_newline(res)
    res += "from py4godot.utils.print_tools import print_error"
    res = generate_newline(res)
    return res

def generate_wrapper(class_name):
    res = f"cdef class CPP{class_name}Wrapper(CPPWrapper):"
    res = generate_newline(res)
    res += f"{INDENT}def __cinit__(self):"
    res = generate_newline(res)
    res += f"{INDENT*2}self._ptr = make_shared[bridge.{class_name}]()"
    res = generate_newline(res)
    res += f"{INDENT}cdef bridge.Wrapper* get_ptr(self):"
    res = generate_newline(res)
    res += f"{INDENT*2}return <bridge.Wrapper*> self._ptr.get()"
    res = generate_newline(res)
    if class_name in classes - set(builtin_classes):
        res += f"{INDENT}cdef set_gdowner(self, void* godot_owner):"
        res = generate_newline(res)
        res += f"{INDENT*2}self._ptr.get().set_godot_owner(godot_owner)"
        res = generate_newline(res)
        res += f"{INDENT}cdef void* get_gdowner(self):"
        res = generate_newline(res)
        res += f"{INDENT*2}return self._ptr.get().get_godot_owner()"
        res = generate_newline(res)

    res += f"{INDENT}cpdef call_with_return(self, int method_hash, tuple args_tuple):"
    res = generate_newline(res)
    res += f"{INDENT*2}return <object>self._ptr.get().switch_call_return(method_hash, <PyObject*>args_tuple)"
    res = generate_newline(res)


    res += f"cdef api shared_ptr[bridge.{class_name}] extract_ptr_from_{class_name}Wrapper(object o):"
    res = generate_newline(res)
    res += f"{INDENT}cdef CPP{class_name}Wrapper wrapper = <CPP{class_name}Wrapper>(o)"
    res = generate_newline(res)
    res += f"{INDENT}cdef shared_ptr[bridge.{class_name}] ptr = wrapper._ptr"
    res = generate_newline(res)
    res += f"{INDENT}return ptr"

    res = generate_newline(res)
    res += f"cdef api object create_wrapper_from_{class_name}_ptr(shared_ptr[bridge.{class_name}] ptr):"
    res = generate_newline(res)
    res += f"{INDENT}cdef CPP{class_name}Wrapper wrapper = CPP{class_name}Wrapper()"
    res = generate_newline(res)
    res += f"{INDENT}wrapper._ptr = ptr"
    res = generate_newline(res)
    res += f"{INDENT}return wrapper"

    return res

def generate_wrapper_pxd(class_name):
    res = f"cdef class CPP{class_name}Wrapper(CPPWrapper):"
    res = generate_newline(res)
    res += f"{INDENT}cdef shared_ptr[bridge.{class_name}] _ptr"
    res = generate_newline(res)

    res += f"{INDENT}cdef bridge.Wrapper* get_ptr(self)"
    res = generate_newline(res)
    if class_name in classes - set(builtin_classes):
        res += f"{INDENT}cdef set_gdowner(self, void* godot_owner)"
        res = generate_newline(res)
        res += f"{INDENT}cdef void* get_gdowner(self)"
        res = generate_newline(res)
    res += f"{INDENT}cpdef call_with_return(self, int method_hash, tuple args_tuple)"
    res = generate_newline(res)

    res += f"cdef api shared_ptr[bridge.{class_name}] extract_ptr_from_{class_name}Wrapper(object o)"
    res = generate_newline(res)
    res += f"cdef api object create_wrapper_from_{class_name}_ptr(shared_ptr[bridge.{class_name}] ptr)"
    res = generate_newline(res)

    return res

def generate_wrapper_header(class_name):
    res = ""
    res += f"GDN_EXPORT std::shared_ptr<godot::{class_name}> wrapper__extract_ptr_from_{class_name}Wrapper(PyObject* object);"
    res = generate_newline(res)

    res += f"GDN_EXPORT std::shared_ptr<godot::{class_name}> wrapper__default_extract_ptr_from_{class_name}Wrapper(PyObject* object);"
    res = generate_newline(res)
    res += f"GDN_EXPORT PyObject* wrapper__create_wrapper_from_{class_name}_ptr(std::shared_ptr<godot::{class_name}> ptr);"
    res = generate_newline(res)
    return res


def generate_wrapper_source(class_name, is_singleton):
    res = ""
    res = generate_newline(res)
    res += f"GDN_EXPORT std::shared_ptr<godot::{class_name}> wrapper__extract_ptr_from_{class_name}Wrapper(PyObject* object){{return extract_ptr_from_{class_name}Wrapper(object);}};"
    res = generate_newline(res)
    if class_name in classes - set(builtin_classes):
        res += f"GDN_EXPORT std::shared_ptr<godot::{class_name}> wrapper__default_extract_ptr_from_{class_name}Wrapper(PyObject* object){{return object != Py_None? extract_ptr_from_{class_name}Wrapper(object):std::shared_ptr<godot::{class_name}>();}};"
        res = generate_newline(res)
    else:
        res += f"GDN_EXPORT std::shared_ptr<godot::{class_name}> wrapper__default_extract_ptr_from_{class_name}Wrapper(PyObject* object){{return object != Py_None? extract_ptr_from_{class_name}Wrapper(object): godot::{class_name}::py_new0();}};"
        res = generate_newline(res)
    res += f"GDN_EXPORT PyObject* wrapper__create_wrapper_from_{class_name}_ptr(std::shared_ptr<godot::{class_name}> ptr){{return create_wrapper_from_{class_name}_ptr(ptr);}};"
    res = generate_newline(res)
    return res


if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        if not os.path.isdir("py4godot/wrappers"):
            os.mkdir("py4godot/wrappers")
            with open("py4godot/wrappers/__init__.py", "w", encoding="utf-8") as file:pass
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        builtin_classes = [class_["name"] for class_ in obj["builtin_classes"]]
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        res = "from py4godot.utils.CPPWrapper cimport *"
        res = generate_newline(res)
        res += generate_import()
        res = generate_newline(res)
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

        all_classes = arrays + obj['classes'] + obj["builtin_classes"]
        res += f"cdef api object extract_ptr_from_py_object(object other)"
        res = generate_newline(res)
        for cls in all_classes:
            if cls["name"] not in IGNORED_CLASSES:
                res += generate_wrapper_pxd(cls["name"])
                res = generate_newline(res)
        write_if_different("py4godot/wrappers/wrappers.pxd", res)

        res = ""
        res += "from py4godot.utils.print_tools import print_error"
        res = generate_newline(res)
        res += f"cdef api object extract_ptr_from_py_object(object other):return other._ptr"
        res = generate_newline(res)
        for cls in all_classes:
            if cls["name"] not in IGNORED_CLASSES:
                res += generate_wrapper(cls["name"])
                res = generate_newline(res)
        write_if_different("py4godot/wrappers/wrappers.pyx", res)

        all_classes = arrays + obj['classes'] + obj["builtin_classes"]
        res = "#pragma once\n#include \"Python.h\"\n#include \"py4godot/cppclasses/class_defs.h\"\n"
        res = generate_newline(res)
        res += """#if !defined(GDN_EXPORT)
#if defined(_WIN32)
#define GDN_EXPORT __declspec(dllexport)
#elif defined(__GNUC__)
#define GDN_EXPORT __attribute__((visibility("default")))
#else
#define GDN_EXPORT
#endif
#endif"""
        res = generate_newline(res)
        res += "void init_wrappers();"
        res = generate_newline(res)

        res += "PyObject* wrapper__extract_ptr_from_py_object(PyObject* object);"
        res = generate_newline(res)
        for cls in all_classes:
            if cls["name"] not in IGNORED_CLASSES:
                res += generate_wrapper_header(cls["name"])
                res = generate_newline(res)
        write_if_different("py4godot/wrappers/wrappers_wrapper.h", res)



        res = '#include "py4godot/wrappers/wrappers_wrapper.h"'
        res = generate_newline(res)
        for cls in all_classes:
            if cls["name"] not in IGNORED_CLASSES and "typedarray" in cls["name"].lower():
                res += f'#include "py4godot/cppclasses/typedarrays/{cls["name"]}.h"'
                res = generate_newline(res)
            elif cls["name"] in classes - set(builtin_classes):
                res += f'#include "py4godot/cppclasses/{cls["name"]}/{cls["name"]}.h"'
                res = generate_newline(res)

        res += '#include "py4godot/wrappers/wrappers_api.h"'
        res = generate_newline(res)
        res += "void init_wrappers(){import_py4godot__wrappers__wrappers();}"
        res = generate_newline(res)
        res += "PyObject* wrapper__extract_ptr_from_py_object(PyObject* object){return extract_ptr_from_py_object(object) ;}"
        res = generate_newline(res)

        for cls in all_classes:
            if cls["name"] not in IGNORED_CLASSES:
                res += generate_wrapper_source(cls["name"], cls["name"] in singletons)
                res = generate_newline(res)
        write_if_different("py4godot/wrappers/wrappers_wrapper.cpp", res)
