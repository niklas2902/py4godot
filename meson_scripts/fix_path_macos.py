import glob
import subprocess
import os
from pathlib import Path

# Define the old and new paths for libpython
old_python_path = "/install/lib/libpython3.14.dylib"
new_python_path = "/lib/libpython3.14.dylib"
parent_folder = "python"

def is_main(path):
    if "main" in path:
        print(path)
        print("build/darwin64/main.dylib" in path)
        print("----------------------")
    return "build/darwin64/main.dylib" in path

def fix_rpath(abs_entry):
    correct_rpath = "@loader_path/../lib"

    # Get current rpaths
    result = subprocess.run(["otool", "-l", abs_entry], capture_output=True, text=True)
    current_rpaths = []
    for line in result.stdout.splitlines():
        line = line.strip()
        if line.startswith("path "):
            current_rpaths.append(line.split("path ")[1].split(" ")[0])

    # Remove any bad rpaths containing python_files
    for rpath in current_rpaths:
        if "python_files" in rpath:
            try:
                subprocess.run(["install_name_tool", "-delete_rpath", rpath, abs_entry], check=True)
                print(f"Deleted bad rpath: {rpath} from {abs_entry}")
            except subprocess.CalledProcessError as e:
                print(f"Error deleting rpath {rpath} from {abs_entry}: {e}")

    # Add the correct rpath if not already present
    if correct_rpath not in current_rpaths:
        try:
            subprocess.run(["install_name_tool", "-add_rpath", correct_rpath, abs_entry], check=True)
            print(f"Added rpath: {correct_rpath} to {abs_entry}")
        except subprocess.CalledProcessError as e:
            print(f"Error adding rpath to {abs_entry}: {e}")

def fix_macos_paths():
    # Recursively find all .dylib files
    list_dll = glob.glob("**/*.dylib", recursive=True)

    # Iterate over the found libraries
    for entry in list_dll:
        # Skip any .dylib files related to cpython (you can adjust this check as needed)
        if "cpython" in entry or "venv" in entry:
            continue

        # Get the absolute path of the current .dylib file
        abs_entry = os.path.abspath(entry)
        if is_main(entry) or "pythonscript" in entry:
            rel_path = "@loader_path/../../"
            fix_rpath(abs_entry)
        else:
            rel_path = "@loader_path/../../../"
            for i in range(entry.count("#")):
                rel_path += "../"

        command = [
            "install_name_tool",
            "-change", old_python_path, rel_path + new_python_path, abs_entry
        ]
        try:
            subprocess.run(command, check=True)
        except subprocess.CalledProcessError as e:
            print(f"Error updating {abs_entry}: {e}")

fix_macos_paths()