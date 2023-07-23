from py4godot.godot_bindings.binding4_godot4 cimport *
cdef public class VariantTypeWrapper4(object)[object VariantWrapper, type VariantWrapperType]:
    """This class holds the c pointer of the godot_owner. The godot_owner is used when calling api methods,
    to identify the object"""
    #cdef uint8_t _opaque[8]
    cdef GDExtensionVariantType variant_type
    cdef GDExtensionTypePtr godot_owner

    cdef inline void set_godot_owner(self,GDExtensionTypePtr owner):
        self.godot_owner = owner

    cdef inline GDExtensionTypePtr get_godot_owner(self):
        return self.godot_owner

    cdef inline void set_variant_type(self,GDExtensionVariantType variant_type):
        self.variant_type = variant_type

    cdef inline GDExtensionVariantType get_variant_type(self):
        return self.variant_type