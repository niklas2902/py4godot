from core.aabb.aabb_binding cimport *

cdef class AABB:
    cdef godot_aabb _native