# distutils: language=c++
from py4godot.hints.BaseHint cimport *
from  py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.core cimport *
cimport py4godot.pluginscript_api.utils.utils as utils

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
    cdef shared_ptr[utils.CPPPropertyDescription] property_description

    cdef void to_c(self)