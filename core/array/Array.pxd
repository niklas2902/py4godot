from core.array.array_binding cimport *

cdef class Array:
    cdef godot_array _native

    cdef inline void set_native(self, godot_array _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_array _native):
        cdef Array o = Array.__new__(Array)
        o.set_native(_native)