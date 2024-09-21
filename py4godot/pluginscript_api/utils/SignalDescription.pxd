# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.core cimport String, Dictionary

cdef class SignalDescription:
    cdef Dictionary dict
    #cdef Variant create_signal_arg(self, String name, int type)
    cdef Dictionary get_signal_dict(self)