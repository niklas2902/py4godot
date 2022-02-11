import os

def get_python_dir(platform):
    return (os.getcwd()+f"/python_files/cpython-3.9.7-{platform}/python/install/python{'.exe' if 'windows' in platform else '' }").replace("\\", "/")
def get_godot_dir(platform):
    return (os.getcwd()+f"/godot/Godot_v3.4.2-stable_win64.exe")