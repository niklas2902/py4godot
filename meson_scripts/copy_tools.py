from shutil import copy, copytree, rmtree
import os
import glob
import json

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)

def strip_platform(text):
    print("strip_text:",text)
    text = text[1:]
    return text.lstrip("linux64").lstrip("windows64").lstrip("windows").lstrip("linux")

def run(platform):
    # copying all the files from build to the folder of the addon
    list_dll = []
    if "windows" in platform:
        list_dll = glob.glob("**/*.dll", recursive=True)
    elif "linux" in platform:
        list_dll = glob.glob("**/*.so", recursive=True)

    print("------------------------------------------copy------------------------------------------------\n")
    print(list_dll)
    for entry in list_dll:
        entry = entry.lstrip("/")
        if entry.startswith("build_meson"):
            print(os.path.dirname(f"build/addons/{platform}" + strip_platform(entry.lstrip("build_meson"))))
            os.makedirs(os.path.dirname(f"build/addons/{platform}/" + strip_platform(entry.lstrip("build_meson"))),
                        exist_ok=True)
            copy(entry, f"build/addons/{platform}/" + strip_platform(entry.lstrip("build_meson")).
                 replace(".dll", ".pyd"))  # dst can be a folder; use copy2() to preserve timestamp


def copy_main(platform):
    # Todo: check whether python39.dll can be in another path copying the main.pyd inside the python version,
    #  as the pythin39.dll must currently be in the same directory as main.pyd/main.so
    if "windows" in platform:
        copy(f"build/addons/{platform}/py4godot/godot_bindings/main.pyd",
             f"build/addons/{platform}/cpython-3.9.7-{platform}/python/install/main.pyd")
    elif "linux" in platform:
        copy(f"build/addons/{platform}/py4godot/godot_bindings/main.so",
             f"build/addons/{platform}/cpython-3.9.7-{platform}/main.so")


def copy_tests(platform):
    core_tests = glob.glob("tests/core/*")
    for core_test in core_tests:
        if os.path.exists(f"{core_test}/addons/{platform}"):
            rmtree(f"{core_test}/addons/{platform}")
        copytree(f"build/addons/{platform}", f"{core_test}/addons/{platform}")

    binding_tests = glob.glob("tests/binding/*")
    for binding_test in binding_tests:
        if os.path.exists(f"{binding_test}/addons/{platform}"):
            rmtree(f"{binding_test}/addons/{platform}")
        copytree(f"build/addons/{platform}", f"{binding_test}/addons/{platform}")

def copy_c_into_cache(platform):
    l = [i for i in glob.glob("**/*.c", recursive=True) if i.startswith("py4godot") ]
    for entry in l:
        dir_path = config_data["build_cache"]+"/"+platform+"/"+entry
        os.makedirs(os.path.dirname(dir_path), exist_ok=True)
        copy(entry, dir_path )

    print(glob.glob("**/*.dll", recursive=True))
    beginning_path = config_data["meson_dir"]+f"\\{platform}\\"+"py4godot"
    l = [i for i in glob.glob("**/*.dll", recursive=True) if i.startswith(beginning_path) ]
    for entry in l:
        print("entry found:",entry)
        dir_path = config_data["build_cache"]+"/"+platform+"/py4godot/"+entry.replace(beginning_path,"")
        print("copy_to:",dir_path+"\n")
        os.makedirs(os.path.dirname(dir_path), exist_ok=True)
        copy(entry, dir_path )


if __name__ == "__main__":
    copy_c_into_cache("windows64")


