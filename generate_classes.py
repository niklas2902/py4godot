import json
import os.path

INDENT = "  "


class ReturnType:
    def __init__(self, name, type_):
        self.type = type_
        self.name = name
        self.is_primitive = False


IGNORED_CLASSES = {"Nil", "bool", "float", "int"}

ACCEPTED_CLASSES = {"Object", "String"}

native_structs = {}
forbidden_types = {"cont void*", "void*"}
normal_classes = set()

def generate_import():
    result = \
        """from py4godot.utils.Wrapper4 cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.enums.enums4 cimport *
from py4godot_core_holder.core_holder cimport *
"""
    return result

def generate_class_imports(classes):
    result = "from py4godot.classes.generated4_core cimport *"
    result = generate_newline(result)
    for class_ in classes:
        result += f"from py4godot.classes.{class_}.{class_} cimport *"
        result = generate_newline(result)
    return result


def generate_header_statements():
    res = "gdnative_interface = get_interface()"
    res = generate_newline(res)
    return res

def generate_newline(str_):
    return str_ + "\n"


def generate_return_value(method_):
    result = ""
    if "return_value" in method_.keys():
        ret_val = ReturnType("_ret", method_['return_value']['type'])
        if ret_val.type in classes:
            result += f"{INDENT * 2}cdef {ret_val.type} {ret_val.name} = {ret_val.type}()"
        elif ret_val.type == "Variant":
            result += f"{INDENT * 2}cdef {ret_val.type} {ret_val.name} = {ret_val.type}()"
        else:
            result += f"{INDENT * 2}cdef {unbitfield_type(unenumize_type(ret_val.type))} {ret_val.name}"
    else:
        result += f"{INDENT * 2}cdef GDNativeTypePtr _ret = NULL"
    return result

def get_base_class(class_):
    if "inherits" in class_.keys():
        return class_["inherits"]
    return "Wrapper4"

def strip_symbols_from_type(type):
    return type.replace("*","").replace("const","").strip()
def native_structs_in_method(mMethod):
    #TODO: check whether this method makes sense for later
    if("arguments" in mMethod):
        for arg in mMethod["arguments"]:
            if arg["type"] in forbidden_types:
                return True
            if("*" in arg["type"]):
                return True
            if strip_symbols_from_type(arg["type"]) in native_structs:
                return True
    if "return_value" in mMethod.keys():
        if mMethod["return_value"]["type"] in forbidden_types:
            return True
        if strip_symbols_from_type(mMethod["return_value"]["type"]) in native_structs:
            return True
    return False

def is_primitive(type_):
    return type_ in obj["classes"]


def generate_return_statement():
    # TODO handle primitive types
    return f"return ret"


def generate_error():
    return f"{INDENT * 2}cdef GDNativeCallError _error"


def generate_method_bind_name(class_name, method_name):
    return f"method_bind__{class_name}_{method_name}"


def generate_method_binds(current_class):
    res = ""
    if not "methods" in current_class.keys():
        return ""
    for mMethod in current_class["methods"]:
        if ("hash" not in mMethod.keys()):
            continue
        res += f"""cdef GDNativeMethodBindPtr {generate_method_bind_name(current_class['name'], mMethod['name'])} = """ + \
               f"""gdnative_interface.classdb_get_method_bind("{current_class['name']}",""" + \
               f""""{mMethod['name']}", {mMethod['hash']})"""
        res = generate_newline(res)
    return res


def generate_virtual_return_type(return_type):
    if return_type == "bool":
        return "False"
    elif return_type == "int":
        return "0"
    elif return_type == "String":
        return "String()"

    return return_type+"()"
def generate_method_body_virtual(class_, mMethod):
    res = ""
    if "return_type" in mMethod.keys():
        res += f"{INDENT*2}return {generate_virtual_return_type(mMethod['return_type'])}"
    else:
        res += f"{INDENT*2}pass"
    res = generate_newline(res)
    return res


def generate_method(class_, mMethod):
    res = ""
    args = generate_args(mMethod)
    def_function = f"{INDENT}def {pythonize_name(mMethod['name'])}({args}):"
    res += def_function
    res = generate_newline(res)
    if("hash" in mMethod.keys()):
        res += generate_method_body_standard(class_, mMethod)
    else:
        res += generate_method_body_virtual(class_, mMethod)
    res = generate_newline(res)
    return res


def generate_ret_value_assign(argument):
    if argument["type"] in classes:
        return f"{pythonize_name(argument['name'])}.get_godot_owner()"
    elif argument["type"] == "Variant":
        return f"{pythonize_name(argument['name'])}.get_native_ptr()"
    return f"&{pythonize_name(argument['name'])}"


def generate_args_array(method):
    if 'arguments' not in method.keys():
        return f"{INDENT * 2}cdef GDNativeVariantPtr _args[1]"
    result = f"{INDENT * 2}cdef void* _args[{len(method['arguments'])}]"
    result = generate_newline(result)
    for i in range(0, len(method['arguments'])):
        result += f"{INDENT * 2}_args[{i}] = {generate_ret_value_assign(method['arguments'][i])}"
        result = generate_newline(result)
    return result


