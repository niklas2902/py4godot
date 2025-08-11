from setuptools import setup, Extension
from Cython.Build import cythonize
import os

extensions = [
    Extension(
        name="wrappers",  # module name
        sources=["py4godot/wrappers/wrappers.pyx"],
        include_dirs=[
            os.path.abspath("py4godot/gdextension-api"),
            os.path.abspath("py4godot/core/variant4"),
            os.path.abspath("py4godot/godot_bindings"),
            os.path.abspath("")
        ],
        language="c++",
    )
]

setup(
    name="wrapper",
    ext_modules=cythonize(
        extensions,
        compiler_directives={"language_level": "3"},
    ),
    packages=[],  # prevent auto-discovery
    script_args=["build_ext", "--inplace"]
)
