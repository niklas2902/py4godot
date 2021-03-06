from core.vector3.vector3_binding cimport *

cdef class Vector3:
    cdef godot_vector3 _native