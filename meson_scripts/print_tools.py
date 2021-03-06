import glob, os

def print_meson(platform):
    try:
        with open (f"build_meson/{platform}/meson-logs/testlog.txt") as file:
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

if __name__=="__main__":
    print("print build_meson:")
    print_tree("build_meson", 0)
    print_tree("godot", 0)
    print("print root")
    print_tree(os.getcwd().rstrip("\\"), 0, 4)
    print(os.getcwd())
