from core.string_name.string_name_binding cimport *

cdef class StringName:
    cdef godot_string_name* _native

    cdef inline void set_native(self, godot_string_name* _native):
        self._native = _native

    @staticmethod
    cdef inline StringName new_static(godot_string_name* _native):
        cdef StringName v = StringName.__new__(StringName)
        v.set_native(_native)
        return v