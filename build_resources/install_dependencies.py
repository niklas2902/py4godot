import importlib

def install_package(package):
    try:
        process = subprocess.Popen(
            ["python.exe", "-m", "pip", "install", package],
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            universal_newlines=True
        )
    except Exception as e:
        print("Exception while installing package:", e)
        print(traceback.format_exc())

        # Read and redirect the output in real-time
    for line in process.stdout:
        print(line.strip())  # Normal output goes to print

        # Wait for the process to complete
    process.wait()

    # If there was an error, print it using print
    if process.returncode != 0:
        error_output = process.stderr.read()
        print(f"Installation failed. Error output:")
        for line in error_output.splitlines():
            print(line)
        raise subprocess.CalledProcessError(process.returncode, process.args)

    os.chdir(current_path)


if __name__ == '__main__':
    import os
    import subprocess
    import traceback
    lines = []
    try:
        import pip
    except ImportError:
        print("pip is not installed yet. Installing pip...")
        import addons.py4godot.get_pip as get_pip
        get_pip.main()

    with open("addons/py4godot/dependencies.txt") as f:
        lines = f.readlines()

    current_path = os.getcwd()
    os.chdir("addons/py4godot/cpython-3.12.4-windows64/python/")

    for package in lines:
        # Use subprocess to invoke pip using `python -m pip`
        try:
            importlib.import_module(package)
        except ImportError:
            print(f"dependency '{package}' not found. Installing...")
            install_package(package)
