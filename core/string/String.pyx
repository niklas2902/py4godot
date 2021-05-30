from core.string.string_binding cimport *

cdef class String:

    def __init__(self, godot_string _native):
        if (_native != None):
            self._native = _native
        else:
            pass
            #api_core.godot_string_new(&self._native)

