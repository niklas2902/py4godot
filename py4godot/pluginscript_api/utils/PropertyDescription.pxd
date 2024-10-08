# distutils: language=c++
from py4godot.hints.BaseHint cimport *
from  py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.core cimport *


cdef class PropertyDescription:
    cdef str name
    cdef StringName gd_name
    cdef bytes bname
    cdef char* cname
    cdef GDExtensionVariantType type_
    cdef int hint
    cdef String hint_string
    cdef String class_
    cdef StringName class_name
    cdef int usage
    cdef object default_value
    cdef GDExtensionPropertyInfo property_info

    cdef void to_c(self)