from shutil import copy
import os
import glob

def run():
    liste = glob.glob("**/*.dll", recursive=True)
    liste2 = glob.glob("**/*.so", recursive=True)

    print("------------------------------------------copy------------------------------------------------\n")
    liste += liste2
    print(liste)
    for entry in liste:
        if(entry.startswith("build_meson")):
            print(os.path.dirname("build/addons"+entry.lstrip("build_meson").lstrip("\\linux").
                                  lstrip("\\windows64")))
            os.makedirs(os.path.dirname("build/addons/"+(entry.lstrip("build_meson").lstrip("\\linux")
                                                         .lstrip("\\windows64"))),exist_ok=True)
            copy(entry, "build/addons/"+(entry.lstrip("build_meson").lstrip("\\linux").
                                         lstrip("\\windows64")).
                 replace(".dll", ".pyd"))  # dst can be a folder; use copy2() to preserve timestamp

if __name__ == "__main__":
    run()