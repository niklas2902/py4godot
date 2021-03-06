from core.color.color_binding cimport *

cdef class Color:
    cdef godot_color _native