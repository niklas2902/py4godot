from py4godot.godot_bindings.binding_external cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *

cdef class RangeHint(BaseHint):
    cdef start
    cdef stop
    cdef step
    cdef is_slider