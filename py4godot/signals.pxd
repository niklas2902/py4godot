from py4godot.classes.cpp_bridge cimport Signal as CPPSignal
from py4godot.classes.core cimport Signal, StringName
from py4godot.classes.Object cimport Object

cdef class SignalArg:
    cdef str name
    cdef int variant_type

    cdef char* get_name(self)

cdef class GDSignal(Signal):
    pass

cdef class BuiltinSignal(Signal):
    cdef Object parent
    cdef StringName signal_name

