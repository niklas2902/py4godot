from py4godot.core.aabb.aabb_binding cimport *

cdef class AABB:
    cdef godot_aabb _native

    cdef inline void set_native(self, godot_aabb _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_aabb _native):
        cdef AABB o = AABB.__new__(AABB)
        o.set_native(_native)
