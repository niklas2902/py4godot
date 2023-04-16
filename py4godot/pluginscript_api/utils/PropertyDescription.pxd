from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *

cdef class PropertyDescription:
    cdef StringName name
    cdef GDExtensionVariantType type_
    cdef int hint
    cdef String hint_string
    cdef String class_
    cdef int usage
    cdef object default_value
    cdef GDExtensionPropertyInfo property_info

    cdef void to_c(self)