import json

exclude_words = ["import", "raise", "class", "from", "pass", "with", "global", "print", "short"]

def generate_properties(obj):
    result = ""
    if(len(obj["properties"])):
        result += "\n##################################Generated Properties#########################################\n"
        for property in obj["properties"]:
            result += "  @property\n"
            result += f"  def {property['name'].replace('/','_')}(self): \n"
            result += f"    return self.get_{property['name'].replace('/','_')}()\n"
            result += f"  @{property['name'].replace('/','_')}.setter \n"
            result += f"  def {property['name'].replace('/','_')}(self,value): \n"
            result += f"    self.set_{property['name'].replace('/','_')}(value)\n"
    return result

def generate_methods(obj):
    result = ""
    if(len(obj["methods"])):
        result += "\n##################################Generated Methods#########################################\n"
        for method in obj["methods"]:
            result += f"  def {'' if method['is_const']==False else ''} {method['name'] if method['name'] not in exclude_words else method['name']+'_'}("
            args = "self, "


            for argument in method["arguments"]:

                args += argument["name"] if argument["name"] not in exclude_words else argument["name"]+"_"+", "
            result += args.rstrip(", ") +"):\n"
            result += f"    cdef godot_object *_owner = self.godot_owner\n"
            return_type = method["return_type"]
            if("." in return_type):
                return_type = return_type.split(".")[-1]
            if(return_type != "void"):
                result += f"    cdef {return_type} ret\n"
            result += f"    api_core.godot_method_bind_ptrcall(bind_{obj['name'].lower()}_{method['name']},self.godot_owner,[NULL,],{'&ret' if return_type != 'void' else 'NULL'})\n"
    return result

def generate_method_bindings(obj):
    result = "\n##################################Generated method bindings#########################################\n"
    result += "cdef godot_method_bind *bind\n"
    for method in obj["methods"]:
        result += f"cdef godot_method_bind *bind_{obj['name'].lower()}_{method['name']}\n"
    result += "cpdef init_method_bindings():\n"
    result += '  bind = api_core.godot_method_bind_get_method("Object", "_get")\n'
    for method in obj["methods"]:
        result += f"  bind_{obj['name'].lower()}_{method['name']} = api_core.godot_method_bind_get_method('{obj['name']}', '{method['name']}')\n"
    return result


def generate_classes(obj):
    result = ""
    if(obj["base_class"] != ""):
        result += f"from classes.{obj['base_class']} cimport * \n"
    result += ""
    result += f"\n##################################Import gdnative api#########################################\n"
    result += f"from godot_api.binding cimport *\n"
    result += f"from utils.Wrapper cimport *\n"

    result += generate_method_bindings(obj)

    result += "\n############################Generated class###################################\n"

    result += f"""cdef class {obj['name']}({obj['base_class']}{""if obj['base_class'] != "" else "Wrapper"}):\n"""
    result += f"""  def __init__(self):\n"""
    result += f"""    super().__init__()\n"""
    result += f"""    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("{obj["name"]}")())"""

    result += generate_properties(obj)
    result +=generate_methods(obj)
    generate_pxd(obj["name"], obj["base_class"])
    return result

def generate_pxd(class_, base_class):
    with open(f"classes/{class_}.pxd", "w") as headerFile:
        if(class_ == "Object"):
            headerFile.write(f"""
from godot_api.binding cimport *
from utils.Wrapper cimport *
cdef class Object(Wrapper):
    pass""")
        else:
            if(base_class != ""):
                headerFile.write(f"""
from godot_api.binding cimport *
from classes.{base_class} cimport *
cdef class {class_}({base_class}):
    pass""")
            else:
                headerFile.write(f"""
from godot_api.binding cimport *
from utils.Wrapper cimport *
cdef class {class_}(Wrapper):
    pass""")



# read file
with open('headers/api.json', 'r') as myfile:
    data=myfile.read()
    obj = json.loads(data)


for element in obj:
    if(element["name"].startswith("_")):
        continue
    with open(f"classes/{element['name']}.pyx", "w") as generateFile:
        generateFile.write(generate_classes(element))