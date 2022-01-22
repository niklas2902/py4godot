from py4godot.core.transform.transform_binding cimport *
from py4godot.events.events cimport *

cdef class Transform:
    cdef godot_transform _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_transform _native):
        self._native = _native

    @staticmethod
    cdef inline Transform new_static(godot_transform _native):
        cdef Transform v = Transform.__new__(Transform)
        v.set_native(_native)
        v.update_event = UpdateEvent()
        return v