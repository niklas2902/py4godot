import subprocess
import os
import subprocess
import sys
import argparse


subprocess.run(["tests/libraries/numpy/addons/py4godot/cpython-3.12.4-windows64/python/python.exe", "tests/libraries/numpy/addons/py4godot/get_pip.py"])
subprocess.run(["tests/libraries/numpy/addons/py4godot/cpython-3.12.4-windows64/python/python.exe", "-m", "pip", "install", "numpy"])

# Set up argument parsing
parser = argparse.ArgumentParser(description="Run Godot with a specific project path.")
parser.add_argument("path", help="The project path to open with Godot.")
parser.add_argument("godot", default=r"godot.exe", help="The Godot executable path.")

# Parse the arguments
args = parser.parse_args()

# Define the command and its arguments
command = args.godot
project_path = args.path
command_args = [command, "--path", project_path]
command_args += ["--headless"]
project = os.path.basename(project_path)
stdout_log = open(f"build/{project}_godot_stdout.log", "w")
stderr_log = open(f"build/{project}_godot_stderr.log", "w")
try:
    print("project_path:", project_path)
    print("command_args:", command_args)
    result = subprocess.run(command_args,
                            stdout=stdout_log,
                            stderr=stderr_log,
                            check=True, text=True)
    print(f"Command executed successfully with return code: {result.returncode}")
except subprocess.CalledProcessError as e:
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