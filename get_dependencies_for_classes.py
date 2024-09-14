import json
CLASSES = ["Node", "Node3D", "Input", "InputEvnet", "InputEventMouseButton", "InputEventMouseMotion"]
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

    if len(dependencies_stack) > 0:
        val = dependencies_stack.pop()
        resolve_dependencies(val)




if __name__ == "__main__":
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = [class_ for class_ in obj['classes']]
        builtin_classes = [class_["name"] for class_ in obj["builtin_classes"]]

        for cls in classes:
            if cls["name"] in CLASSES:
                resolve_dependencies(cls)

    print(len(dependencies))

