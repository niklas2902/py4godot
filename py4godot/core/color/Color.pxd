from py4godot.core.color.color_binding cimport *

cdef class Color:
    cdef godot_color _native

    cdef inline void set_native(self, godot_color _native):
        self._native = _native

    @staticmethod
    cdef inline Color new_static(godot_color _native):
        cdef Color o = Color.__new__(Color)
        o.set_native(_native)
        return o
