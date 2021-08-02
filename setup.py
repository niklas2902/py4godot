from setuptools import setup, Extension
from Cython.Build import cythonize
import main,os

#main.build()

module = cythonize('core/*/*.pyx', language_level=3)
#module += cythonize("classes/*.pyx", language_level=3, nthreads=8)
module += cythonize("classes/*.pyx", language_level=3)
module += cythonize("utils/*.pyx", language_level=3)
module += cythonize("godot_api/*.pyx", language_level=3)
module += cythonize("pluginscript_api/*.pyx", language_level=3)
setup(
    ext_modules=module
)

"build:python setup.py build_ext --compiler=msvc"
"generate_api:generate_gdnative_api_struct.py -i godot_headers -o godot_api/generated.pxd"