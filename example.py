import argparse, os
import shutil
import subprocess
from shutil import copy, copytree, rmtree

from build_tools import download_get_pip


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
    if os.path.exists(f"example/addons/py4godot/cpython-3.12.4-{args.target_platform}"):
        shutil.rmtree(f"example/addons/py4godot/cpython-3.12.4-{args.target_platform}/", onerror=onerror)
    copytree(f"build/final/{args.target_platform}/cpython-3.12.4-{args.target_platform}", f"example/addons/py4godot/cpython-3.12.4-{args.target_platform}")
    shutil.copy("build_resources/python.gdextension", "example/addons/py4godot/python.gdextension")
    shutil.copy("build_resources/dependencies.txt", "example/addons/py4godot/dependencies.txt")
    shutil.copy("build_resources/install_dependencies.py", "example/addons/py4godot/install_dependencies.py")
    download_get_pip("example/addons/py4godot")

    python_svg_dest = "example/addons/py4godot/"+ "/Python.svg"
    if not os.path.exists(python_svg_dest):
        shutil.copy("build_resources/Python.svg", python_svg_dest)
    # shutil.copyfile("build_files/get-pip.py", "addons/windows64/cpython-3.12.4-windows64/python/install/get-pip.py")

    # try:
    #    res = subprocess.Popen(f"cd addons/windows64/cpython-3.12.4-windows64/python/install &&"
    #                           f"python get-pip.py && "
    #                           f"python -m pip install debugpy ",
    #                           shell=True)
    #    res.wait()
    # except Exception as e:
    #    print(e)
    print("======================End copying files=======================")
