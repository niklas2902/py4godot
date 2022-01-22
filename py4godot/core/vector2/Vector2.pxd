from py4godot.core.vector2.vector2_binding cimport *
from py4godot.events.events cimport *

cdef class Vector2:
    cdef godot_vector2 _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_vector2 _native):
        self._native = _native

    @staticmethod
    cdef inline Vector2 new_static(godot_vector2 _native):
        print("start_new")
        cdef Vector2 v = Vector2.__new__(Vector2)
        print("middle")
        v.set_native(_native)
        v.update_event = UpdateEvent()
        print("end_new")
        return v
