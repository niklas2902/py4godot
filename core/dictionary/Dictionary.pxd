from core.dictionary.dictionary_binding cimport *

cdef class Dictionary:
    cdef godot_dictionary _native

    cdef inline void set_native(self, godot_dictionary _native):
        self._native = _native

    @staticmethod
    cdef inline void new_static(godot_dictionary _native):
        cdef Dictionary o = Dictionary.__new__(Dictionary)
        o.set_native(_native)
