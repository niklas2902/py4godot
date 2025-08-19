# distutils: language=c++
from libcpp.memory cimport shared_ptr
from py4godot.classes.cpp_bridge cimport Object as CPPObject
from cpython.object cimport PyObject
from py4godot.py_classes.core import Signal
cdef class SignalArg:
    cdef str name
    cdef int variant_type

    cdef char* get_name(self)

