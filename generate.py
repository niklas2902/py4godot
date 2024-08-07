import subprocess
import os


# List of scripts to execute
dir = "generation_files"
scripts = [
    'generate_classes.py',
    'generate_classes_cpp.py',
    'generate_classes_hpp.py',
    'generate_classes_pxd.py',
    'generate_classes_pyi.py',
    'generate_common_functions.py',
    'generate_common_functions_pyi.py',
    'generate_enums.py',
    'generate_enums_cpp.py',
    'generate_pxd_bridge.py',
    'generate_pxd_utility.py',
    'generate_utility_hpp.py',
    'generate_utils_cpp.py'
]

# Make sure all necessary directories are there
if not os.path.isdir("py4godot/classes"):
    os.mkdir("py4godot/classes")
    with open("py4godot/classes/__init__.py", "w") as file:
        pass
if not os.path.isdir("py4godot/enums"):
    os.mkdir("py4godot/enums")
    with open("py4godot/enums/__init__.py", "w") as file:
        pass
if not os.path.isdir("py4godot/cppclasses"):
    os.mkdir("py4godot/cppclasses")

os.chdir(dir) # All files execute on subdirectory
# Execute each script
for script in scripts:
    print(f"Executing {script}...")
    result = subprocess.run(['python', script], capture_output=True, text=True)
    if result.returncode == 0:
        print(f"{script} executed successfully.")
    else:
        print(f"Error executing {script}: {result.stderr}")