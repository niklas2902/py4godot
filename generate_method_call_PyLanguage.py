import json

builtin_classes = []
def generate_methods(class_):
    print(class_, class_.keys())
    for method in class_["methods"]:
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


def generate_args_array(method):
    res = ""
    if "arguments" in method.keys():
        for i in range(len(method["arguments"])):
            res += f"args.append(dereference(p_args + {i}))\n    "
    return res

def generate_ret_val(method):
    if "return_value" in method.keys():
        return method["return_value"]["type"]
    else:
        return "object"

def get_ret_val(method):
    if "return_value" in method.keys():
        return method["return_value"]["type"]
    else:
        return "void"

def generate_set_ret_val(method):
    str = ""
    if "return_value" in method.keys():
        if method["return_value"]["type"] in builtin_classes:
            str =  """     cdef GDNativeTypePtr ret_ptr = ret_val.godot_owner\n"""
        else :
            str =  """     cdef GDNativeTypePtr ret_ptr = &ret_val.godot_owner\n"""

        str += "    r_ret = ret_ptr"

    return str

def generate_binding_for_method(method):
    str = f"""
cdef void* call_virtual_func_{method['name']}(GDExtensionClassInstancePtr p_instance, GDNativeConstTypePtr *p_args, GDNativeTypePtr r_ret) with gil:
    cdef PyLanguage pylanguage = <PyLanguage> p_instance
    print_warning("call_virtual")
    cdef args = []
    {generate_args_array(method)}
    
    cdef {generate_ret_val(method)} ret_val = pylanguage.{method["name"]}(*args)
"""
    str += generate_set_ret_val(method)
    str += f"""
cdef StringName func_name_get_{method["name"]} = c_string_to_string_name("{method["name"]}")
cdef GDNativeExtensionClassCallVirtual call_virtual_{method["name"]}_def = <GDNativeExtensionClassCallVirtual>call_virtual_func_{method["name"]}
    """

    return str


if __name__ == "__main__":
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)

    builtin_classes = [cls["name"] for cls in obj["builtin_classes"]]

    for cls in obj["classes"]:
        if cls["name"] == "ScriptLanguageExtension":
            generate_methods(cls)