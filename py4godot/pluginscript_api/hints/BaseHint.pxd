from py4godot.godot_bindings.binding_external cimport *
cdef class BaseHint(object):
    cdef godot_int hint
    cdef str hint_string