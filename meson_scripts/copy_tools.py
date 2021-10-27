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

if __name__ == "__main__":
    run()