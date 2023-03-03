from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
gdnative_interface = get_interface()

cdef class Variant:
    def __init__(self, object):
        #TODO: implement this
        self.native_ptr = create_variant(gdnative_interface)
        print_warning("init_variant")
        print_warning(type(object))
        if isinstance(object, String):
            self.init_string(object)
        elif isinstance(object,ScriptExtension):
            self.init_object(object)

    cdef void init_string(self, String object):
        print_warning("init_string")
        Py_INCREF(object)
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING)
        constructor_func(self.native_ptr,&(object.godot_owner))
        print_warning("after_init_string")

    cdef void init_object(self, ScriptExtension object):
        print_warning("init_object")
        Py_INCREF(object)
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT)
        constructor_func(self.native_ptr,&(object.godot_owner))
        print_warning("after_init_object")

