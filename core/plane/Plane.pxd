from core.plane.plane_binding cimport *

cdef class Plane:
    cdef godot_plane _native

    cdef inline void set_native(self, godot_plane _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_plane _native):
        cdef Plane o = Plane.__new__(Plane)
        o.set_native(_native)
