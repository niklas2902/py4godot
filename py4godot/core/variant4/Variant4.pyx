from py4godot.core.variant4.variant_utils cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot_core_holder.core_holder cimport *
from py4godot.utils.print_tools import *
from py4godot.utils.utils cimport *
from cpython cimport Py_INCREF, Py_DECREF, PyObject
from cython.operator cimport dereference
from libc.stdlib cimport malloc, free
gdnative_interface = get_interface()


primitive_types = {GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT,GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT, GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL}


cdef class Variant:
    def __init__(self, object):
        #TODO: implement this
        self.native_ptr = &self.native_arr
        print_error("init_variant")
        print_error(type(object))
        self.int_val = 0
        self.float_val = 0
        self.bool_val = False

        self. init_type(object)
    cdef void init_string(self, String object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING)
        #cdef String res_string = c_string_to_string("test description from conversion") #TODO:remove!!
        print_error("init_string:",gd_string_to_py_string(object))
        constructor_func(self.native_ptr,object.godot_owner)

    cdef void init_vector3(self, Vector3 object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3)
        constructor_func(self.native_ptr,object.godot_owner)#

    cdef void init_vector3i(self, Vector3i object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3)
        constructor_func(self.native_ptr,object.godot_owner)

    cdef void init_object(self, Object object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT)
        constructor_func(self.native_ptr,&(object.godot_owner))

    cdef void init_bool(self, bint object):
        self.bool_val = object
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL)
        constructor_func(self.native_ptr,&self.bool_val)

    cdef void init_float(self, float object):
        self.float_val = object
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT)
        constructor_func(self.native_ptr,&self.float_val)
        print("init_float:",self.float_val)


    cdef void init_int(self, int object):
        self.int_val = object
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT)
        constructor_func(self.native_ptr,&self.int_val)

    cdef void init_packedint32array(self, PackedInt32Array object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_basis(self, Basis object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BASIS)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_array(self, Array object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_stringname(self, StringName object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING_NAME)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_transform3d(self, Transform3D object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_TRANSFORM3D)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_signal(self, Signal object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_SIGNAL)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_quaternion(self, Quaternion object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_QUATERNION)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedcolorarray(self, PackedColorArray object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_plane(self, Plane object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PLANE)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_transform2d(self, Transform2D object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_TRANSFORM2D)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_aabb(self, AABB object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_AABB)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_vector2i(self, Vector2i object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR2I)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_color(self, Color object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_COLOR)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedvector3array(self, PackedVector3Array object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedfloat64array(self, PackedFloat64Array object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_dictionary(self, Dictionary object):
        print_error("init_dictionary")
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_DICTIONARY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedvector2array(self, PackedVector2Array object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_vector4(self, Vector4 object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR4)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_rid(self, RID object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_RID)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedfloat32array(self, PackedFloat32Array object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_nodepath(self, NodePath object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NODE_PATH)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_rect2(self, Rect2 object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_RECT2)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_rect2i(self, Rect2i object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_RECT2I)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedbytearray(self, PackedByteArray object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedstringarray(self, PackedStringArray object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_packedint64array(self, PackedInt64Array object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_vector2(self, Vector2 object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR2)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_vector4i(self, Vector4i object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR4I)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_callable(self, Callable object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_CALLABLE)
        constructor_func(self.native_ptr,object.godot_owner)
    cdef void init_projection(self, Projection object):
        cdef GDExtensionVariantFromTypeConstructorFunc constructor_func = gdnative_interface.get_variant_from_type_constructor(GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PROJECTION)
        constructor_func(self.native_ptr,object.godot_owner)

    cdef void init_nil(self):
      gdnative_interface.variant_new_nil(self.native_ptr)

    cdef object get_converted_value(self):
        print_error("get_converted_val")
        self.variant_type = gdnative_interface.variant_get_type(self.native_ptr)
        self.constructor = gdnative_interface.get_variant_to_type_constructor(self.variant_type)

        #TODO
        self.converted_val = Vector3.new_static(NULL)
        cdef int int_val = 0
        cdef bint bool_val = 0
        cdef double float_val = 0
        #TODO: Improve, speed, add more types
        try:
            if(self.variant_type !=  GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT and self.variant_type != GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT and self.variant_type != GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL):
                self.type_ptr = malloc(sizeof(uint8_t)*8)
                if self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3:
                    self.converted_val =  Vector3.new_static(exec_constructor(gdnative_interface, self.native_ptr, self.type_ptr, self.constructor))
                    return self.converted_val
                elif self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING:
                    self.converted_val =  String.new_static(exec_constructor(gdnative_interface, self.native_ptr, self.type_ptr, self.constructor))
                    return self.converted_val
                elif self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_TRANSFORM3D:
                    self.converted_val =  Transform3D.new_static(exec_constructor(gdnative_interface, self.native_ptr, self.type_ptr, self.constructor))
                    return self.converted_val
                elif self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_TRANSFORM2D:
                    self.converted_val =  Transform2D.new_static(exec_constructor(gdnative_interface, self.native_ptr, self.type_ptr, self.constructor))
                    return self.converted_val
                elif self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_QUATERNION:
                    self.converted_val =  Quaternion.new_static(exec_constructor(gdnative_interface, self.native_ptr, self.type_ptr, self.constructor))
                    return self.converted_val
                elif self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BASIS:
                    self.converted_val =  Basis.new_static(exec_constructor(gdnative_interface, self.native_ptr, self.type_ptr, self.constructor))
                    return self.converted_val
            else:
                if self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT:
                    exec_constructor_primitive(gdnative_interface, self.native_ptr, &int_val, self.constructor)
                    return int_val
                elif self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT:
                    exec_constructor_primitive(gdnative_interface, self.native_ptr, &float_val, self.constructor)
                    return float_val
                elif self.variant_type == GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL:
                    exec_constructor_primitive(gdnative_interface, self.native_ptr, &bool_val, self.constructor)
                    return bool_val


        except Exception as e:
            print_error(f"An Exception happened:{e}")
        return None

    cdef void init_type(self, object obj):
        try:
            self.obj = obj
            #TODO: get rid of if/elif: Use some kind of converter logic with a dictionary
            print_error("start_init_type" +str( obj))
            if isinstance(obj, String):
               self.init_string(self.obj)
            elif isinstance(obj,Object):
                self.init_object(self.obj)
            elif isinstance(obj,Vector3):
                self.init_vector3(self.obj)
            elif isinstance(obj,int):
                print_error("init_int")
                self.init_int(self.obj)
            elif isinstance(obj, float):
                self.init_float(self.obj)
            elif isinstance(obj, type(True)):
                print_error("init_bool")
                self.init_bool(self.obj)
            elif isinstance(obj, PackedInt32Array):
                self.init_packedint32array(self.obj)
            elif isinstance(obj, Basis):
                self.init_basis(self.obj)
            elif isinstance(obj, Array):
                self.init_array(self.obj)
            elif isinstance(obj, Vector3i):
                self.init_vector3i(self.obj)
            elif isinstance(obj, StringName):
                self.init_stringname(self.obj)
            elif isinstance(obj, Transform3D):
                self.init_transform3d(self.obj)
            elif isinstance(obj, Signal):
                self.init_signal(self.obj)
            elif isinstance(obj, Quaternion):
                self.init_quaternion(self.obj)
            elif isinstance(obj, PackedColorArray):
                self.init_packedcolorarray(self.obj)
            elif isinstance(obj, Plane):
                self.init_plane(self.obj)
            elif isinstance(obj, Transform2D):
                self.init_transform2d(self.obj)
            elif isinstance(obj, AABB):
                self.init_aabb(self.obj)
            elif isinstance(obj, Vector2i):
                self.init_vector2i(self.obj)
            elif isinstance(obj, Color):
                self.init_color(self.obj)
            elif isinstance(obj, PackedVector3Array):
                self.init_packedvector3array(self.obj)
            elif isinstance(obj, PackedFloat64Array):
                self.init_packedfloat64array(self.obj)
            elif isinstance(obj, Dictionary):
                self.init_dictionary(self.obj)
            elif isinstance(obj, PackedVector2Array):
                self.init_packedvector2array(self.obj)
            elif isinstance(obj, Vector4):
                self.init_vector4(self.obj)
            elif isinstance(obj, RID):
                self.init_rid(self.obj)
            elif isinstance(obj, PackedFloat32Array):
                self.init_packedfloat32array(self.obj)
            elif isinstance(obj, NodePath):
                self.init_nodepath(self.obj)
            elif isinstance(obj, Rect2):
                self.init_rect2(self.obj)
            elif isinstance(obj, Rect2i):
                self.init_rect2i(self.obj)
            elif isinstance(obj, PackedByteArray):
                self.init_packedbytearray(self.obj)
            elif isinstance(obj, PackedStringArray):
                self.init_packedstringarray(self.obj)
            elif isinstance(obj, PackedInt64Array):
                self.init_packedint64array(self.obj)
            elif isinstance(obj, Vector2):
                self.init_vector2(self.obj)
            elif isinstance(obj, Vector4i):
                self.init_vector4i(self.obj)
            elif isinstance(obj, Callable):
                self.init_callable(self.obj)
            elif isinstance(obj, Projection):
                self.init_projection(self.obj)
            else:
                print_error("new_nil called")
                print_error("object:",str(obj))
                print_error("type:",type(str(obj)))
                self.init_nil()
            print_error("after init_type")
        except Exception as e:
            print_error(f"an exception happened:"+str(e))