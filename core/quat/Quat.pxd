from core.quat.quat_binding cimport *

cdef class Quat:
    cdef godot_quat _native