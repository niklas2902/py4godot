from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *


cdef class SignalArg:
    cdef str name
    cdef int variant_type

    cdef char* get_name(self)