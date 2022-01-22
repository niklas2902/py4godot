from py4godot.core.plane.plane_binding cimport *
from py4godot.events.events cimport *

cdef class Plane:
    cdef godot_plane _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_plane _native):
        self._native = _native

    @staticmethod
    cdef inline Plane new_static(godot_plane _native):
        cdef Plane o = Plane.__new__(Plane)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        return o
