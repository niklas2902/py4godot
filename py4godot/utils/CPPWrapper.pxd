# distutils: language=c++
cimport py4godot.classes.cpp_bridge as bridge
from libcpp.memory cimport shared_ptr

cdef extern from "py4godot/cppclasses/static_methods.h" namespace "godot":
    object call_static_method(int class_number, int hash, tuple args)
    object call_constructor(int class_number, int constructor_number, object args)

cdef class CPPWrapper:
    cdef object _ptr
    cpdef call_with_return(self, int method_hash, tuple args)
    cdef set_gdowner(self, void* godot_owner)
    cdef void* get_gdowner(self)
    cpdef copy_gdowner(self, CPPWrapper other)
    cpdef bint is_null(self)
    cdef bridge.Wrapper* get_ptr(self)

    @staticmethod
    cdef call_new(self, int number, tuple args)
    @staticmethod
    cdef call_static_method_with_return(int class_hash, int method_hash, tuple py_objects)
