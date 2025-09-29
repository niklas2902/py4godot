import argparse, os
import shutil
import subprocess
from shutil import copy, copytree, rmtree

from build_tools import download_get_pip
from config import python_ver


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
    shutil.rmtree(os.path.dirname(
        f"addons/windows64/"), onerror=onerror)

def create_gdextension():
    gdextension_text = ""
    with open("build_resources/gdextension_template.gdextension", "r") as f:
        gdextension_text = f.read().replace("{python_ver}", python_ver)
    with open("example/addons/py4godot/python.gdextension", "w") as f:
        f.write(gdextension_text)

if __name__ == "__main__":

    my_parser = argparse.ArgumentParser(fromfile_prefix_chars='@')
    my_parser.add_argument('--compiler',
                           help='specify the compiler, you want to use to compile')
    my_parser.add_argument('--target_platform',
                           help='specify the platform, you want to go build for')
    my_parser.add_argument("-run_tests", help="should tests be run", default="False")
    my_parser.add_argument("-download_godot", help="should tests be run", default="False")
    my_parser.add_argument("-create_plugin", help="Should this create a plugin", default="True")
    my_parser.add_argument("-buildtype", help="Should this be a debug build or release build, optionas are release or debugoptimized", default="release")
    my_parser.add_argument("-auto_install", help="Should the build automatically install pip and dependencies",
                           default="False")

    # Execute parse_args()
    args = my_parser.parse_args()

    try:
        res = subprocess.Popen(f"python build.py --target_platform={args.target_platform} "
                               f"--compiler={args.compiler} -run_tests={args.run_tests} "
                               f"-download_godot={args.download_godot} -create_plugin={args.create_plugin} "
                               f"-buildtype={args.buildtype} -auto_install={args.auto_install}",
                               shell=True)
        res.wait()
    except Exception as e:
        print(e)
    print("======================Start copying files=======================")
    if os.path.exists(f"example/addons/py4godot/{python_ver}-{args.target_platform}"):
        shutil.rmtree(f"example/addons/py4godot/{python_ver}-{args.target_platform}/", onerror=onerror)
    copytree(f"build/final/{args.target_platform}/{python_ver}-{args.target_platform}",
             f"example/addons/py4godot/{python_ver}-{args.target_platform}")
    create_gdextension()
    shutil.copy("build_resources/dependencies.txt", "example/addons/py4godot/dependencies.txt")
    shutil.copy("build_resources/install_dependencies.py", "example/addons/py4godot/install_dependencies.py")
    shutil.copy("build_resources/export_py4godot.gd", "example/addons/py4godot/export_py4godot.gd")
    shutil.copy("build_resources/export_py4godot_main.gd", "example/addons/py4godot/export_py4godot_main.gd")
    shutil.copy("build_resources/plugin.cfg", "example/addons/py4godot/plugin.cfg")
    download_get_pip("example/addons/py4godot")

    python_svg_dest = "example/addons/py4godot/"+ "/Python.svg"
    if not os.path.exists(python_svg_dest):
        shutil.copy("build_resources/Python.svg", python_svg_dest)
    print("======================End copying files=======================")
