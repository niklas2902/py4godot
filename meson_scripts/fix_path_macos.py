import glob
import subprocess
import os
from pathlib import Path

# Define the old and new paths for libpython
old_python_path = "/install/lib/libpython3.12.dylib"
new_python_path = "/lib/libpython3.12.dylib"
#new_python_path = "/Users/customer/Documents/py4godot/example/addons/py4godot/cpython-3.12.4-darwin64/python/lib/libpython3.12.dylib"
parent_folder = "python"

def is_main(path):
    if "main" in path:
        print(path)
        print("build/darwin64/main.dylib" in path)
        print("----------------------")
    return "build/darwin64/main.dylib" in path

def fix_macos_paths():
    # Recursively find all .dylib files
    list_dll = glob.glob("**/*.dylib", recursive=True)

    # Iterate over the found libraries
    for entry in list_dll:
        # Skip any .dylib files related to cpython (you can adjust this check as needed)
        if "cpython" in entry:
            continue

        # Get the absolute path of the current .dylib file
        abs_entry = os.path.abspath(entry)
        if is_main(entry) or "pythonscript" in entry:
            rel_path = "@loader_path/../"
        else:
            rel_path = "@loader_path/../../../"
            for i in range(entry.count("#")):
                rel_path += "../"
        # Check if the .dylib file contains the old Python path
        command = [
            "install_name_tool",
            #"-change", old_python_path, "/Users/customer/Documents/py4godot/example/addons/py4godot/cpython-3.12.4-darwin64/python/lib/libpython3.12.dylib", abs_entry
            "-change", old_python_path, rel_path+ new_python_path, abs_entry
        ]
        try:
            # Run the install_name_tool command
            subprocess.run(command, check=True)
            #print(f"Updated {abs_entry} to use the new Python path: {rel_path + new_python_path}")
        except subprocess.CalledProcessError as e:
            print(f"Error updating {abs_entry}: {e}")
