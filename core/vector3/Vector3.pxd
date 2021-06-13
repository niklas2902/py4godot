from core.vector3.vector3_binding cimport *

cdef class Vector3:
    cdef godot_vector3 _native

    cdef inline void set_native(self, godot_vector3 _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_vector3 _native):
        cdef Vector3 v = Vector3.__new__(Vector3)
        v.set_native(_native)


ctypedef enum Vector3_Axis :
    Vector3_AXIS_X,
    Vector3_AXIS_Y,
    Vector3_AXIS_Z