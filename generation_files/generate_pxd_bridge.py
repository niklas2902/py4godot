import copy
import json
import os.path

from generate_classes import pythonize_boolean_types, unref_type, \
    unnull_type
from generate_classes_hpp import has_native_struct, ungodottype, generate_newline
from generation_tools import write_if_different

INDENT = "  "


class ReturnType:
    def __init__(self, name, type_):
        self.type = type_
        self.name = name
        self.is_primitive = False


class BuiltinClass:
    def __init__(self, name):
        self.name = name
        self.core_members = []


class CoreMember:
    def __init__(self, name, type_):
        self.name = name
        self.type_ = type_


class Operator:
    def __init__(self, class_, operator_string, return_type):
        self.right_type_values = []
        self.class_ = class_
        self.operator_string = operator_string
        self.return_type = return_type


class GraphNode():
    def __init__(self, class_):
        self.class_ = class_
        self.children = []


IGNORED_CLASSES = {"Nil", "bool", "float", "int"}

ACCEPTED_CLASSES = {"Object", "String"}

native_structs = {}
forbidden_types = {"cont void*", "void*"}
normal_classes = set()
singletons = set()
builtin_classes = set()
core_classes = dict()
operator_dict = dict()
root_node = None
typed_arrays_names = set()
operator_to_method = {"+": "__add__",
                      "*": "__mul__",
                      "-": "__sub__",
                      "/": "__div__",
                      "%": "__mod__",
                      "**": "__pow__",
                      "==": "__eq__",
                      "!=": "__ne__",
                      "<": "__lt__",
                      "<=": "__le__",
                      ">": "__gt__",
                      ">=": "__ge__",
                      }
operator_to_variant_operator = {"+": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_ADD",
                                "*": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_MULTIPLY",
                                "-": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_SUBTRACT",
                                "/": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_DIVIDE",
                                "%": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_MODULE",
                                "**": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_POWER",
                                "==": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_EQUAL",
                                "!=": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_NOT_EQUAL",
                                "<": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_LESS",
                                "<=": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_LESS_EQUAL",
                                ">": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_GREATER",
                                ">=": "GDExtensionVariantOperator.GDEXTENSION_VARIANT_OP_GREATER_EQUAL",
                                }


def generate_import():
    result = \
        """
from py4godot.core.variant4.Variant4 cimport *
from libcpp.vector cimport vector
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from libcpp.memory cimport shared_ptr
ctypedef unsigned char byte

cdef cppclass Error:
    pass
"""
    return result
def generate_wrapper():
    res = generate_import()
    res = generate_newline(res)
    res += f'cdef extern from "py4godot/cpputils/Wrapper.h" namespace "godot":'
    res = generate_newline(res)
    res += f'{INDENT}cdef cppclass Wrapper:'
    res = generate_newline(res)
    res += f'{INDENT * 2}GDExtensionObjectPtr& get_godot_owner()'
    res = generate_newline(res)
    res += f'{INDENT * 2}void set_godot_owner(GDExtensionObjectPtr owner)'
    res = generate_newline(res)
    res += f'{INDENT * 2}void switch_call(int method_hash, PyObject * objects)'
    res = generate_newline(res)
    res += f'{INDENT * 2}PyObject* switch_call_return(int method_hash, PyObject * objects)'
    res = generate_newline(res)

    res += f'cdef extern from "py4godot/cpputils/VariantTypeWrapper.h" namespace "godot":'
    res = generate_newline(res)
    res += f'{INDENT}cdef cppclass VariantTypeWrapper:'
    res = generate_newline(res)
    res += f'{INDENT * 2}GDExtensionTypePtr& get_godot_owner()'
    res = generate_newline(res)
    return res


def generate_pxd_bridge_class(classname):
    if "TypedArray" in classname:
        res = f'cdef extern from "py4godot/cppclasses/typedarrays/{classname}.h" namespace "godot":'
    elif classname in builtin_classes:
        res = f'cdef extern from "py4godot/cppclasses/generated4_core.h" namespace "godot":'
    else:
        res = f'cdef extern from "py4godot/cppclasses/{classname}/{classname}.h" namespace "godot":'
    res = generate_newline(res)
    res += f'{INDENT}cdef cppclass {classname}(Wrapper):'
    res = generate_newline(res)
    res += f'{INDENT*2}pass'
    return res

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


if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])

        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        classes_to_generate = []


        # for class_ in obj["classes"]:
        #    if class_["name"] in {"Object", "RefCounted", "AESContext"}:
        #        classes_to_generate.append(class_)

        is_in_classes_to_generate = False
        for class_ in classes_to_generate:
            print(class_["name"])
            if class_["name"] == "EditorNode3DGizmo":
                is_in_classes_to_generate = True

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
        arrays = sorted(arrays, key = lambda a: a["name"] )
        typed_arrays_names = sorted(list(typed_arrays_names))
        res = ""
        res += generate_wrapper()
        res = generate_newline(res)
        for cls in arrays + obj["builtin_classes"] + obj["classes"]:
            if cls["name"] not in IGNORED_CLASSES:
                res += generate_pxd_bridge_class(cls["name"])
                res = generate_newline(res)
        write_if_different("py4godot/classes/cpp_bridge.pxd", res)
