import json

exclude_words = ["import", "raise", "class", "from", "pass", "with", "global", "print", "short","in","args"]

types={"Dictionary": "godot_dictionary", "Variant": "godot_variant", "Array":"godot_array", "String":"godot_string",
       "PoolStringArray":"godot_pool_string_array", "Error":"godot_error", "Reference":"godot_object", "NodePath":"godot_node_path",
       "Vector3":"godot_vector3","Vector2":"godot_vector2", "Plane":"godot_plane", "Mesh":"godot_object", "Basis":"godot_basis", "Transform":"godot_transform",
       "PoolIntArray":"godot_object","PoolVector3Array":"godot_object","PoolVector2Array":"godot_object", "Quat":"godot_quat", "AABB":"godot_aabb"
       ,"Rect2":"godot_rect2", "PoolByteArray":"godot_object", "Transform2D":"godot_transform2d", "PoolColorArray":"godot_object",
       "Color":"godot_color", "RID":"godot_rid", "PoolRealArray":"godot_object", }
core = ["Dictionary", "Array", "Variant", "NodePath", "String", "Vector3", "Vector2", "Plane", "Basis", "Quat",
        "PoolIntArray", "RID", "AABB", "Transform", "PoolByteArray", "Rect2", "PoolVector2Array", "Transform2D", "PoolVector3Array",
        "PoolColorArray", "Color", "RID", "PoolRealArray", "PoolStringArray"]


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

def generate_methods(obj, import_string):
    result = ""
    if(len(obj["methods"])):
        result += "\n##################################Generated Methods#########################################\n"
        for method in obj["methods"]:
            result += f"  def {'' if method['is_const']==False else ''} {method['name'] if method['name'] not in exclude_words else method['name']+'_'}("
            args = "self, "


            for argument in method["arguments"]:
                args += " "+(argument["type"] if not argument["type"] in objects else "classes."+argument["type"]+"."+argument["type"])+" "
                args += (argument["name"] if argument["name"] not in exclude_words else argument["name"]+"_")+", "

                if(argument["type"] in objects):
                    import_string += f"cimport classes.{argument['type']}\n"

            result += args.rstrip(", ") +"):\n"
            result += f"    cdef godot_object *_owner = self.godot_owner\n\n"

            return_type = method["return_type"]
            return_type_save = return_type

            if("." in return_type):
                return_type = return_type.split(".")[-1]

            if(return_type in core):
                print(return_type, obj["name"])
            if(return_type != "void" ):
                if("::" in return_type):
                    import_class,return_type = return_type.split("::")
                    if(import_class != obj["name"] and not import_class in core):
                        import_string += f"cimport classes.{import_class}\n"
                        return_type = import_class+"."+import_class+"_"+return_type
                    else:
                        return_type = import_class+"_"+return_type

                if(return_type in objects):
                    result += f"    cdef godot_object* ret = NULL;\n\n"
                else:
                    return_type_imported = 'classes.'+return_type if return_type.split(".")[0] in objects else return_type
                    result += f"    cdef {return_type_imported if return_type_imported not in types else types[return_type_imported]}* ret = NULL;\n\n"

            if(len(method['arguments']) > 0):
                result += f"    cdef void *args[{len(method['arguments'])}]\n\n"

                for i  in range(len(method["arguments"])):
                    argument = method["arguments"][i]
                    arg_name = (argument["name"] if argument["name"] not in exclude_words else argument["name"]+"_")
                    if(argument["type"] in objects):
                        result += f"    args[{i}] = {arg_name}.godot_owner\n"
                    else:
                        result += f"    args[{i}] = {'&'+arg_name+'._native' if method['arguments'][i]['type'] in core else ('&'+ arg_name)}\n"
            result += f"    api_core.godot_method_bind_ptrcall(bind_{obj['name'].lower()}_{method['name']}," \
                      f"self.godot_owner,{'args' if len(method['arguments']) > 0 else 'NULL'},{'&ret' if return_type!='void' else 'NULL'})\n"
            result += f"    hello('hallo2')\n"
            if return_type != "void" and not return_type in objects and not return_type_save.startswith("Pool"):
                if("." in return_type):
                    return_type = "classes."+return_type
                if(return_type in objects and return_type_save not in types):
                    return_type = "godot_object"
                if(return_type in types and not return_type_save in return_type):
                    return_type = types[return_type]
                    #print(return_type+"|"+return_type_save)
                result += f"    return {return_type_save+'.new_static(dereference(ret))' if return_type_save in types else 'dereference(ret)'}\n\n"
    return result, import_string

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
        result += f"cimport classes.{obj['base_class']} \n"
    import_string = ""
    import_string += ""
    import_string += f"\n##################################Import gdnative api#########################################\n"
    import_string += f"from enum import *\n"
    import_string += f"from utils.Wrapper cimport *\n"
    import_string += f"from classes.Reference cimport Reference\n"
    import_string += f"from core.node_path.NodePath cimport NodePath\n"
    import_string += f"from core.string.String cimport String\n"
    import_string += f"from core.variant.Variant cimport Variant\n"
    import_string += f"from core.array.Array cimport Array\n"
    import_string += f"from core.color.Color cimport Color\n"
    import_string += f"from core.plane.Plane cimport Plane\n"
    import_string += f"from core.basis.Basis cimport Basis\n"
    import_string += f"from core.aabb.AABB cimport AABB\n"
    import_string += f"from core.dictionary.Dictionary cimport Dictionary\n"
    import_string += f"from core.pool_array.PoolArrays cimport *\n"
    import_string += f"from core.quat.Quat cimport Quat\n"
    import_string += f"from core.rect2.Rect2 cimport Rect2\n"
    import_string += f"from core.rid.RID cimport RID\n"
    import_string += f"from core.transform.Transform cimport Transform\n"
    import_string += f"from core.transform.Transform2D cimport Transform2D\n"
    import_string += f"from core.vector2.Vector2 cimport Vector2\n"
    import_string += f"from core.vector3.Vector3 cimport Vector3\n"
    import_string += f"from core.variant.Variant cimport Variant_Type\n"
    import_string += f"from core.variant.Variant cimport Variant_Operator\n"
    import_string += f"from core.vector3.Vector3 cimport Vector3_Axis\n"
    import_string += f"from core.color.Color cimport Color\n"
    import_string += f"from cython.operator cimport dereference\n"
    import_string += f"from godot_api.binding_external cimport *\n"

    result += generate_method_bindings(obj)

    result += "\n############################Generated class###################################\n"

    if(obj["name"] == "GlobalConstants"):
        print(obj["name"],"|",obj["base_class"], obj["base_class"] == "")
    result += f"""cdef class {obj['name']}({'classes.'+obj['base_class']+'.'+obj['base_class'] if obj['base_class'] != "" else "Wrapper"}):\n"""
    result += f"""  def __init__(self):\n"""
    result += f"""    super().__init__()\n"""
    result += f"""    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("{obj["name"]}")())"""

    result += generate_properties(obj)
    results =generate_methods(obj, import_string)
    result += results[0]
    import_string = results[1]

    generate_pxd(obj["name"], obj["base_class"], obj)
    return import_string + result

