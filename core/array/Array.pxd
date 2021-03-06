from core.array.array_binding cimport *

cdef class Array:
    cdef godot_array _native
