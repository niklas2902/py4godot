from py4godot.core.quat.quat_binding cimport *

cdef class Quat:
    cdef godot_quat _native

    cdef inline void set_native(self, godot_quat _native):
        self._native = _native

    @staticmethod
    cdef inline Quat new_static(godot_quat _native):
        cdef Quat o = Quat.__new__(Quat)
        o.set_native(_native)
        return o