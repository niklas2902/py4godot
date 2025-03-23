import subprocess
import sys
import argparse

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
# Run the command
try:
    print("project_path:", project_path)
    print("command_args:", command_args)
    result = subprocess.run(command_args, check=True)
    print(f"Command executed successfully with return code: {result.returncode}")
    sys.exit(0)
except subprocess.CalledProcessError as e:
    print(f"Command failed with return code: {e.returncode}")
    sys.exit(1)
except FileNotFoundError:
    print("The specified file or command was not found.", project_path, command_args)
    sys.exit(2)
