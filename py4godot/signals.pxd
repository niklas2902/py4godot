# distutils: language=c++
from libcpp.memory cimport shared_ptr
from py4godot.classes.cpp_bridge cimport Signal as CPPSignal
from py4godot.classes.cpp_bridge cimport Object as CPPObject
from cpython.object cimport PyObject

cdef class SignalArg:
    cdef str name
    cdef int variant_type

    cdef char* get_name(self)

cdef class GDSignal(Signal):
    pass

cdef class BuiltinSignal(Signal):
    cdef shared_ptr[CPPObject] parent_ptr
    cdef StringName signal_name

