from py4godot.godot_bindings.binding_external cimport *
from py4godot.pluginscript_api.hints.BaseHint cimport *

cdef class ExpRangeHint(BaseHint):
    cdef godot_real start
    cdef godot_real stop
    cdef godot_real step