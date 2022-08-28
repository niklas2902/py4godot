import glob, os, json
with open('config.json', 'r') as f:
    config_data = json.load(f)

meson_dir = config_data['meson_dir']
dir_godot_extract_to = config_data["dir_godot_extract_to"]
core_folder = config_data['core_folder']

def print_meson(platform):
    try:
        with open (f"{meson_dir}/{platform}/meson-logs/testlog.txt") as file:
            print(file.read())
    except Exception as e:
        print(f"Exception occurred:{e.with_traceback()}")

def print_tree(path, layer, max_layer=3):
    if layer >= max_layer:
        return
    l = glob.glob(f"{path}/*", recursive=True)
    for i in l:
        print(layer *2* " "+i.replace(path+"\\", ""))
        print_tree(i, layer + 1, max_layer)

if __name__ == "__main__":
    print("print build_meson:")
    print_tree(f"{meson_dir}", 0)
    print_tree(f"{dir_godot_extract_to}", 0)
    print("print root")
    print_tree(os.getcwd().rstrip("\\"), 0, 4)
    print(os.getcwd())
