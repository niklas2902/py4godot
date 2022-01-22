from py4godot.core.transform.transform_binding cimport *
from py4godot.events.events cimport *

cdef class Transform2D:
    cdef godot_transform2d _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_transform2d _native):
        self._native = _native

    @staticmethod
    cdef inline Transform2D new_static(godot_transform2d _native):
        cdef Transform2D v = Transform2D.__new__(Transform2D)
        v.set_native(_native)
        v.update_event = UpdateEvent()
        return v