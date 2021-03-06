from core.vector2.vector2_binding cimport *

cdef class Vector2:
    cdef godot_vector2 _native