from libcpp.memory cimport shared_ptr, allocator
from py4godot.classes.cpp_bridge cimport Signal as CPPSignal
from py4godot.classes.core cimport Signal
from py4godot.classes.Object.Object cimport Object
cdef class GDSignal(Signal):
    pass

