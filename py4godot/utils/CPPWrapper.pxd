# distutils: language=c++

cdef extern from "py4godot/cppclasses/static_methods.h" namespace "godot":
    object call_static_method(int class_number, int hash, tuple args)
    object call_constructor(int class_number, int constructor_number, object args)

cdef class CPPWrapper:
    cdef call_without_return(self, int method_hash, tuple args)
    cdef call_with_return(self, int method_hash, tuple args)

    @staticmethod
    cdef call_new(self, int number, tuple args)
    @staticmethod
    cdef call_static_method_with_return(int class_hash, int method_hash, tuple py_objects)
