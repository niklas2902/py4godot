import json

if __name__ == "__main__":

    print( "ctypedef unsigned char        uint8_t;")
    with open('py4godot/godot-headers/extension_api.json', 'r') as myfile:
        data = myfile.read()
        obj = json.loads(data)
        for configuration in obj["builtin_class_sizes"]:
            print(f"--config:{configuration}",configuration["build_configuration"])
            for size in configuration["sizes"]:
                print("size:", size)
                print(f"ctypedef struct {size['name']}:")
                print(f"  uint8_t _dont_touch_that[{size['size']}]")