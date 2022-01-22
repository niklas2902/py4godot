from py4godot.core.aabb.aabb_binding cimport *
from py4godot.events.events cimport *

cdef class AABB:
    cdef godot_aabb _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_aabb _native):
        self._native = _native

    @staticmethod
    cdef inline AABB new_static(godot_aabb _native):
        cdef AABB o = AABB.__new__(AABB)
        o.update_event = UpdateEvent()
        o.set_native(_native)
        return o