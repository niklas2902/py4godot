from core.transform.transform_binding cimport *

cdef class Transform2d:
    cdef godot_transform2d _native