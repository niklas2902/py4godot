import os,subprocess, time
from main import *
from Cython.Build import cythonize
from meson_scripts import copy_tools
start = time.time()

build()
"""
module = cythonize('core/*/*.pyx', language_level=3)
#module += cythonize("classes/*.pyx", language_level=3, nthreads=8)
module += cythonize("classes/*.pyx", language_level=3)
module += cythonize("utils/*.pyx", language_level=3)
module += cythonize("godot_api/*.pyx", language_level=3)
module += cythonize("pluginscript_api/*.pyx", language_level=3)
module += cythonize("pluginscript_api/*/*.pyx", language_level=3)
module += cythonize("enums/*.pyx", language_level=3)
"""

res = subprocess.Popen("vcvarsall.bat x86_amd64 "
                 "& cl"
                 "& meson build_meson/windows --cross-file platforms/windows64.cross "
                       "--cross-file platforms/compilers/msvc_compiler.native --buildtype=release --wipe"
                 "& ninja -C build_meson/windows", shell=True)

res.wait()

copy_tools.run()

print("=================================Build finished==================================")
print("Build took:", time.time()- start)
#res = subprocess.call(r"""meson build_meson/windows --cross-file platforms/windows64.cross
#""", shell=True)
