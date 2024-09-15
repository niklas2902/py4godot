import json
CLASSES = ["Node", "Node3D", "Input", "InputEvnet", "InputEventMouseButton",
           "InputEventMouseMotion", "Shape2D","GLTFCamera"]
dependencies:set = set()
class ReturnType:
    def __init__(self, name, type_):
        self.type = type_
        self.name = name
        self.is_primitive = False


dependencies_stack = []

def add_to_dependencies_stack(cls):
    if (cls not in dependencies and not "enum:" in cls and not "bitfield:" in cls and cls not in builtin_classes
            and not "typedarray:" in cls and not "Variant" in cls):
        dependencies_stack.append(get_class_for_name(cls))
        dependencies.add(cls)
def get_class_for_name(cls_name):
    for cls in classes:
        if cls_name == cls["name"]:
            return cls
    raise Exception()
def simplify_type(type):
    list_types = type.split(",")
    return list_types[-1]
def resolve_dependencies(cls):
    if "inherits" in cls:
        add_to_dependencies_stack(cls["inherits"])
    if "methods" in cls:
        for method in cls["methods"]:
            if "return_value" in method.keys() or "return_type" in method.keys():
                ret_val = None
                if ("return_value" in method.keys()):
                    ret_val = ReturnType("_ret", method['return_value']['type'])
                else:
                    ret_val = ReturnType("_ret", method['return_type'])
                add_to_dependencies_stack(ret_val.type)
            if "arguments" in method.keys():
                for arg in method["arguments"]:
                    type_ = arg["type"]
                    add_to_dependencies_stack(type_)
            if "properties" in cls.keys():
                for prop in cls["properties"]:
                    if simplify_type(prop["type"]) in class_names:
                        add_to_dependencies_stack(simplify_type(prop["type"]))
    if len(dependencies_stack) > 0:
        val = dependencies_stack.pop()
        resolve_dependencies(val)




def generate_dev_build():
    global builtin_classes, classes, class_names
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = [class_ for class_ in obj['classes']]
        class_names = [class_["name"] for class_ in obj['classes']]
        builtin_classes = [class_["name"] for class_ in obj["builtin_classes"]]

        for cls in classes:
            if cls["name"] in CLASSES:
                add_to_dependencies_stack(cls["name"])
                resolve_dependencies(cls)

        typed_array_types = [val.replace("typedarray::","") for val in collect_typed_arrays(classes)]
        for typed_array_type in typed_array_types:
            if typed_array_type in class_names:
                add_to_dependencies_stack(typed_array_type)
                resolve_dependencies(get_class_for_name(typed_array_type))

    print(len(dependencies))
    return dependencies
def collect_typed_arrays(classes):
    typed_arrays = []
    for cls in classes:
        if not "methods" in cls.keys():
            continue
        for method in cls["methods"]:
            typed_arrays += collect_typed_arrays_from_return(method)
            typed_arrays += collect_typed_arrays_from_args(method)

    return set(typed_arrays)

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


def collect_typed_arrays_from_args(method):
    typed_arrays = []
    if "arguments" not in method.keys():
        return []
    else:
        for argument in method["arguments"]:
            if ("typedarray" in argument["type"]):
                typed_arrays.append(argument["type"])
    return typed_arrays


if __name__ == "__main__":
    generate_dev_build()
    print(dependencies)
    print(collect_typed_arrays(classes))
    print(class_names)

