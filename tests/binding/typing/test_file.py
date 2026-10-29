import argparse
import os
import platform
import subprocess
import sys

from config import python_ver

os_name = platform.system()

def force_executable(python_exe):
    if os.path.exists(python_exe):
        if os.access(python_exe, os.X_OK):
            print(f"{python_exe} is already executable")
        else:
            print(f"{python_exe} is NOT executable. Trying to fix...")
            os.chmod(python_exe, 0o755)  # Grant execute permission
            if os.access(python_exe, os.X_OK):
                print(f"Successfully made {python_exe} executable!")
            else:
                print(f"Failed to make {python_exe} executable. Check permissions.")
    else:
        print(f"{python_exe} does not exist!")

if os_name == "Windows":
    python_exe = f"tests/binding/typing/addons/py4godot/{python_ver}-windows64/python/python.exe"
elif os_name == "Darwin":
    python_exe = f"tests/binding/typing/addons/py4godot/{python_ver}-darwin64/python/bin/python3"
elif os_name == "Linux":
    python_exe = f"tests/binding/typing/addons/py4godot/{python_ver}-linux64/python/bin/python3"
    force_executable(python_exe)
else:
    raise RuntimeError(f"Unsupported OS: {os_name}")

# Run the Python executable for the detected platform
subprocess.run([python_exe, "tests/binding/typing/addons/py4godot/get_pip.py"])
subprocess.run([python_exe, "-m", "pip", "install", "mypy"])
# Set up argument parsing
parser = argparse.ArgumentParser(description="Run mypy with a specific project path.")
parser.add_argument("path", help="The file to test with mypy.")

# Parse the arguments
args = parser.parse_args()

# Define the command and its arguments
project_path = args.path
for file, expected_code in (("success.py",0),  ("failing.py", 1)):
    command_args = [python_exe, "-m","mypy", project_path +f"/{file}"]
    project = os.path.basename(project_path)
    stdout_log = open(f"build/{project}_mypy_stdout.log", "w")
    stderr_log = open(f"build/{project}_mypy_stderr.log", "w")
    try:
        print("project_path:", project_path)
        print("command_args:", command_args)
        result = subprocess.run(command_args,
                                stdout=stdout_log,
                                stderr=stderr_log,
                                check=True, text=True)
        print(f"Command executed successfully with return code: {result.returncode}")
    except subprocess.CalledProcessError as e:
        if e.returncode != expected_code:
            print(f"Command failed with return code: {e.returncode}")
            sys.exit(1)
    except FileNotFoundError:
        print("The specified file or command was not found.", project_path, command_args)
        sys.exit(2)
    except Exception as e:
        print(str(e))
        sys.exit(3)

stdout_log.close()
stderr_log.close()
sys.exit(0)