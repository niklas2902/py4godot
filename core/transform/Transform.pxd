from core.transform.transform_binding cimport *

cdef class Transform:
    cdef godot_transform _native