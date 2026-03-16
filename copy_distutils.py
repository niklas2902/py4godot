import os
import shutil
import sys

def copy_distutils():
    # Get the current Python version
    python_version = f"{sys.version_info.major}.{sys.version_info.minor}"

    # Define the paths
    current_dir = os.path.dirname(os.path.abspath(__file__))
    venv_path = os.path.join(current_dir, 'venv', 'lib', f'python{python_version}', 'site-packages')
    source_path = os.path.join(venv_path, 'setuptools', '_distutils')
    destination_path = os.path.join(venv_path, 'distutils')

    # Check if the source directory exists
    if not os.path.exists(source_path):
        print(f"Source path '{source_path}' does not exist. Please check your virtual environment setup.")
        return

    # Copy the directory
    try:
        shutil.copytree(source_path, destination_path)
        print(f"Successfully copied '{source_path}' to '{destination_path}'")
    except FileExistsError:
        print(f"Directory '{destination_path}' already exists. No need to copy.")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    copy_distutils()

