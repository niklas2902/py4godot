from setuptools import setup, Extension
from Cython.Build import cythonize
import os
import sys

# Determine the absolute paths for includes
include_dirs = [
    os.path.abspath("py4godot/gdextension-api"),
    os.path.abspath("py4godot/core/variant4"),
    os.path.abspath("py4godot/godot_bindings"),
    os.path.abspath("")
]

# Define compiler flags for size optimization
extra_compile_args = []
extra_link_args = []

if sys.platform == "win32":
    # Optimize for size on MSVC
    extra_compile_args = ["/O1", "/GL"]   # /GL = whole program optimization
    extra_link_args = ["/OPT:REF", "/OPT:ICF"]  # remove unused code & fold identical functions
else:
    # Optimize for size on GCC/Clang
    extra_compile_args = ["-Os", "-s", "-fdata-sections", "-ffunction-sections"]
    extra_link_args = ["-Wl,--gc-sections", "-s"]  # remove unused sections & strip symbols

extensions = [
    Extension(
        name="wrappers",
        sources=["py4godot/wrappers/wrappers.pyx"],
        include_dirs=include_dirs,
        language="c++",
        extra_compile_args=extra_compile_args,
        extra_link_args=extra_link_args,
    )
]

setup(
    name="wrapper",
    ext_modules=cythonize(
        extensions,
        compiler_directives={
            "language_level": "3",
            "boundscheck": False,     # remove safety overhead
            "wraparound": False,
            "cdivision": True,
            "infer_types": True
        },
        annotate=False  # disable annotate to avoid extra files
    ),
    packages=[],  # prevent auto-discovery
    script_args=["build_ext", "--inplace"]
)
