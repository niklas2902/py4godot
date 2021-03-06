from setuptools import setup
from Cython.Build import cythonize
import main, os

print(os.getcwd())
#module = cythonize('classes/Object.pyx', language_level=3)
module_rid = cythonize('core/rid/*.pyx', language_level=3)
setup(
    ext_modules=module_rid
)

"build:python setup.py build_ext --compiler=msvc"
"generate_api:generate_gdnative_api_struct.py -i godot_headers -o godot_api/generated.pxd"