from shutil import copy
import os
import glob

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
def run(platform):
    #copying all the files from build to the folder of the addon
    liste_dll = []
    if("windows" in platform):
        liste_dll = glob.glob("**/*.dll", recursive=True)
    elif "linux" in platform:
        liste_dll = glob.glob("**/*.so", recursive=True)

    print("------------------------------------------copy------------------------------------------------\n")
    print(liste_dll)
    for entry in liste_dll:
        if(entry.startswith("build_meson")):
            print(os.path.dirname(f"build/addons/{platform}"+entry.lstrip("build_meson").lstrip("\\linux").
                                  lstrip("\\windows64")))
            os.makedirs(os.path.dirname(f"build/addons/{platform}/"+(entry.lstrip("build_meson").lstrip("\\linux")
                                                         .lstrip("\\windows64"))),exist_ok=True)
            copy(entry, f"build/addons/{platform}/"+(entry.lstrip("build_meson").lstrip("\\linux").
                                         lstrip("\\windows64")).
                 replace(".dll", ".pyd"))  # dst can be a folder; use copy2() to preserve timestamp

def copy_main(platform):
    #Todo: check whether python39.dll can be in another path
    #copying the main.pyd inside the python version, as the pythin39.dll must currently be in the same directory as main.pyd/main.so
    if("windows" in platform):
        copy(f"build/addons/{platform}/py4godot/godot_bindings/main.pyd",
             f"build/addons/{platform}/cpython-3.9.7-{platform}/python/install/main.pyd")
    elif("linux" in platform):
        copy(f"build/addons/{platform}/py4godot/godot_bindings/main.so",
             f"build/addons/{platform}/cpython-3.9.7-{platform}/python/install/lib/main.so")
if __name__ == "__main__":
    run()