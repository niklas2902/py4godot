from py4godot.godot_bindings.binding cimport *
from py4godot.godot_bindings.binding_external cimport *
from py4godot.godot_bindings.types cimport *

cdef godot_gdnative_core_api_struct* get_core()

cdef godot_gdnative_ext_nativescript_1_1_api_struct* get_nativescript()