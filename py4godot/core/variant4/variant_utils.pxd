from py4godot.godot_bindings.binding4_godot4 cimport *

cdef extern from "variant_utils.h":
        void* exec_constructor(GDExtensionInterface * interface_ptr, GDExtensionVariantPtr variant_ptr,void* type_ptr, GDExtensionTypeFromVariantConstructorFunc constructor)
