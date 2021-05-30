from core.string.string_binding cimport *

cdef class String:
    cdef godot_string _native

    cdef inline void set_native(self, godot_string _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_string _native):
        cdef String v = String.__new__(String)
        v.set_native(_native)