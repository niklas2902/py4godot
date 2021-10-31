from shutil import copy
import os
import glob

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
def run(platform):
    liste_dll = glob.glob("**/*.dll", recursive=True)
    liste_so = glob.glob("**/*.so", recursive=True)

    print("------------------------------------------copy------------------------------------------------\n")
    liste_dll += liste_so
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
    #copying the main.pyd inside the python version, as the pythin39.dll must currently be in the same directory as main.pys
    copy(f"build/addons/{platform}/godot_bindings/main.pyd", f"build/addons/{platform}/cpython-3.9.7-{platform}/python/install/main.pyd")
if __name__ == "__main__":
    run()