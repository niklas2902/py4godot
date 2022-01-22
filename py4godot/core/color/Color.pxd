from py4godot.core.color.color_binding cimport *
from py4godot.events.events cimport *

cdef class Color:
    cdef godot_color _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_color _native):
        self._native = _native

    @staticmethod
    cdef inline Color new_static(godot_color _native):
        cdef Color o = Color.__new__(Color)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        return o
