import wget
import zipfile
import glob
import os
import stat
import json

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)

url = 'https://github.com/godotengine/godot/releases/download/3.4.2-stable/Godot_v3.4.2-stable_win64.exe.zip'
download_dir = config_data["download_godot_dir"]
dir_zipfile_extract_to = config_data["dir_godot_extract_to"]
def run(platform):
    global url
    if("linux" in platform):
        url = "https://downloads.tuxfamily.org/godotengine/3.4.3/Godot_v3.4.3-stable_x11.64.zip"
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
