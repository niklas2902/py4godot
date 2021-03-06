from core.variant.variant_binding cimport *

cdef class Variant:
    cdef godot_variant _native