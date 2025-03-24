import shutil
from shutil import copy, copytree, rmtree
import os
import glob
import json

from build_tools import download_get_pip

"""This file is for copying the generated so/dll files from ninja/meson into the build folder"""
with open('config.json', 'r') as f:
    config_data = json.load(f)


def strip_platform(text):
    text = text[1:]
    return text.lstrip("linux64").lstrip("windows64").lstrip("windows32").lstrip("linux32").lstrip("darwin64")


def run(platform):
    # copying all the files from build to the folder of the addon
    list_dll = []
    if "windows" in platform:
        list_dll = glob.glob("**/*.dll", recursive=True)
    elif "linux" in platform:
        list_dll = glob.glob("**/*.so", recursive=True)
    elif "darwin" in platform:
        list_dll = glob.glob("**/*.dylib", recursive=True)
    for entry in list_dll:
        if "cpython" in entry:
            continue
        entry = entry.lstrip("/")
        if entry.startswith("build"):
            if "windows" in entry:
                os.makedirs(os.path.dirname(
                    f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/" + strip_platform(
                        entry.lstrip("build").replace("#", "/"))),
                    exist_ok=True)
                copy(entry,
                     f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/" + strip_platform(
                         entry.lstrip("build").replace("#", "/")).
                     replace(".dll", ".pyd"))  # dst can be a folder; use copy2() to preserve timestamp
            else:
                os.makedirs(os.path.dirname(
                    f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/lib/python3.12/site-packages/" + strip_platform(
                        entry.lstrip("build").replace("#", "/"))),
                    exist_ok=True)
                copy(entry,
                     f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/lib/python3.12/site-packages/" + strip_platform(
                         entry.lstrip("build").replace("#", "/")).
                     replace(".dylib", ".so"))  # dst can be a folder; use copy2() to preserve timestamp

    if "windows" in platform:
        list_dll = glob.glob("**/*.pdb", recursive=True)
    else:
        return

    for entry in list_dll:
        entry = entry.lstrip("/")
        if entry.startswith("build/py4godot"):
            continue
        if entry.count("cpython-") >= 1:
            continue
        if entry.startswith("build"):
            os.makedirs(os.path.dirname(
                f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/" + strip_platform(
                    entry.lstrip("build").replace("#", "/"))),
                exist_ok=True)
            copy(entry,
                 f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/" + strip_platform(
                     entry.lstrip("build").replace("#", "/")))  # dst can be a folder; use copy2() to preserve timestamp


def copy_main(platform):
    if "windows" in platform:
        # This is a weird phenomenon of godot 4.2. It copies the dll and renames it. Thus, we have to change what we depend on
        copy(f"build/{platform}/main.dll",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/main.dll")
        copy(f"build/{platform}/pythonscript.dll",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/pythonscript.dll")
    elif "linux" in platform:
        copy(f"build/{platform}/main.so",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/bin/main.so")
        copy(f"build/{platform}/pythonscript.so",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/bin/pythonscript.so")
    elif "darwin" in platform:
        copy(f"build/{platform}/main.dylib",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/bin/main.dylib")
        copy(f"build/{platform}/pythonscript.dylib",
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/bin/pythonscript.dylib")


def onerror(func, path, exc_info):
    print(f"Error removing {path}: {exc_info}")


def copy_tests(platform):
    core_tests = glob.glob("tests/core/*")
    binding_tests = glob.glob("tests/binding/*")

    print("Core tests:", core_tests)
    print("Binding tests:", binding_tests)

    if not core_tests and not binding_tests:
        print("Warning: No test directories found! Check if files exist in CI.")

    for core_test in core_tests + binding_tests:
        print(f"Copying to: {core_test}")

        src_path = f"build/final/{platform}/cpython-3.12.4-{platform}"
        dest_path = f"{core_test}/addons/py4godot/cpython-3.12.4-{platform}"

        print("Checking source path:", src_path)
        print("Checking destination path:", dest_path)

        if not os.path.exists(src_path):
            print(f"Error: Source path {src_path} does not exist!")
            continue

        if os.path.exists(dest_path):
            try:
                shutil.rmtree(dest_path, onerror=onerror)
                print(f"Removed existing directory: {dest_path}")
            except Exception as e:
                print(f"Failed to remove {dest_path}: {e}")

        try:
            shutil.copytree(src_path, dest_path)
            print(f"Copied {src_path} to {dest_path}")
        except Exception as e:
            print(f"Error copying {src_path} to {dest_path}: {e}")

        resources = [
            ("build_resources/python.gdextension", "python.gdextension"),
            ("build_resources/dependencies.txt", "dependencies.txt"),
            ("build_resources/install_dependencies.py", "install_dependencies.py"),
            ("build_resources/Python.svg", "Python.svg"),
        ]

        for src, filename in resources:
            dest_file = f"{core_test}/addons/py4godot/{filename}"
            if not os.path.exists(dest_file) or filename == "Python.svg":
                try:
                    shutil.copy(src, dest_file)
                    print(f"Copied {src} to {dest_file}")
                except Exception as e:
                    print(f"Error copying {src} to {dest_file}: {e}")

        download_get_pip(f"{core_test}/addons/py4godot")


def copy_stub_files(platform):
    for file in (glob.glob("**/*.pyi", recursive=True)):
        if not file.startswith("py4godot"):
            continue
        if "windows" in platform:
            os.makedirs(os.path.dirname(
                f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/" + file),
                exist_ok=True)
            copy(file,
                 f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/" + file)
        else:
            os.makedirs(os.path.dirname(
                f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/lib/python3.12/site-packages/" + file),
                exist_ok=True)
            copy(file,
                 f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/lib/python3.12/site-packages/" + file)


def copy_experimental(platform):
    for file in ["py4godot/pluginscript_api/utils/experimental.py",
                 "py4godot/pluginscript_api/utils/annotation_tools.py",
                 "py4godot/utils/smart_cast.py",
                 "py4godot/classes/__init__.py",
                 "py4godot/methods.py",
                 "py4godot/properties.py",
                 "py4godot/utils/functools.py"]:
        if "windows" in platform:
            copy(file,
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/Lib/site-packages/" + file)
        else:
            copy(file,
             f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/lib/python3.12/site-packages/" + file)


def onerror(func, path, exc_info):
    """
    Error handler for ``shutil.rmtree``.

    If the error is due to an access error (read only file)
    it attempts to add write permission and then retries.

    If the error is for another reason it re-raises the error.

    Usage : ``shutil.rmtree(path, onerror=onerror)``
    """
    import stat
    # Is the error an access error?
    if not os.access(path, os.W_OK):
        os.chmod(path, stat.S_IWUSR)
        func(path)
    else:
        raise


def clear_build():
    if os.path.isdir("build/final"):
        shutil.rmtree(os.path.dirname(
            f"build/final/"), onerror=onerror)

def copy_mingw(compiler, platform):
    if "mingw" in compiler and "windows" in platform:
        if "64" in platform:
            shutil.copy("/usr/x86_64-w64-mingw32/lib/libwinpthread-1.dll",
                        f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/libwinpthread-1.dll")
        elif "32" in platform:
            shutil.copy("/usr/i686-w64-mingw32/lib/libwinpthread-1.dll",
                        f"build/final/{platform}/{config_data['python_ver']}-{platform}/python/libwinpthread-1.dll")

if __name__ == "__main__":
    # copy_c_into_cache("windows64")
    copy_stub_files("windows64")
