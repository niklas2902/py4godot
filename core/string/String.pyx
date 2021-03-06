from core.string.string_binding cimport *

cdef class String:

    def __init__(self, godot_string _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_string_new(&self._native)

    def as_utf8(self):
        return api_core.godot_string_utf8(&self._native)
