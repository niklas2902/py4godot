import json

def collect_all_classes():
    with open('py4godot/gdextension-api/extension_api.json', 'r', encoding="utf-8") as myfile:
        data = myfile.read()
        obj = json.loads(data)
        classes = [class_ for class_ in obj['classes']]
        class_names = [class_["name"] for class_ in obj['classes']]
    return class_names


if __name__ == "__main__":
    collect_all_classes()

