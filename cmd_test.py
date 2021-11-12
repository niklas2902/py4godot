import subprocess, time

import main
import os
from main import *
from Cython.Build import cythonize
from meson_scripts import copy_tools, download_python, generate_init_files, python_loc, platform_check

import argparse

main.build()

def cythonize_files():
    module = cythonize('core/*/*.pyx', language_level=3)
    module += cythonize("classes/*.pyx", language_level=3)
    module += cythonize("utils/*.pyx", language_level=3)
    module += cythonize("pluginscript_api/*.pyx", language_level=3)
    module += cythonize("pluginscript_api/*/*.pyx", language_level=3)
    module += cythonize("gdnative_api/*.pyx", language_level=3)
#    module += cythonize("godot_bindings/*.pyx", language_level=3)
    module += cythonize("enums/*.pyx", language_level=3)

def compile_python_ver_file(platform):
    """compile python file, to find the matching python version"""
    python_dir = python_loc.get_python_dir(platform)
    with open("platforms/python_ver/python_ver_temp.cross", "r") as python_temp:
        file_string = python_temp.read()
        with open("platforms/python_ver/python_ver_compile.cross", "w") as python_compile:
            python_compile.write(file_string.replace("{python_ver}", python_dir))


def get_compiler():
    res = subprocess.run("vcvarsall", shell=True,stdout=subprocess.DEVNULL,
    stderr=subprocess.STDOUT)
    if(res.returncode == 0):
        return "msvc"

    res = subprocess.run("gcc --version", shell=True,stdout=subprocess.DEVNULL,
    stderr=subprocess.STDOUT)
    if(res.returncode == 0):
        return "gcc"

    raise Exception("No compiler found")



current_platform = platform_check.get_platform()
my_parser = argparse.ArgumentParser(fromfile_prefix_chars='@')
my_parser.add_argument('--compiler',
                       help='specify the compiler, you want to use to compile')
my_parser.add_argument('--target_platform',
                       help='specify the platform, you want to go build for')
# Execute parse_args()
args = my_parser.parse_args()

build_dir = f"build_meson/{args.target_platform}"



start = time.time()
if(args.compiler == None):
    print("Checking for compilers")
    args.compiler = get_compiler()
    print(f"Got compiler:{args.compiler}")

build()
cythonize_files()

#loading the needed python files for the target platform
download_python.download_file(args.target_platform)

#downlaod needed python files for the current platform
download_python.download_file(current_platform)

compile_python_ver_file(current_platform)

#initializing for msvc if wanted as compiler (todo:should be improved sometime)
msvc_init = f"vcvarsall.bat {'x86_amd64'} & cl" if "msvc" in args.compiler else ""

res = subprocess.Popen(msvc_init+
                 f"& meson {build_dir} --cross-file platforms/{args.target_platform}.cross "
                 f"--cross-file platforms/compilers/{args.compiler}_compiler.native "
                 f"--cross-file platforms/python_ver/python_ver_compile.cross "
                 f"--buildtype=release {'--wipe' if os.path.isdir(build_dir) else ''}"
                 f"& ninja -C build_meson/{args.target_platform}", shell=True)

res.wait()
copy_tools.run(args.target_platform)
generate_init_files.create_init_file(args.target_platform)
copy_tools.copy_main(args.target_platform)

print("=================================Build finished==================================")
print("Build took:", time.time()- start, "seconds")
