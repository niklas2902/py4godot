import sys, os
import json
import filecmp
from shutil import copy
"""The aim of this file is to check whether a file has to be compiled again"""

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)

def check_pyx(source, platform):
    with open (source, "r") as source_file:
        with open (config_data["build_cache"]+f"/{platform}/"+source, "r") as cache_file:
            return source_file.read() == cache_file.read()



if __name__ == "__main__":
    source = sys.argv[1]+".c"
    platform = sys.argv[2]
    try:
        with open (source, "r") as source_file:
            with open (config_data["build_cache"]+f"/{platform}/"+source, "r") as cache_file:
                print(f"'{source} loaded from cache")
                if source_file.read() != cache_file.read():
                    sys.exit(1)

    except Exception as e:
        print("an exception happened:", e)
    dir_path = config_data["meson_dir"]+"/"+platform+"/"+source.replace(".c", ".dll")
    os.makedirs(os.path.dirname(dir_path), exist_ok=True)
    copy(source, dir_path )
    sys.exit(0)