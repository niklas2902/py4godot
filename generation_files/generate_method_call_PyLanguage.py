import json

builtin_classes = []
CLASS_NAME = "ScriptExtension"
CURRENT_CLASS_NAME = "PyScriptExtension"
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
            res += f"{unvoid_return(untypearray(untypearray(method['arguments'][i]['type'])))} args{i} = {generate_dereference_type(i, untypearray(untypearray(method['arguments'][i]['type'])))};\n    "
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
    str += "r_ret"
    return str

def generate_dereference_type(index,type_):
    if (type_ in builtin_classes):
        return f"{type_}::new_static(const_cast<GDExtensionStringPtr*>(p_args + {index}))"
    elif "void" in type_:
        return f"(p_args + {index})"
    else:
        return f"*(({type_}*)(p_args + {index}))"

def get_arg_type(type_):
    if "bool" in type_:
        return "uint8_t"
    return type_

def generate_set_ret_val(method):
    str = ""

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
            return f"""void* obj = pylanguage->{method["name"]}({generate_method_call_args(method)})"""
    return ""

def generate_binding_for_method(method):
    str = f"""
void call_virtual_func_{method['name']}(GDExtensionClassInstancePtr p_instance, const GDExtensionConstTypePtr* p_args, GDExtensionTypePtr r_ret) {{
    {CURRENT_CLASS_NAME}* pylanguage = static_cast<{CURRENT_CLASS_NAME}*> (p_instance);
    {generate_args_array(method)}
    {pregenerate_method(method)}
    
    """
    if ("return_value" in method):
        if "void*" in method["return_value"]["type"]:
            str += f""" {generate_ret_val(method)} ret_val = obj\n"""
        else:
            str += f"""pylanguage->{method["name"]}({generate_method_call_args(method)});\n"""
    else:
        str += f"""pylanguage->{method["name"]}({generate_method_call_args(method)});\n"""
    str += generate_set_ret_val(method)
    str += "}\n"
    str += f"""
StringName func_name_{method["name"]} = c_string_to_string_name("{method["name"]}");
    """

    return str

def generate_method_string_name(method):
    return f'func_name_{method["name"]} = c_string_to_string_name("{method["name"]}")';

if __name__ == "__main__":
    with open('../py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)

    normal_classes = [cls["name"] for cls in obj["classes"]]
    builtin_classes = [cls["name"] for cls in obj["builtin_classes"]]
    builtin_classes += ["Object", "Variant"]
    builtin_classes.remove("bool")
    builtin_classes.remove("int")
    builtin_classes.append("Array")

    for cls in obj["classes"]:
        if cls["name"] == CLASS_NAME:
            generate_methods(cls)

    for cls in obj["classes"]:
        if cls["name"] == CLASS_NAME:
            for method in cls["methods"]:
                if are_forbidden_types_in_method(method):
                    continue
                else:
                    print(f"""
    else if (string_names_equal(func_name_{method['name']}, name)){{
        return call_virtual_func_{method['name']};
    }}""".replace("[", "{").replace("]", "}"))
            print ("void init_func_names(){")
            for method in cls["methods"]:
                if not are_forbidden_types_in_method(method):
                    print(generate_method_string_name(method))
            print("}")