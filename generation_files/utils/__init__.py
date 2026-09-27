

def unnull_type(value_to_return):
    if value_to_return == "null":
        return "None"
    return value_to_return


def unnull_type_for_given_type(value_to_return, type_):
    if value_to_return == "null":
        if type_ in ("float", "int"):
            return "0"
        elif type_ == "bool":
            return "False"
        return "None"
    return value_to_return


def pythonize_boolean_types(arg_val):
    if arg_val == "true":
        return "True"
    elif arg_val == "false":
        return "False"
    return arg_val


def unref_type(arg_val):
    if ("&" in arg_val):
        return '""'
    return arg_val

class ReturnType:
    def __init__(self, name, type_):
        self.type = type_
        self.name = name
        self.is_primitive = False

def generate_typed_array_name(name):
    return (name.split("::")[1] + "TypedArray").replace("24/17:", "").replace("27/0:TypedArray", "DictionaryTypedArray")

def untypearray_or_dictionary(type_):
    # TODO improve this by creating actually typed arrays
    if "typeddictionary" in type_:
        return "Dictionary"
    if "typedarray" in type_:
        return generate_typed_array_name(type_)
    return type_


def import_type(type_, classname, builtin_classes):
    if type_ == classname:
        return type_
    if type_ in builtin_classes:
        return type_
    elif type_ == "PyVariant":
        return type_
    elif type_ == "object":  # TODO merge with PyVariant
        return type_
    elif type_ == "Object":
        return type_
    elif type_ == "str":
        return type_
    elif "TypedArray" in type_:
        return "py4godot_" + untypearray_or_dictionary(type_).lower()+ "." + type_
    return "py4godot_" + type_.lower() + "." + type_

def generate_newline(str_):
    return str_ + "\n"