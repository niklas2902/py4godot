import json

builtin_classes = []
def generate_methods(class_):
    for method in class_["methods"]:
        if are_forbidden_types_in_method(method):
            continue
        res = generate_binding_for_method(method)
        print(res)


def get_args_count(method):
    if ("arguments" in method.keys()):
        return len(method["arguments"])
    return 0


def get_type(type_):
    # TODO wotk on this
    return "GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING"


def get_class_name_of_type(type_):
    # TODO work on this
    return "String"


def generate_argument(argument):
    str = f"""
    """
    return str


def generate_return(return_):
    str = f"""
    """
    return str


def has_return_value(method):
    if ("return_value" in method.keys()):
        return 1
    return 0

def unvoid_return(return_type):
    if "void*" in return_type:
        return "object"
    return return_type

def generate_args_array(method):
    res = ""
    if "arguments" in method.keys():
        for i in range(len(method["arguments"])):
            res += f"cdef {unvoid_return(untypearray(untypearray(method['arguments'][i]['type'])))} args{i} = {generate_dereference_type(i, untypearray(untypearray(method['arguments'][i]['type'])))}\n    "
    return res

def generate_ret_val(method):
    if "return_value" in method.keys():
        return untypearray(unenumize_type(method["return_value"]["type"]))
    else:
        return ""

def get_ret_val(method):
    if "return_value" in method.keys():
        return method["return_value"]["type"]
    else:
        return "void"

def unenumize_type(type_):
    enum_type = type_.replace("enum::", "")
    type_list = enum_type.split(".")
    if len(type_list) > 1:
        return type_list[0]+ "__" + type_list[1]
    return type_list[0]

def untypearray(type_):
    if ("typedarray" in type_):
        return "Array"
    return type_

def generate_method_call_args(method):
    str = ""
    if "arguments" in method.keys():
        for i in range(len(method["arguments"])):
            str += f"args{i},"
    return str[:-1]

def generate_dereference_type(index,type_):
    if (type_ in builtin_classes):
        return f"{type_}.new_static(dereference(p_args + {index}))"
    elif "void" in type_:
        return f"<object>dereference(p_args + {index})"
    else:
        return f"<{type_}>dereference(p_args + {index})"

def get_arg_type(type_):
    if "bool" in type_:
        return "uint8_t"
    return type_

def generate_set_ret_val(method):
    str = ""
    if "return_value" in method.keys():
        if untypearray(method["return_value"]["type"]) in builtin_classes + normal_classes:
            str =  """    cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner\n"""
        elif "bool" in method["return_value"]["type"]:
            str  = """    cdef uint8_t bool_res = <uint8_t> int(ret_val)\n"""
            str += """    cdef GDNativeTypePtr ret_ptr = &bool_res\n"""
        
        else :
            str =  """    cdef GDNativeTypePtr ret_ptr = &ret_val\n"""

        str += "    r_ret = ret_ptr"

    return str
def are_forbidden_types_in_method(method):
    if "return_value" in method.keys():
        if "profil" in str(method["return_value"]["type"]).lower():
            return True
    if "arguments" in method.keys():
        for argument in method["arguments"]:
            if "profil" in argument["type"].lower():
                return True
    return False


def pregenerate_method(method):
    if("return_value" in method):
        if "void*" in method["return_value"]["type"]:
            return f"""cdef object obj = <object>pylanguage.{method["name"]}({generate_method_call_args(method)})"""
    return ""

def generate_binding_for_method(method):
    str = f"""
cdef void* call_virtual_func_{method['name']}(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual {method['name']}")
    {generate_args_array(method)}
    {pregenerate_method(method)}
    """
    if ("return_value" in method):
        if "void*" in method["return_value"]["type"]:
            str += f"""cdef {generate_ret_val(method)} ret_val = <void*>obj\n"""
        else:
            str += f"""cdef {generate_ret_val(method)} ret_val = pylanguage.{method["name"]}({generate_method_call_args(method)})\n"""
    else:
        str += f"""pylanguage.{method["name"]}({generate_method_call_args(method)})\n"""
    str += generate_set_ret_val(method)
    str += f"""
cdef StringName func_name_{method["name"]} = c_string_to_string_name("{method["name"]}")
cdef GDNativeExtensionClassCallVirtual call_virtual_{method["name"]}_def = <GDNativeExtensionClassCallVirtual>call_virtual_func_{method["name"]}
    """

    return str


if __name__ == "__main__":
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)

    normal_classes = [cls["name"] for cls in obj["classes"]]
    builtin_classes = [cls["name"] for cls in obj["builtin_classes"]]
    builtin_classes.remove("bool")
    builtin_classes.remove("int")
    builtin_classes.append("Array")

    for cls in obj["classes"]:
        if cls["name"] == "ScriptLanguageExtension":
            generate_methods(cls)

    for cls in obj["classes"]:
        if cls["name"] == "ScriptLanguageExtension":
            for method in cls["methods"]:
                if are_forbidden_types_in_method(method):
                    continue
                else:
                    print(f"""
    elif (string_names_equal(func_name_{method['name']}, name)):
        print_warning("----------------{method['name']}")
        return call_virtual_{method['name']}_def""")