def generate_method_body_standard(class_, method):
    number_arguments = 0
    result = ""
    if 'arguments' in method.keys():
        number_arguments = len(method['arguments'])

    result += generate_args_array(method)
    result = generate_newline(result)
    result += generate_return_value(method)
    result = generate_newline(result)

    result += generate_error()
    result = generate_newline(result)
    result += f"{INDENT * 2}gdnative_interface.object_method_bind_call({generate_method_bind_name(class_['name'], method['name'])}," \
              f" self.godot_owner, _args, {number_arguments}, {address_ret(method)}, &_error)"

    if ("return_value" in method.keys() and is_primitive(method['return_value']['type'])):
        result += generate_return_statement()
    return result


def address_ret(method):
    if "return_value" in method.keys():

        if method["return_value"]["type"] in classes:
            return "_ret.get_godot_owner()"
        if method["return_value"]["type"] == "Variant":
            return "_ret.get_native_ptr()"
        return "&_ret"
    return "NULL"


def generate_common_methods(class_):
    result = generate_constructor(class_["name"])
    return result

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

def generate_properties(class_):
    result = ""
    if("properties" in class_.keys()):
        for property in class_["properties"]:
            result += generate_property(property)
    return result

def simplify_type(type):
    list_types = type.split(",")
    return list_types[-1]
def generate_property(property):
    result = ""
    result += f"{INDENT}@property"
    result = generate_newline(result)
    result += f"{INDENT}def {pythonize_name(property['name'])}(self):"
    result = generate_newline(result)
    result += f"{INDENT * 2}return self. {pythonize_name(property['getter'])}()"
    result = generate_newline(result)

    if property["setter"] != "":
        result += f"{INDENT}@{pythonize_name(property['name'])}.setter"
        result = generate_newline(result)
        result += f"{INDENT}def {pythonize_name(property['name'])}(self, {simplify_type(property['type'])} value):"
        result = generate_newline(result)
        result += f"{INDENT * 2}self.{pythonize_name(property['setter'])}(value)"
        result = generate_newline(result)
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

def generate_args(method_with_args):
    result = "self, "
    if "arguments" not in method_with_args:
        return result[:-2]

    for arg in method_with_args["arguments"]:
        if not arg["type"].startswith("enum::"):
            result += f"{unbitfield_type(arg['type'])} {pythonize_name(arg['name'])}, "
        else:
            #enums are marked with enum:: . To be able to use this, we have to strip this
            arg_type = arg["type"].replace("enum::", "")
            result += f"{unenumize_type(arg_type)} {pythonize_name(arg['name'])}, "
    result = result[:-2]
    return result

def unenumize_type(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    if len(type_list) > 1:
        return type_list[0]+ "__" + type_list[1]
    return type_list[0]

def get_class_from_enum(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    return type_list[0]
def get_classes_to_import(classes):
    classes_to_import = set()
    for class_ in classes:
        if( "inherits" in class_.keys()):
            classes_to_import.add(class_["inherits"])
        if "methods" in class_.keys():
            for method in class_["methods"]:
                if("return_value" in method.keys()):
                    if(unbitfield_type(get_class_from_enum(method["return_value"]["type"])) in normal_classes):
                        classes_to_import.add(get_class_from_enum(method["return_value"]["type"]))
                if("arguments" not in method.keys()):
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
    res += f"{INDENT}def constructor():"
    res = generate_newline(res)
    res += f"{INDENT*2}cdef {classname} class_ = {classname}()"
    res = generate_newline(res)
    res += f"{INDENT*2}class_.set_godot_owner(gdnative_interface.classdb_construct_object(\"{classname}\"))"
    res = generate_newline(res)
    res += f"{INDENT*2}gdnative_interface.object_set_instance(class_.get_godot_owner(),\"{classname}\" , <void*>class_)"
    res = generate_newline(res)
    return res

def generate_classes(classes, filename, is_core=False):
    res = generate_import()
    res = generate_newline(res)
    if not is_core:
        res += generate_class_imports(get_classes_to_import(classes))
        res = generate_newline(res)
    else:
        res += "from py4godot.classes.Object.Object cimport *"
        res = generate_newline(res)
    res += generate_header_statements()
    for class_ in classes:
        if (class_["name"] in IGNORED_CLASSES):
            continue
        res += generate_method_binds(class_)
        res = generate_newline(res)
        res += f"cdef class {class_['name']}({get_base_class(class_)}):"
        res = generate_newline(res)
        res += generate_common_methods(class_)
        res = generate_newline(res)
        if "methods" not in class_.keys():
            continue
        res += generate_properties(class_)
        for method in class_["methods"]:
            if native_structs_in_method(method):
                # TODO: Check if this makes sense
                continue
            res += generate_method(class_, method)
            res = generate_newline(res)

    if(os.path.exists(filename)):
        with open(filename, "r") as already_existing_file:
            if already_existing_file.read() == res:
                return
    with open(filename, "w") as f:
        f.write(res)


classes = set()

if __name__ == "__main__":
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = set([class_['name'] if class_["name"] not in IGNORED_CLASSES else None for class_ in
                       obj['classes'] + obj["builtin_classes"]])
        normal_classes = set([class_['name'] for class_ in obj['classes']])
        native_structs = set([native_struct["name"] for native_struct in obj["native_structures"]])
        for class_ in obj["classes"]:
            if(not os.path.exists(f"py4godot/classes/{class_['name']}/")):
                os.mkdir(f"py4godot/classes/{class_['name']}/")
            with open (f"py4godot/classes/{class_['name']}/__init__.py", "w"):
                pass
            generate_classes([class_], f"py4godot/classes/{class_['name']}/{class_['name']}.pyx")

        generate_classes(obj["builtin_classes"], f"py4godot/classes/generated4_core.pyx", is_core=True)

