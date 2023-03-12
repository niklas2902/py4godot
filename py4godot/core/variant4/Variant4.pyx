from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference
gdnative_interface = get_interface()

cdef class ConverterBase:
    cdef object from_ptr(self,GDExtensionTypePtr type_ptr):
        print_warning("Converter Base called")

cdef class Vector3Converter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypePtr type_ptr):
        cdef Vector3 position =  Vector3.new_static(type_ptr)
        print_warning(f"set_position successful:")
        return position

cdef class Vector2Converter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypePtr type_ptr):
        return Vector2.new_static(dereference(<void**>type_ptr))

cdef class BoolConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypePtr type_ptr):
        return <bool>dereference(<void**>type_ptr)

cdef class IntConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypePtr type_ptr):
        return <int>(dereference(<void**>type_ptr))


cdef dict_type_conversion_methods = {
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3:Vector3Converter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR2:Vector2Converter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL:BoolConverter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT:IntConverter()
}

cdef class Variant:
    def __init__(self, object):
        #TODO: implement this
        self.native_ptr = create_variant(gdnative_interface)
        print_warning("init_variant")
        print_warning(type(object))

        self. init_type(object)
    cdef void init_string(self, String object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING)
        constructor_func(self.native_ptr,object.godot_owner)

    cdef void init_vector3(self, Vector3 object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3)
        constructor_func(self.native_ptr,object.godot_owner)

    cdef void init_object(self, Object object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT)
        constructor_func(self.native_ptr,&(object.godot_owner))

    cdef void init_bool(self, bint object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL)
        constructor_func(self.native_ptr,&object)

    cdef void init_nil(self):
      gdnative_interface.variant_new_nil(self.native_ptr)

    cdef object get_converted_value(self):
        cdef GDExtensionVariantType variant_type = gdnative_interface.variant_get_type(self.native_ptr)
        cdef GDExtensionTypeFromVariantConstructorFunc constructor = gdnative_interface.get_variant_to_type_constructor(variant_type)

        #TODO
        cdef uint8_t[4] type_ptr
        constructor(type_ptr, self.native_ptr)
        cdef ConverterBase converter =  dict_type_conversion_methods[variant_type]
        try:
            return converter.from_ptr(type_ptr)
        except Exception as e:
            print_warning(f"An Exception happened:{e}")
        return None

    cdef void init_type(self, object obj):
        try:
            print_warning("start_init_type" +str( obj))
            if isinstance(obj, type(True)):
                self.init_bool(obj)
            elif isinstance(obj, String):
               self.init_string(obj)
            elif isinstance(obj,Object):
                self.init_object(obj)
            elif isinstance(obj,Vector3):
                self.init_vector3(obj)
            else:
                print_warning("new_nil called")
                print_warning("object:"+str(obj))
                self.init_nil()
            print_warning("after init_type")
        except Exception as e:
            print_warning("an exception happened:"+str(e))




