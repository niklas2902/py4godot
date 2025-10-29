import json
import os

from generation_files.generate_call_static_methods import generate_newline
from generation_files.generation_tools import write_if_different

structs_with_fields = set()
type_matching_dict = {"int32": "int32_t"}

def get_type(type_:str)->str:
    if type_ in type_matching_dict:
        return type_matching_dict[type_]
    return type_
INDENT = "  "
def generate_structs(configruation):
    global structs_with_fields
    res = ""
    for cls in configruation["classes"]:
        res += f"{INDENT}struct {cls['name']}{{"
        res = generate_newline(res)
        structs_with_fields.add(cls["name"])
        for member in cls["members"]:
            res += f"{INDENT*2}{get_type(member['meta'])} {member['member']};"
            res = generate_newline(res)
        res += f"{INDENT}}};"
        res = generate_newline(res)

    return res
def generate_text(obj):
    res = ""
    res += "#ifndef INNER_STRUCTS"
    res = generate_newline(res)
    res += "#define INNER_STRUCTS"
    res = generate_newline(res)
    res += "#include <cstdint>"
    res = generate_newline(res)
    res += "namespace native_structs{"
    res = generate_newline(res)
    res += generate_structs(obj["builtin_class_member_offsets"][0])
    res = generate_newline(res)
    res += "}"
    res = generate_newline(res)
    res += "#endif  // INNER_STRUCTS"
    return res
if __name__ == "__main__":
    os.chdir("..")
    with open('py4godot/gdextension-api/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        text = generate_text(obj)
        write_if_different("py4godot/cppclasses/native_structs.h", text)
