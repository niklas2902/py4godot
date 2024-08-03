# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *

cdef class MethodInfo(object):
    cdef int num_default_args
    cdef int num_args