import json

if __name__ == "__main__":

    print( "ctypedef unsigned char        uint8_t;")
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        print(obj.keys())
        for enum_def in obj["global_enums"]:
            print(f"class {enum_def['name']}:")
            for value in enum_def["values"]:
                print(f"  {value['name']} = {value['value']}")

            print("####################################\n")