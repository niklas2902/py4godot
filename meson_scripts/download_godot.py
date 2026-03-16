import wget
import zipfile
import glob
import os
import stat
import json

from config import dir_godot_extract_to, download_godot_dir

url = 'https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_win64.exe.zip'
def run(platform):
    global url
    if("linux" in platform):
        url = "https://github.com/godotengine/godot/releases/download/4.3-stable/Godot_v4.3-stable_linux.x86_64.zip"
    if os.path.exists(download_godot_dir):
        os.remove(download_godot_dir)
    wget.download(url, download_godot_dir) # download .zip file
    print()
    with zipfile.ZipFile(download_godot_dir, 'r') as zip_ref:
        zip_ref.extractall(dir_godot_extract_to)
    
    if("linux" in platform):
        for entry in glob.glob("godot/*"):
            st = os.stat(entry)
            os.chmod(entry, st.st_mode|stat.S_IEXEC)

if __name__ == "__main__":
    run()
