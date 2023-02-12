from shutil import copy, copytree, rmtree
import os
import glob
import json

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)

def strip_platform(text):
    text = text[1:]
    return text.lstrip("linux64").lstrip("windows64").lstrip("windows").lstrip("linux")

def run(platform):
    # copying all the files from build to the folder of the addon
    list_dll = []
    if "windows" in platform:
        list_dll = glob.glob("**/*.dll", recursive=True)
    elif "linux" in platform:
        list_dll = glob.glob("**/*.so", recursive=True)

    for entry in list_dll:
        entry = entry.lstrip("/")
        if entry.startswith("build_meson"):
            os.makedirs(os.path.dirname(f"build/addons/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(entry.lstrip("build_meson").replace("#","/"))),
                        exist_ok=True)
            copy(entry, f"build/addons/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(entry.lstrip("build_meson").replace("#","/")).
                 replace(".dll", ".pyd"))  # dst can be a folder; use copy2() to preserve timestamp

    if "windows" in platform:
        list_dll = glob.glob("**/*.pdb", recursive=True)
    for entry in list_dll:
        entry = entry.lstrip("/")
        if entry.startswith("build_meson"):
            os.makedirs(os.path.dirname(f"build/addons/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(entry.lstrip("build_meson").replace("#", "/"))),
                        exist_ok=True)
            copy(entry, f"build/addons/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + strip_platform(entry.lstrip("build_meson").replace("#", "/"))) # dst can be a folder; use copy2() to preserve timestamp

def copy_main(platform):
    # Todo: check whether python39.dll can be in another path copying the main.pyd inside the python version,
    #  as the pythin39.dll must currently be in the same directory as main.pyd/main.so
    if "windows" in platform:
        copy(f"build_meson/{platform}/py4godot#godot_bindings#main.dll",
             f"build/addons/{platform}/{config_data['python_ver']}-{platform}/python/install/main.dll")
    elif "linux" in platform:
        copy(f"build_meson/{platform}/py4godot#godot_bindings#main.so",
             f"build/addons/{platform}/{config_data['python_ver']}-{platform}/main.so")


def copy_tests(platform):
    """copy plugin inside godot"""
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

    beginning_path = config_data["meson_dir"]+f"\\{platform}\\"+"py4godot"
    l = [i for i in glob.glob("**/*.dll", recursive=True) if i.startswith(beginning_path) ]
    for entry in l:
        dir_path = config_data["build_cache"]+"/"+platform+"/py4godot/"+entry.replace(beginning_path,"")
        os.makedirs(os.path.dirname(dir_path), exist_ok=True)
        copy(entry, dir_path )

def copy_stub_files(platform):
    for file in (glob.glob("**/*.pyi", recursive=True)):
        if not file.startswith("py4godot"):
            continue
        os.makedirs(os.path.dirname(f"build/addons/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + file),
                    exist_ok=True)
        copy(file, f"build/addons/{platform}/{config_data['python_ver']}-{platform}/python/install/Lib/site-packages/" + file)


if __name__ == "__main__":
    #copy_c_into_cache("windows64")
    copy_stub_files("windows64")


