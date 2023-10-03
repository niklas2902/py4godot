from py4godot.godot_bindings.binding4_godot4 cimport *

cdef extern from "py4godot/cppcore/Variant.h" namespace "godot":
    cdef cppclass Variant:
        GDExtensionVariantPtr native_ptr;

cdef class PyVariant:
    cdef Variant variant