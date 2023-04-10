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
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        print_error("Converter Base called")

cdef class Vector3Converter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Vector3 position =  Vector3.new0()
        constructor(position.godot_owner, var_ptr)
        return position


cdef class StringConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef String string = String.new0()
        constructor(string.godot_owner, var_ptr)
        return string

cdef class Vector2Converter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Vector2 val = Vector2.new0()
        constructor(val.godot_owner, var_ptr)
        return val

cdef class BoolConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef bint val = True
        constructor(&val, var_ptr)
        return val

cdef class IntConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef int val = 0
        constructor(&val, var_ptr)
        print_error("convert_from_int:", val)
        return val


cdef dict_type_conversion_methods = {
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3:Vector3Converter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR2:Vector2Converter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL:BoolConverter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT:IntConverter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING:StringConverter(),
}

cdef class Variant:
    def __init__(self, object):
        #TODO: implement this
        self.native_ptr = create_variant(gdnative_interface)
        print_error("init_variant")
        print_error(type(object))

        self. init_type(object)
    cdef void init_string(self, String object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING)
        #cdef String res_string = c_string_to_string("test description from conversion") #TODO:remove!!
        print_error("init_string:",gd_string_to_py_string(object))
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

    cdef void init_int(self, int object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL)
        constructor_func(self.native_ptr,&object)

    cdef void init_nil(self):
      gdnative_interface.variant_new_nil(self.native_ptr)

    cdef object get_converted_value(self):
        print_error("get_converted_val")
        cdef GDExtensionVariantType variant_type = gdnative_interface.variant_get_type(self.native_ptr)
        cdef GDExtensionTypeFromVariantConstructorFunc constructor = gdnative_interface.get_variant_to_type_constructor(variant_type)

        #TODO
        cdef ConverterBase converter =  dict_type_conversion_methods[variant_type]
        try:
            print_error("converter:", converter)
            return converter.from_ptr(constructor,self.native_ptr)
        except Exception as e:
            print_error(f"An Exception happened:{e}")
        return None

    cdef void init_type(self, object obj):
        try:
            print_error("start_init_type" +str( obj))
            if isinstance(obj, String):
               self.init_string(obj)
            elif isinstance(obj,Object):
                self.init_object(obj)
            elif isinstance(obj,Vector3):
                self.init_vector3(obj)
            elif isinstance(obj,int):
                print_error("init_int")
                self.init_int(obj)
            elif isinstance(obj, type(True)):
                print_error("init_bool")
                self.init_bool(obj)
            else:
                print_error("new_nil called")
                print_error("object:"+str(obj))
                print_error("type:"+type(str(obj)))
                self.init_nil()
            print_error("after init_type")
        except Exception as e:
            print_error("an exception happened:"+str(e))




