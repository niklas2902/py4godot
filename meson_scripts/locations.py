import os, json

with open('config.json', 'r') as f:
    config_data = json.load(f)

python_dir = config_data['python_dir']
python_ver = config_data['python_ver']
dir_godot_extract_to = config_data['dir_godot_extract_to']

def get_python_dir(platform):
    if("windows" in platform):
        return (os.getcwd()+f"/{python_dir}/{python_ver}-{platform}/python/python.exe").replace("\\", "/")
    elif("linux" in platform):
        return (os.getcwd() + f"/{python_dir}/{python_ver}-{platform}/python/bin/python3").replace("\\", "/")
    elif "darwin" in platform:
        return (os.getcwd() + f"/{python_dir}/{python_ver}-{platform}/python/bin/python3").replace("\\", "/")
def get_godot_dir(platform):
    if "windows" in platform:
        return (os.getcwd()+f"/{dir_godot_extract_to}/Godot_v3.4.2-stable_win64.exe")
    elif "linux" in platform:
        return (os.getcwd()+f"/{dir_godot_extract_to}/Godot_v3.4.3-stable_x11.64")
    elif "darwin" in platform:
        return (os.getcwd()+f"/{dir_godot_extract_to}/Godot_v3.4.3-stable_x11.64")