import os,subprocess, time
from main import *
from Cython.Build import cythonize
from meson_scripts import copy_tools
# fromfile_example.py
import argparse

my_parser = argparse.ArgumentParser(fromfile_prefix_chars='@')

my_parser.add_argument('--compiler',
                       help='specify the compiler, you want to use to compile')

my_parser.add_argument('--target_platform',
                       help='specify the platform, you want to go build for')


# Execute parse_args()
args = my_parser.parse_args()
print("compiler:",args.compiler)
print("platform:", args.target_platform)

start = time.time()

build()

module = cythonize('core/*/*.pyx', language_level=3)
#module += cythonize("classes/*.pyx", language_level=3, nthreads=8)
module += cythonize("classes/*.pyx", language_level=3)
module += cythonize("utils/*.pyx", language_level=3)
module += cythonize("godot_api/*.pyx", language_level=3)
module += cythonize("pluginscript_api/*.pyx", language_level=3)
module += cythonize("pluginscript_api/*/*.pyx", language_level=3)
module += cythonize("enums/*.pyx", language_level=3)


res = subprocess.Popen("vcvarsall.bat x86_amd64 "
                 "& cl"
                 f"& meson build_meson/{args.target_platform} --cross-file platforms/{args.target_platform}.cross "
                 f"--cross-file platforms/compilers/{args.compiler}_compiler.native --buildtype=release --wipe"
                 f"& ninja -C build_meson/{args.target_platform}", shell=True)

res.wait()

copy_tools.run()

print("=================================Build finished==================================")
print("Build took:", time.time()- start)
#res = subprocess.call(r"""meson build_meson/windows --cross-file platforms/windows64.cross
#""", shell=True)
