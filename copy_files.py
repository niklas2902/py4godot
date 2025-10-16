import glob
import shutil
import os

files = glob.glob("build/py4godot/**/*.so", recursive=True)

for file in files:
    if "main.so" in file or "pythonscript.so" in file or "py4godot" in file:
        # Get the directory and filename
        directory = os.path.dirname(file)
        filename = os.path.basename(file)

        # Check if filename doesn't start with 'lib'
        if not filename.startswith("lib"):
            # Create new filename with 'lib' prefix
            new_filename = "lib" + filename
            new_path = os.path.join(directory, new_filename)

            # Copy the file with the new name
            shutil.copy2(file, new_path)
            print(f"Copied: {file} -> {new_path}")