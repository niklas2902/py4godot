import re
import warnings

string_to_parse = """
void (*godot_dictionary_new)(godot_dictionary *r_dest);
void (*godot_dictionary_new_copy)(godot_dictionary *r_dest, const godot_dictionary *p_src);
void (*godot_dictionary_destroy)(godot_dictionary *p_self);
godot_int (*godot_dictionary_size)(const godot_dictionary *p_self);
godot_bool (*godot_dictionary_empty)(const godot_dictionary *p_self);
void (*godot_dictionary_clear)(godot_dictionary *p_self);
godot_bool (*godot_dictionary_has)(const godot_dictionary *p_self, const godot_variant *p_key);
godot_bool (*godot_dictionary_has_all)(const godot_dictionary *p_self, const godot_array *p_keys);
void (*godot_dictionary_erase)(godot_dictionary *p_self, const godot_variant *p_key);
godot_int (*godot_dictionary_hash)(const godot_dictionary *p_self);
godot_array (*godot_dictionary_keys)(const godot_dictionary *p_self);
godot_array (*godot_dictionary_values)(const godot_dictionary *p_self);
godot_variant (*godot_dictionary_get)(const godot_dictionary *p_self, const godot_variant *p_key);
void (*godot_dictionary_set)(godot_dictionary *p_self, const godot_variant *p_key, const godot_variant *p_value);
godot_variant *(*godot_dictionary_operator_index)(godot_dictionary *p_self, const godot_variant *p_key);
const godot_variant *(*godot_dictionary_operator_index_const)(const godot_dictionary *p_self, const godot_variant *p_key);
godot_variant *(*godot_dictionary_next)(const godot_dictionary *p_self, const godot_variant *p_key);
godot_bool (*godot_dictionary_operator_equal)(const godot_dictionary *p_self, const godot_dictionary *p_b);
godot_string (*godot_dictionary_to_json)(const godot_dictionary *p_self);
"""
class_python = "Dictionary"
class_ = "godot_dictionary"
dict_core = {"godot_pool_byte_array": "PoolByteArray", "godot_pool_real_array": "PoolRealArray","godot_aabb":"AABB",
             "godot_pool_int_array": "PoolIntArray", "godot_string":"String", "godot_pool_string_array":"PoolStringArray",
             "godot_vector2":"Vector2", "godot_vector3":"Vector3", "godot_pool_vector3_array":"PoolVector3Array",
             "godot_pool_color_array":"PoolColorArray","godot_quat":"Quat", "godot_plane":"Plane","godot_dictionary":"Array",
             "godot_color":"Color","godot_rect2":"Rect2", "godot_vector3_axis":"Vector3_Axis", "godot_basis":"Basis", "godot_variant":"Variant",
             "godot_string_name":"StringName", "godot_transform":"Transfrom", "godot_transform2d":"Transform2D"}
godot_types = {"godot_int":"int", "godot_real":"float", "godot_string":"str", "godot_bool":"bool"}


def generate_args(line):
    # generating def append_array(self, const godot_pool_byte_array *p_array):
    global found_init
    result = ""
    is_static = False
    line = line.lstrip()
    res_expression = re.match("(.+?).*?\(\*(.+?)\)\((.+?)\)", line)
    # print(res_expression)
    if res_expression is not None:
        result += f"def {res_expression.group(2).replace(class_ + '_', '')}"
        result += "("
        self_set = False
        for arg in res_expression.group(3).split(", "):
            if "p_self" in arg:
                result += "self, "
                self_set = True
            else:
                if not self_set:
                    #TODO: Improve this expression
                    is_static = True
                    if not found_init:
                        result +="self,"
                        found_init = True
                        result = result.replace("new", "__init__")
                        continue

                if arg.split(" ")[-2] in dict_core:
                    arg = arg.replace(arg.split(" ")[-2] + " *", dict_core[arg.split(" ")[-2]]+" ")

                arg = arg.replace("const ", "").replace("p_", "")
                arg_array = arg.split(" ")

                arg_array[0] = convert_type(arg_array[0])

                result += arg_array[1]+":"+arg_array[0] + ", "
        result = result.rstrip(", ")
        result += ")"
        result += "->" + convert_type(line.split(" ")[0].replace("void", "None"))
        result += ":"
    else:
        warnings.warn(f"Following line could not be generated:{line}")

    if is_static and not found_init:
        result = "@staticmethod\n  "+result
    return result

def generate_method_body(line):
    # generating def append_array(self, const godot_pool_byte_array *p_array):
    result = "pass"
    return result

def convert_type(type_):
    if type_ in godot_types:
        return godot_types[type_]
    if type_ in dict_core:
        return dict_core[type_]
    return type_

found_init = False
generated_file = "class "+class_python+":\n"
for line in string_to_parse.split("\n"):
    if line.strip() == "":
        continue
    generated_file += "  "+generate_args(line)
    generated_file += generate_method_body(line)
    generated_file += "\n"

generated_file = generated_file.replace("as_string", "__str__")
print(generated_file)