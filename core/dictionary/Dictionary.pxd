from core.dictionary.dictionary_binding cimport *
from libc.stdio cimport printf
#Todo: refactor new_static in every other class
cdef class Dictionary:
    cdef godot_dictionary _native

    cdef inline void set_native(self, godot_dictionary _native):
        self._native = _native

    @staticmethod
    cdef inline Dictionary new_static(godot_dictionary _native):
        cdef Dictionary o = Dictionary.__new__(Dictionary)
        o.set_native(_native)
        return o
