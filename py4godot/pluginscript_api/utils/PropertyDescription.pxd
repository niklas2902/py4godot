# distutils: language=c++
from py4godot.hints.BaseHint cimport *
from  py4godot.godot_bindings.binding4_godot4 cimport *
cimport py4godot.pluginscript_api.utils.utils as utils
from libcpp.memory cimport shared_ptr

cdef class PropertyDescription:
    cdef str name
    cdef object gd_name
    cdef bytes bname
    cdef char* cname
    cdef GDExtensionVariantType type_
    cdef int hint
    cdef object hint_string
    cdef object class_
    cdef object class_name
    cdef int usage
    cdef object default_value
    cdef shared_ptr[utils.CPPPropertyDescription] property_description

    cdef void to_c(self)