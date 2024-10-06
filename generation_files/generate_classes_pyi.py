import copy
import json
import os.path

from generate_classes import pythonize_boolean_types, unref_type, \
    unnull_type

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


IGNORED_CLASSES = {"Nil", "bool", "float", "int"}

ACCEPTED_CLASSES = {"Object", "String"}

native_structs = {}
forbidden_types = {"cont void*", "void*"}
normal_classes = set()
singletons = set()
builtin_classes = set()
core_classes = dict()
operator_dict = dict()
typed_arrays_names = set()
is_core = False
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
        """from py4godot.utils.VariantTypeWrapper4 import *
import py4godot.classes.Object as __object__
"""
    return result


def generate_constructor_args(constructor):
    result = ""
    if "arguments" not in constructor:
        return result

    for arg in constructor["arguments"]:
        if not arg["type"].startswith("enum::"):
            result += f"{pythonize_name(arg['name'])}:{ungodottype(untypearray(unbitfield_type(arg['type'])))}, "
        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{pythonize_name(arg['name'])}:{ungodottype(untypearray(unenumize_type(arg_type)))}, "
    result = result[:-2]
    return result


def generate_cast(classname):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def cast(other:__object__.Object)->{classname}:pass"
    res = generate_newline(res)
    return res


def convert_camel_case_to_underscore(string):
    res = ""
    was_upper = True
    was_number = False
    for char in string:
        if char.isupper():
            if was_upper or was_number:
                res += char

            else:
                res += "_" + char
        else:
            res += char
        was_upper = char.isupper()
        was_number = char in {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"}
    if ((
            "vector3" in res.lower() or "vector2" in res.lower()) or "float64" in res.lower() or "float32" in res.lower() or "int64" in res.lower() or "int32" in res.lower()):
        res = res.replace("Array", "_Array")
    return res


def generate_variant_type(class_):
    if class_ in builtin_classes:
        return f"GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_{convert_camel_case_to_underscore(class_).upper()}"
    else:
        return f"GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL"


def generate_constructors(class_):
    res = ""
    if "constructors" not in class_.keys():
        return res
    for constructor in class_["constructors"]:
        res += f"{INDENT}@staticmethod"
        res = generate_newline(res)
        res += f"{INDENT}def new{constructor['index']}({generate_constructor_args(constructor)}) -> {ungodottype(class_['name'])}:pass"
        res = generate_newline(res)
    return res


def generate_class_imports(classes):
    result = "import py4godot.classes.core as __core__"
    result = generate_newline(result)
    result += "import py4godot.classes.typedarrays as __typedarrays__"
    result = generate_newline(result)
    result += "from py4godot.signals import BuiltinSignal"
    result = generate_newline(result)
    for class_ in classes:
        result += f"import py4godot.classes.{class_} as __{class_.lower()}__"
        result = generate_newline(result)
    return result


def generate_newline(str_):
    return str_ + "\n"


def get_base_class(class_):
    if "inherits" in class_.keys():
        return "__" + class_["inherits"].lower() + "__." + class_["inherits"]
    if class_["name"] in builtin_classes:
        return "VariantTypeWrapper4"
    return ""


def strip_symbols_from_type(type):
    return type.replace("*", "").replace("const", "").strip()


def native_structs_in_method(mMethod):
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


def generate_singleton_constructor(classname):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def get_instance()->{classname}:pass"
    res = generate_newline(res)
    return res


def generate_construction(class_):
    res = ""
    if is_singleton(class_["name"]):
        res += generate_singleton_constructor(class_["name"])
    return res


def is_singleton(class_name):
    return class_name in singletons


def generate_method_bind_name(class_name, method_name):
    return f"method_bind__{class_name}_{method_name}"


def get_variant_type(class_name):
    DICT = {

        "Nil": "GDEXTENSION_VARIANT_TYPE_NIL",

        #  atomic types
        "bool": "GDEXTENSION_VARIANT_TYPE_BOOL",
        "int": "GDEXTENSION_VARIANT_TYPE_INT",
        "float": "GDEXTENSION_VARIANT_TYPE_FLOAT",
        "string": "GDEXTENSION_VARIANT_TYPE_STRING",

        # math types
        "vector2": "GDEXTENSION_VARIANT_TYPE_VECTOR2",
        "vector2i": "GDEXTENSION_VARIANT_TYPE_VECTOR2I",
        "rect2": "GDEXTENSION_VARIANT_TYPE_RECT2",
        "rect2i": "GDEXTENSION_VARIANT_TYPE_RECT2I",
        "vector3": "GDEXTENSION_VARIANT_TYPE_VECTOR3",
        "vector3i": "GDEXTENSION_VARIANT_TYPE_VECTOR3I",
        "transform2d": "GDEXTENSION_VARIANT_TYPE_TRANSFORM2D",
        "vector4": "GDEXTENSION_VARIANT_TYPE_VECTOR4",
        "vector4i": "GDEXTENSION_VARIANT_TYPE_VECTOR4I",
        "plane": "GDEXTENSION_VARIANT_TYPE_PLANE",
        "quaternion": "GDEXTENSION_VARIANT_TYPE_QUATERNION",
        "aabb": "GDEXTENSION_VARIANT_TYPE_AABB",
        "basis": "GDEXTENSION_VARIANT_TYPE_BASIS",
        "transform3d": "GDEXTENSION_VARIANT_TYPE_TRANSFORM3D",
        "projection": "GDEXTENSION_VARIANT_TYPE_PROJECTION",

        # misc types
        "color": "GDEXTENSION_VARIANT_TYPE_COLOR",
        "stringname": "GDEXTENSION_VARIANT_TYPE_STRING_NAME",
        "nodepath": "GDEXTENSION_VARIANT_TYPE_NODE_PATH",
        "rid": "GDEXTENSION_VARIANT_TYPE_RID",
        "object": "GDEXTENSION_VARIANT_TYPE_OBJECT",
        "callable": "GDEXTENSION_VARIANT_TYPE_CALLABLE",
        "signal": "GDEXTENSION_VARIANT_TYPE_SIGNAL",
        "dictionary": "GDEXTENSION_VARIANT_TYPE_DICTIONARY",
        "array": "GDEXTENSION_VARIANT_TYPE_ARRAY",

        # typed arrays
        "packedbytearray": "GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY",
        "packedint32array": "GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY",
        "packedint64array": "GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY",
        "packedfloat32array": "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY",
        "packedfloat64array": "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY",
        "packedstringarray": "GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY",
        "packedvector2array": "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY",
        "packedvector3array": "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY",
        "packedcolorarray": "GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY"
    }

    return DICT[class_name.lower()]


def is_static(mMethod):
    return mMethod["is_static"]


def generate_method_headers(mMethod):
    res = ""
    if is_static(mMethod):
        res = f"{INDENT}@staticmethod"
        res = generate_newline(res)
        return res
    return ""


def generate_method(class_, mMethod):
    res = ""
    args = generate_args(class_, mMethod)
    def_function = f"{INDENT}def {pythonize_name(mMethod['name'])}({args})->{ungodottype_type_array(get_ret_value(mMethod, class_), class_['name'])}: pass"
    res += generate_method_headers(mMethod)
    res += def_function
    res = generate_newline(res)
    return res


def get_ret_value(method, class_):
    if "return_value" in method.keys() or "return_type" in method.keys():
        if "return_value" in method.keys():
            return_type = method["return_value"]["type"]
        else:
            return_type = method["return_type"]
        return ungodottype_type_array(untypearray(unbitfield_type(unenumize_type(return_type))), class_["name"])


def generate_operators(class_):
    if class_["name"] == "Dictionary":
        print(class_["name"])
        if ("operators" in class_.keys()):
            for operator in class_["operators"]:
                print(operator)
    return ""


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


def generate_init(class_):
    result = ""
    result += f"{INDENT}def __init__(self)->None:pass"
    result = generate_newline(result)
    return result


def generate_common_methods(class_):
    result = ""
    if not is_singleton(class_["name"]):
        result += generate_constructor(class_["name"])
        result = generate_newline(result)
    result = generate_newline(result)
    result += generate_constructors(class_)
    result = generate_newline(result)
    return result

def generate_properties(class_):
    result = ""
    if ("properties" in class_.keys()):
        for property in class_["properties"]:
            result += generate_property(property, class_)
    return result


def generate_member_getter(class_, member):
    res = ""
    res += f"{INDENT}@property"
    res = generate_newline(res)
    res += f"{INDENT}def {member.name}(self)->{undouble_type(member.type_)}:pass"
    res = generate_newline(res)

    res += f"{INDENT}def get_{member.name}(self)->{undouble_type(member.type_)}:pass"
    res = generate_newline(res)
    return res


def undouble_type(type_):
    if type_ == "double":
        return "float"
    return type_


def generate_member_setter(class_, member):
    res = ""
    res += f"{INDENT}@{member.name}.setter"
    res = generate_newline(res)
    res += f"{INDENT}def {member.name}(self, value:{undouble_type(member.type_)})->None:pass"
    res = generate_newline(res)
    res += f"{INDENT}def set_{member.name}(self, value:{undouble_type(member.type_)})->None:pass"
    res = generate_newline(res)

    return res


def generate_members_of_class(class_):
    res = ""
    if class_["name"] in core_classes.keys():
        for member in core_classes[class_["name"]].core_members:
            res += generate_member_getter(class_["name"], member)
            res = generate_newline(res)
            res += generate_member_setter(class_["name"], member)
    return res


def simplify_type(type):
    list_types = type.split(",")
    return list_types[-1]


def generate_property(property, class_):
    result = ""
    result += f"{INDENT}@property"
    result = generate_newline(result)
    result += f"{INDENT}def {pythonize_name(property['name'])}(self)->{ungodottype_type_array(unbitfield_type(unenumize_type((property['type']))), class_['name'])}: pass"
    result = generate_newline(result)

    if "setter" in property and property["setter"] != "":
        result += f"{INDENT}@{pythonize_name(property['name'])}.setter"
        result = generate_newline(result)
        result += f"{INDENT}def {pythonize_name(property['name'])}(self,  value:{ungodottype_type_array(untypearray(simplify_type(property['type'])), class_['name'])})->None: pass"
        result = generate_newline(result)

    return result


def pythonize_name(name):
    if name in ("from", "len", "in", "for", "with", "class", "pass", "raise", "global"):
        return name + "_"
    return name


def unbitfield_type(arg_type):
    if arg_type.startswith("bitfield::"):
        return "int"
    return arg_type


def ungodottype(type_):
    if (type_ == "String"):
        return "str"
    if (type_ == "Variant"):
        return "object"
    elif type_ in builtin_classes - {"float", "int", "Nil", "bool"}:
        if not is_core:
            return f"__core__.{type_}"
        else:
            return type_
    elif type_ in typed_arrays_names:
        return f"__typedarrays__.{type_}"
    if (type_ in classes):
        return f"__{type_.lower()}__.{type_}"

    return type_


def ungodottype_type_array(type_, class_name):
    if type_ == None:
        return "None"
    if (type_ == "String"):
        return "str"
    if (type_ == "Variant"):
        if class_name in typed_arrays_names:
            typed_array_type = class_name.replace("TypedArray", "")

            if typed_array_type in builtin_classes - {"float", "int", "Nil", "bool"}:
                if not is_core:
                    return f"__core__.{typed_array_type}"
                else:
                    return {typed_array_type}
            elif (typed_array_type in classes):
                return f"__{typed_array_type.lower()}__.{typed_array_type}"
            return typed_array_type
        return "object"
    elif type_ in builtin_classes - {"float", "int", "Nil", "bool"}:
        if not is_core:
            return f"__core__.{type_}"
        else:
            return type_
    elif type_ in typed_arrays_names:
        return f"__typedarrays__.{type_}"
    if (type_ in classes):
        return f"__{type_.lower()}__.{type_}"

    return type_


def generate_args(class_, method_with_args):
    result = "self, "
    if (is_static(method_with_args)):
        result = ""
    if "arguments" not in method_with_args:
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if not arg["type"].startswith("enum::"):
            if class_["name"] not in typed_arrays_names:
                result += f"{pythonize_name(arg['name'])}:{ungodottype(untypearray(unbitfield_type(arg['type'])))}{generate_default_arg(arg, arg['type'])}, "
            else:
                result += f"{pythonize_name(arg['name'])}:{ungodottype_type_array(untypearray(unbitfield_type(arg['type'])), class_['name'])}{generate_default_arg(arg, arg['type'])}, "

        else:
            # enums are marked with enum:: . To be able to use this, we have to strip this
            result += f"{pythonize_name(arg['name'])}:{ungodottype(untypearray(unenumize_type(arg['type'])))} {generate_default_arg(arg, arg['type'])}, "
    result = result[:-2]
    return result


def generate_default_arg(arg, arg_type):
    set_to_iterate = builtin_classes.union(classes) - {"int", "float", "bool", "Nil"}
    if "default_value" in arg:
        if arg_type in set_to_iterate:
            if arg_type in builtin_classes:
                if not is_core:
                    return f"= __core__.{arg_type}.new0()"
                else:
                    return f"= {arg_type}.new0()"
            else:
                return f"= __{arg_type.lower()}__.{arg_type}.constructor()"
        else:
            return f"={pythonize_boolean_types(unref_type(unnull_type(arg['default_value'])))}"

    return ""


def unenumize_type(type_):
    if "enum::" in type_:
        return "int"
    return type_


def untypearray(type_):
    # TODO improve this by creating actually typed arrays
    if "typedarray" in type_:
        return "Array"
    return type_


def get_class_from_enum(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    return type_list[0]


def get_classes_to_import(classes):
    classes_to_import = set()
    for class_ in classes:
        if ("inherits" in class_.keys()):
            classes_to_import.add(class_["inherits"])
        if "methods" in class_.keys():
            for method in class_["methods"]:
                if ("return_value" in method.keys()):
                    if (unbitfield_type(get_class_from_enum(method["return_value"]["type"])) in normal_classes):
                        classes_to_import.add(get_class_from_enum(method["return_value"]["type"]))
                if ("arguments" not in method.keys()):
                    continue
                for argument in method["arguments"]:
                    if argument["type"] in normal_classes:
                        classes_to_import.add(argument["type"])
                    if "enum" in argument["type"]:
                        type = argument["type"].lstrip("enum::")
                        if type.split(".")[0] in normal_classes:
                            classes_to_import.add(type.split(".")[0])

        if "properties" in class_.keys():
            for prop in class_["properties"]:

                if simplify_type(prop["type"]) in normal_classes:
                    classes_to_import.add(simplify_type(prop["type"]))

    return classes_to_import


def generate_constructor(classname):
    res = ""
    res += f"{INDENT}@staticmethod"
    res = generate_newline(res)
    res += f"{INDENT}def constructor()->{classname}:pass"
    res = generate_newline(res)
    return res


def unvariant_type(type_):
    if type_ == "Variant":
        return "object"
    return type_


def collect_right_types(operator):
    res = ""
    for right_type in operator.right_type_values:
        res += unvariant_type(ungodottype(right_type)) + "|"
    return res[:-1]


def get_parameters_operator(operator):
    if len(operator.right_type_values) > 0:
        return f"self, other:{collect_right_types(operator)}"
    return "self"


def generate_operators_for_class(class_name):
    res = ""
    if class_name in operator_dict.keys():
        for operator in operator_dict[class_name]:
            if operator in operator_to_method.keys():
                op = operator_dict[class_name][operator]
                res += f"{INDENT}def {operator_to_method[operator]}({get_parameters_operator(operator_dict[class_name][operator])}) -> {op.return_type}: pass"
                res = generate_newline(res)
    res = generate_newline(res)
    return res


def generate_classes(classes, filename, is_core=False, is_typed_array=False):
    res = generate_import()
    res = generate_newline(res)
    if is_typed_array:
        res += generate_class_imports(get_classes_to_import(classes))
        res = generate_newline(res)
        for cls in classes:
            typed_array_type = cls["name"].replace("TypedArray", "")
            if typed_array_type in builtin_classes:
                continue
            res += f"import py4godot.classes.{typed_array_type}.{typed_array_type} as __{typed_array_type.lower()}__"
            res = generate_newline(res)
    elif not is_core:
        res += generate_class_imports(get_classes_to_import(classes))
        res = generate_newline(res)
    else:
        res += "import py4godot.classes.Object.Object as __object__"
        res = generate_newline(res)
    for class_ in classes:
        if (class_["name"] in IGNORED_CLASSES):
            continue
        res = generate_newline(res)
        res += f"class {class_['name']}({get_base_class(class_)}):"
        res = generate_newline(res)
        if (is_core):
            res = generate_newline(res)
            res += generate_init(class_)
        if not is_core:
            res += generate_signals(class_)
            res = generate_newline(res)
        res += generate_common_methods(class_)
        res += generate_special_methods(class_)
        res = generate_newline(res)
        res += generate_construction(class_)
        res = generate_newline(res)
        if "methods" not in class_.keys():
            continue
        res += generate_properties(class_)
        res += generate_members_of_class(class_)
        for method in class_["methods"]:
            if native_structs_in_method(method):
                # TODO: Check if this makes sense
                continue
            res += generate_method(class_, method)
            res = generate_newline(res)
        res += generate_operators_for_class(class_["name"])
    if (os.path.exists(filename)):
        with open(filename, "r") as already_existing_file:
            if already_existing_file.read() == res:
                return
    with open(filename, "w") as f:
        f.write(res)


def generate_dictionary_set_item():
    res = ""
    res += f"{INDENT}def __setitem__(self, value:object, key:object)->None:pass"
    res = generate_newline(res)
    return res


def generate_dictionary_get_item():
    res = ""
    res += f"{INDENT}def __getitem__(self,  key:None)->object: pass"
    res = generate_newline(res)
    return res


def generate_special_methods_dictionary():
    res = ""
    res += generate_dictionary_set_item()
    res = generate_newline(res)
    res += generate_dictionary_get_item()
    return res


def generate_array_set_item(class_):
    res = ""
    res += f"{INDENT}def __setitem__(self, value:object,  index:int) -> None: pass"
    res = generate_newline(res)
    return res


def generate_array_get_item(class_):
    res = ""
    res += f"{INDENT}def __getitem__(self,  index:int)->object:pass"
    res = generate_newline(res)
    return res


def generate_iter_array(class_):
    res = ""
    res += f"{INDENT}def __iter__(self)->{class_['name']}:pass"
    return res


def generate_next_from_type_array(classname, type_):
    res = ""
    res += f"{INDENT}def __next__(self)->{type_}:pass"
    res = generate_newline(res)

    return res


def generate_next_for_arrays(class_):
    res = ""
    if class_["name"] == "PackedInt32Array":
        res += generate_next_from_type_array(class_["name"], "int")
    elif class_["name"] == "PackedInt64Array":
        res += generate_next_from_type_array(class_["name"], "int")
    elif class_["name"] == "PackedFloat32Array":
        res += generate_next_from_type_array(class_["name"], "float")
    elif class_["name"] == "PackedFloat64Array":
        res += generate_next_from_type_array(class_["name"], "float")
    elif class_["name"] == "PackedBoolArray":
        res += generate_next_from_type_array(class_["name"], "bool")

    elif class_["name"] == "PackedColorArray":
        res += generate_next_from_type_array(class_["name"], "Color")
    elif class_["name"] == "PackedVector3Array":
        res += generate_next_from_type_array(class_["name"], "Vector3")
    elif class_["name"] == "PackedVector2Array":
        res += generate_next_from_type_array(class_["name"], "Vector2")
    elif class_["name"] == "PackedStringArray":
        res += generate_next_from_type_array(class_["name"], "String")

    elif class_["name"] == "Array":
        res += generate_next_array(class_["name"])

    res = generate_newline(res)
    return res


def generate_next_array(class_):
    res = ""
    res += f"{INDENT}def __next__(self)->object:pass"
    res = generate_newline(res)

    return res


def generate_special_methods_array(class_):
    res = ""
    res += generate_array_set_item(class_)
    res = generate_newline(res)
    res += generate_array_get_item(class_)
    res = generate_newline(res)
    res += generate_iter_array(class_)
    res = generate_newline(res)
    res += generate_next_for_arrays(class_)
    return res


def generate_get_pyscript():
    res = f"{INDENT}def get_pyscript(self)->Object:pass"
    res = generate_newline(res)
    return res


def generate_special_methods(class_):
    res = ""
    if class_["name"] == "Dictionary":
        res += generate_special_methods_dictionary()

    if "array" in class_["name"].lower():
        res += generate_special_methods_array(class_)

    if class_["name"] == "Object":
        res += generate_get_pyscript()

    if class_["name"] in classes - builtin_classes:
        res += generate_cast(class_["name"])
    return res


def generate_operators_set(class_):
    for operator in class_["operators"]:
        print(operator)
        if not class_["name"] in operator_dict.keys():
            operator_dict[class_["name"]] = dict()
        if not operator["name"] in operator_dict[class_["name"]]:
            operator_dict[class_["name"]][operator["name"]] = Operator(class_["name"], operator["name"],
                                                                       operator["return_type"])
        if "right_type" in operator.keys():
            operator_dict[class_["name"]][operator["name"]].right_type_values.append(operator["right_type"])


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

def generate_signals(cls):
    if not "signals" in cls.keys():
        return ""
    res = ""
    for signal in cls["signals"]:
        res += f"{INDENT}{signal['name']}: BuiltinSignal"
        res = generate_newline(res)
    return res

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
    return (name.split("::")[1] + "TypedArray").replace("24/17:", "")


classes = set()

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
        collect_members(obj)

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

        for class_ in obj["builtin_classes"]:
            generate_operators_set(class_)
        for class_ in obj["classes"]:
            generate_classes([class_], f"py4godot/classes/{class_['name']}.pyi")

        is_core = True
        generate_classes(arrays, f"py4godot/classes/typedarrays.pyi", is_core=False, is_typed_array=True)
        generate_classes(obj["builtin_classes"], f"py4godot/classes/core.pyi", is_core=True)
