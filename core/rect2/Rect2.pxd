from core.quat.quat_binding cimport *

cdef class Rect2:
    cdef godot_rect2 _native

    cdef inline void set_native(self, godot_rect2 _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_rect2 _native):
        cdef Rect2 o = Rect2.__new__(Rect2)
        o.set_native(_native)