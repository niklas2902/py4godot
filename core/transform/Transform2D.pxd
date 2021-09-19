from core.transform.transform_binding cimport *

cdef class Transform2D:
    cdef godot_transform2d _native

    cdef inline void set_native(self, godot_transform2d _native):
        self._native = _native

    @staticmethod
    cdef inline Transform2D new_static(godot_transform2d _native):
        cdef Transform2D v = Transform2D.__new__(Transform2D)
        v.set_native(_native)
        return v