from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.core.variant4.Variant4 cimport *

cdef class SignalDescription:
    cdef String signal_name
    cdef String signal_key
    cdef Variant signal_key_variant

    cdef Variant signal_name_variant
    cdef Dictionary signal_dict
    cdef Variant var_signal_dict