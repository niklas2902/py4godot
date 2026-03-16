import os, json
import shutil

from config import python_dir, python_ver


def get_python_dir(platform):
    if("windows" in platform):
        return (os.getcwd()+f"/{python_dir}/{python_ver}-{platform}/python/python.exe").replace("\\", "/")
    elif("linux" in platform):
        return (os.getcwd() + f"/{python_dir}/{python_ver}-{platform}/python/bin/python3").replace("\\", "/")
    elif "darwin" in platform:
        return (os.getcwd() + f"/{python_dir}/{python_ver}-{platform}/python/bin/python3").replace("\\", "/")
def get_godot_dir(platform):
        godot_path = shutil.which("godot")
        if godot_path:
            return godot_path
        return ""