from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.core.variant4.Variant4 cimport *
from py4godot.classes.typed_arrays cimport *

cdef class SignalDescription:
    cdef String signal_name
    cdef String signal_key
    cdef Variant signal_key_variant

    cdef Variant signal_name_variant
    cdef Dictionary signal_dict
    cdef Variant var_signal_dict

    #args
    cdef Array args_array
    cdef String arg_key
    cdef Variant arg_key_variant
    cdef StringName dictionary_name
    cdef Variant dictionary_var

    #defining a single arg
    cdef list args_dicts
    cdef list variant_args_dicts
    cdef String arg_name_key
    cdef Variant arg_name_key_variant

    cdef String arg_type_key
    cdef Variant arg_type_key_variant
