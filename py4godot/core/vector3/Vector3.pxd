from py4godot.core.vector3.vector3_binding cimport *
from py4godot.events.events cimport *

cdef class Vector3:
    cdef godot_vector3 _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_vector3 _native):
        self._native = _native

    @staticmethod
    cdef inline Vector3 new_static(godot_vector3 _native):
        cdef Vector3 v = Vector3.__new__(Vector3)
        v.set_native(_native)
        v.update_event = UpdateEvent()
        return v
