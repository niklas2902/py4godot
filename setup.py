from setuptools import setup, Extension
from Cython.Build import cythonize
from main import *

build()

module = cythonize('core/*/*.pyx', language_level=3)
#module += cythonize("classes/*.pyx", language_level=3, nthreads=8)
module += cythonize("classes/*.pyx", language_level=3)
module += cythonize("utils/*.pyx", language_level=3)
module += cythonize("godot_api/*.pyx", language_level=3)
module += cythonize("pluginscript_api/*.pyx", language_level=3)
module += cythonize("pluginscript_api/*/*.pyx", language_level=3)
module += cythonize("enums/*.pyx", language_level=3)
setup(
    ext_modules=module,
    version="0.0.1",
    platforms = ["linux.cross"]
)

"build:python setup.py build_ext --compiler=C:/Windows/System32/gcc.exe"
"generate_api:generate_gdnative_api_struct.py -i godot_headers -o godot_api/generated.pxd"