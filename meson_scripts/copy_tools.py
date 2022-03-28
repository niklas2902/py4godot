from shutil import copy, copytree, rmtree
import os
import glob

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""

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
