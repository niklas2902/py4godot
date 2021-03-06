from core.dictionary.dictionary_binding cimport *

cdef class Dictionary:
    cdef godot_dictionary _native