# distutils: language=c++
from cpython.object cimport PyObject
from libcpp.memory cimport shared_ptr

from py4godot.classes.cpp_bridge cimport Object as CPPObject


cdef class SignalArg:
    cdef str name
    cdef int variant_type

    cdef char* get_name(self)

