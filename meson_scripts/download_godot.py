import wget
import zipfile
import glob
import os
import stat
import json

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)

url = 'https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_win64.exe.zip'
download_dir = config_data["download_godot_dir"]
dir_zipfile_extract_to = config_data["dir_godot_extract_to"]
def run(platform):
    global url
    if("linux" in platform):
        url = "https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip"
    if os.path.exists(download_dir):
        os.remove(download_dir)
    wget.download(url, download_dir) # download .zip file
    print()
    with zipfile.ZipFile(download_dir, 'r') as zip_ref:
        zip_ref.extractall(dir_zipfile_extract_to)
    
    if("linux" in platform):
        for entry in glob.glob("godot/*"):
            st = os.stat(entry)
            os.chmod(entry, st.st_mode|stat.S_IEXEC)

if __name__ == "__main__":
    run()
