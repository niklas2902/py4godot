from core.string.string_binding cimport *

cdef class String:
    cdef godot_string _native