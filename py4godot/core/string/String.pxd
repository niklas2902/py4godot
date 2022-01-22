from py4godot.core.string.string_binding cimport *
from py4godot.events.events cimport *

cdef class String:
    cdef godot_string _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_string _native):
        self._native = _native

    @staticmethod
    cdef inline String new_static(godot_string _native):
        cdef String v = String.__new__(String)
        v.set_native(_native)
        v.update_event = UpdateEvent()
        return v