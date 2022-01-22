from py4godot.core.quat.quat_binding cimport *
from py4godot.events.events cimport *

cdef class Rect2:
    cdef godot_rect2 _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_rect2 _native):
        self._native = _native

    @staticmethod
    cdef inline Rect2 new_static(godot_rect2 _native):
        cdef Rect2 o = Rect2.__new__(Rect2)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        return o