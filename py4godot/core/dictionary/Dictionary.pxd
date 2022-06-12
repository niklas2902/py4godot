from py4godot.core.dictionary.dictionary_binding cimport *
from libc.stdio cimport printf
from py4godot.events.events cimport *

#Todo: refactor new_static in every other class
cdef class Dictionary:
    cdef godot_dictionary _native
    cdef UpdateEvent update_event
    cdef godot_int _index

    cdef inline void set_native(self, godot_dictionary _native):
        self._native = _native

    @staticmethod
    cdef inline Dictionary new_static(godot_dictionary _native):
        cdef Dictionary o = Dictionary.__new__(Dictionary)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        o._index = 0
        return o