from py4godot.godot_bindings.binding4_godot4 cimport *
cdef class VariantTypeWrapper4(object):
    """This class holds the c pointer of the godot_owner. The godot_owner is used when calling api methods,
    to identify the object"""
    cdef uint8_t _opaque[8]
    cdef GDNativeVariantType variant_type
    cdef GDNativeTypePtr godot_owner

    cdef inline void set_godot_owner(self,GDNativeTypePtr owner):
        self.godot_owner = owner

    cdef inline GDNativeTypePtr get_godot_owner(self):
        return self.godot_owner

    cdef inline void set_variant_type(self,GDNativeVariantType variant_type):
        self.variant_type = variant_type

    cdef inline GDNativeVariantType get_variant_type(self):
        return self.variant_type