from py4godot.core.array.array_binding cimport *
from py4godot.events.events cimport *

cdef class Array:
    cdef godot_array _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_array _native):
        self._native = _native

    @staticmethod
    cdef inline Array new_static(godot_array _native):
        cdef Array o = Array.__new__(Array)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        return o