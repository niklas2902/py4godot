from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *

cdef StringName c_string_to_string_name(char* string)
cdef String c_string_to_string(char* string)
cdef unicode gd_string_to_py_string(String string)
cdef unicode gd_string_name_to_py_string(StringName string_name)
