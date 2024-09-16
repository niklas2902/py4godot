import json
import os.path
import sys

from generate_classes import pythonize_boolean_types, unref_type, \
    unnull_type
from generate_classes_hpp import has_native_struct, ungodottype
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
from py4godot.classes.cpp_bridge cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
"""
    return result

def generate_newline(str_):
    return str_ + "\n"

def unvarianttype(type_):
    if type_ == "Variant":
        return "PyObject*"
    return type_

def make_to_ptr(ret_val):
    if ret_val in builtin_classes - {"int", "float", "bool"} or ret_val in classes:
        return f"shared_ptr[{ret_val}]"
    return ret_val

def generate_method(mMethod):
    res = ""
    if has_native_struct(mMethod):
        return res
    args = generate_args(mMethod)
    def_function = f"{INDENT}{make_to_ptr(unvarianttype(ungodottype(untypearray(get_ret_value(mMethod)))))} py_{pythonize_name(mMethod['name'])}({args});"
    res = generate_newline(res)
    res += def_function
    res = generate_newline(res)
    return res


def get_ret_value(method):
    if "return_value" in method.keys() or "return_type" in method.keys():
        if "return_value" in method.keys():
            return_type = method["return_value"]["type"]
        else:
            return_type = method["return_type"]
        return unbitfield_type(unenumize_type(return_type))
    return "void"


def collect_members(obj):
    global core_classes
    print(obj["builtin_class_member_offsets"][3])
    for class_ in obj["builtin_class_member_offsets"][3]["classes"]:
        core_class = BuiltinClass(class_["name"])
        for member in class_["members"]:
            core_member = CoreMember(member["member"], member["meta"].replace("32", ""))
            core_class.core_members.append(core_member)
        core_classes[class_["name"]] = core_class
    print(core_classes)

def simplify_type(type):
    list_types = type.split(",")
    return list_types[-1]


def pythonize_name(name):
    if name in (
            "from", "len", "in", "for", "with", "class", "pass", "raise", "global", "char", "default", "new",
            "get_interface", "str", "typeof"):
        return name + "_"
    return name


def unbitfield_type(arg_type):
    if arg_type.startswith("bitfield::"):
        return "int"
    return arg_type



def generate_args(method_with_args):
    result = " "
    if "arguments" not in method_with_args:
        if method_with_args["is_vararg"]:
            return "vector[PyObject*]& varargs"
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if arg["type"] == "Variant":
            result += f"{unenumize_type(untypearray(unbitfield_type(arg['type'])))}& {pythonize_name(arg['name'])}, "
        elif not arg["type"].startswith("enum::") and not arg["type"].startswith("bitfield::") and not untypearray(
                arg["type"]) in builtin_classes :
            result += f"shared_ptr[{unenumize_type(untypearray(unbitfield_type(arg['type'])))}] {pythonize_name(arg['name'])}, "
        elif untypearray(arg["type"]) in builtin_classes - {"int", "float", "bool", "Nil"}:
            result += f"shared_ptr[{unenumize_type(untypearray(unbitfield_type(arg['type'])))}] {pythonize_name(arg['name'])}, "
        elif arg["type"] in {"int", "float", "bool"}:
            result += f"{unenumize_type(untypearray(unbitfield_type(arg['type'])))} {pythonize_name(arg['name'])}, "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            result += f"{untypearray(unbitfield_type(unenumize_type(arg['type'])))} {pythonize_name(arg['name'])} , "
    result = result[:-2]
    if method_with_args["is_vararg"]:
        result += ", vector[PyObject*]& varargs"
    return result


def unenumize_type(type_):
    if "enum" in type_:
        return "int"
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    if len(type_list) > 1:
        return "int"  # TODO: enable this again
        # return type_list[0]+ "__" + type_list[1]
    return type_list[0]


def untypearray(type_):
    # TODO improve this by creating actually typed arrays
    if "typedarray" in type_:
        return "Array"
    return type_


def get_class_from_enum(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    return type_list[0]



classes = set()


def find_class(_class, obj_clases):
    for i in obj_clases:
        if _class == i["name"]:
            return i
    return None


def is_already_in_graph(_class, node):
    if _class == node.class_["name"]:
        return True
    for child in node.children:
        ret = is_already_in_graph(_class, child)
        if ret:
            return True
    return False


def find_graph_node(_class_name, node):
    if _class_name == node.class_["name"]:
        return node

    for child in node.children:
        node = find_graph_node(_class_name, child)
        if node != None:
            return node

    return None


def add_class(_class, obj_classes):
    if _class["name"] == root_node.class_["name"]:
        return root_node
    parent = _class["inherits"]
    if is_already_in_graph(parent, root_node):
        node = find_graph_node(parent, root_node)
        node.children.append(GraphNode(_class))
    else:
        add_class(find_class(parent, obj_classes), obj_classes)
        find_graph_node(parent, root_node).children.append(GraphNode(_class))


def graph_to_list(node, liste):
    liste.append(node.class_)
    for child in node.children:
        graph_to_list(child, liste)


if __name__ == "__main__":
    os.chdir("..")
    sys.path.append(os.path.abspath('..'))
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        root_node = find_class("Object", obj["classes"])

        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])

        builtin_classes = set(class_["name"] for class_ in obj["builtin_classes"])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        singletons = set([singleton["name"] for singleton in obj["singletons"]])
        collect_members(obj)
        classes_to_generate = []

        res = generate_import()
        res = generate_newline(res)
        res += 'cdef extern from "py4godot/cppclasses/utils.h" namespace "godot":'
        for utility_function in obj["utility_functions"]:
            res += generate_method(utility_function)
            res = generate_newline(res)

        write_if_different("py4godot/functions.pxd", "# distutils: language=c++\n"+res)