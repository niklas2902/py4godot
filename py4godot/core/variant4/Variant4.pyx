from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
gdnative_interface = get_interface()

cdef class Variant:
    def __init__(self, object):
        #TODO: implement this
        if (object is String):
            self.init_string(object)
        elif (object is ScriptExtension):
            print_warning("is_script")
            self.init_object(object)

    cdef void init_string(self, String object):
        cdef GDNativeVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING)
        constructor_func(self.native_ptr,object.godot_owner)

    cdef void init_object(self, ScriptExtension object):
        cdef GDNativeVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDNativeVariantType.GDNATIVE_VARIANT_TYPE_STRING)
        constructor_func(self.native_ptr,object.godot_owner)