def generate_enums(class_, obj):
    result = ""
    for enum in obj["enums"]:
        result += f"""ctypedef enum {class_}_{enum["name"]} :"""
        for value in enum["values"]:
            result += value +", "
        result += "\n"

    return result

def generate_pxd(class_, base_class, obj):
    base_class = base_class.strip()
    if(class_ == "GlobalConstants"):
        print(class_,"|",base_class)

    string_to_write = ""
    if(class_ == "Object"):
        string_to_write = (f"""
from enum import *
from godot_api.binding_external cimport *
from utils.Wrapper cimport *
cdef class Object(Wrapper):
    pass\n""")
    else:
        if(base_class != ""):
            string_to_write = (f"""
from enum import *
from godot_api.binding_external cimport *
cimport classes.{base_class}
cdef class {class_}(classes.{base_class}.{base_class}):
    pass\n""")
        else:
            string_to_write = (f"""
from enum import *
from godot_api.binding_external cimport *
from utils.Wrapper cimport *
cdef class {class_}(Wrapper):
    pass\n""")
    file =""
    try:
        with open(f"classes/{class_}.pxd", "r") as headerFile:
            file = headerFile.read()
    except:
        print(f"File classes/{class_}.pxd not found")

    string_to_write += (generate_enums(class_, obj))
    if(file != string_to_write):
        print("write_header")
        with open(f"classes/{class_}.pxd", "w") as headerFile:
            headerFile.write(string_to_write)

test_mode = False

def build(test = False):

    global objects
    # read file
    with open('headers/api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)

    objects = set([element["name"] for element in obj])
    print(objects)

    #generate all the class files
    for element in obj:
        if(element["name"].startswith("_")):
            continue
        generated_file = ""
        file = ""
        generated_file = generate_classes(element)
        try:
            with open(f"classes/{element['name']}.pyx", "r") as generateFile:
                file = generateFile.read()
        except:
            print(f"File classes/{element['name']}.pyx not found!")
        if(generated_file != file):
            print("###########################################write into file#########################################")
            with open(f"classes/{element['name']}.pyx", "w") as generateFile:
                generateFile.write(generate_classes(element))


        #generate main file
        string_file = ""
        try:
            with open("classes/classes.pyx", "r") as mainFile:
                string_file = mainFile.read()
        except:
            print("File classes/classes.pyx not found")
        import_string = ""
        init_method_bindings_string= "cdef api init_method_bindings():\n"
        for element in obj:
            if (element["name"].startswith("_")):
                continue

            import_string += f"from classes.{element['name']} cimport {element['name']}\n"
            init_method_bindings_string += f"  {element['name']}.init_method_bindings()\n"

        if(import_string + "\n\n" + init_method_bindings_string != string_file):
            with open("classes/classes.pyx", "w") as mainFile:
                print("write main")
                mainFile.write(import_string+"\n\n")
                mainFile.write(init_method_bindings_string)