import os
import sys
sys.path.append(os.getcwd()+"/../")
sys.path.append(os.getcwd())
if "generation_files" in os.getcwd():
    os.chdir(os.getcwd()+"/../")

def generate_singleton_instantiation(class_names):
    res = ""
    import_ = ""
    for class_name in class_names:
        import_ += f"import py4godot.classes.{class_name} as {class_name.lower()}\n"


    for class_name in class_names:
        res += f"{class_name.lower()}.{class_name}Singleton = {class_name.lower()}.{class_name}.instance()\n"

    with open("py4godot/utils/singleton_instantiation.py", "w") as f:
        f.write(import_ + "\n" + res)
from meson_scripts.collect_all_classes import collect_all_singletons

if __name__ == "__main__":
    generate_singleton_instantiation(collect_all_singletons())