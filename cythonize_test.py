from Cython.Build import cythonize

cythonize("py4godot/classes/generated4.pyx", language_level=3)
cythonize("py4godot/enums/enums4.pyx", language_level=3)
cythonize("py4godot/utils/*.pyx", language_level=3)
cythonize("py4godot/core/variant4/Variant4.pyx", language_level=3)
cythonize("py4godot_core_holder/core_holder.pyx", language_level=3)