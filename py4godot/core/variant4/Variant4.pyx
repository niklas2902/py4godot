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
        return val


cdef class FloatConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef double val = 0
        constructor(&val, var_ptr)
        return val

cdef class QuaternionConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Quaternion gdobject =  Quaternion.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedFloat64ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedFloat64Array gdobject =  PackedFloat64Array.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class DictionaryConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Dictionary gdobject =  Dictionary.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Transform3DConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Transform3D gdobject =  Transform3D.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Vector2iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Vector2i gdobject =  Vector2i.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedByteArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedByteArray gdobject =  PackedByteArray.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedFloat32ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedFloat32Array gdobject =  PackedFloat32Array.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Rect2Converter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Rect2 gdobject =  Rect2.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PlaneConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Plane gdobject =  Plane.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedInt32ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedInt32Array gdobject =  PackedInt32Array.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class RIDConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef RID gdobject =  RID.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Array gdobject =  Array.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Vector3iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Vector3i gdobject =  Vector3i.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class StringNameConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef StringName gdobject =  StringName.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class SignalConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Signal gdobject =  Signal.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedVector2ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedVector2Array gdobject =  PackedVector2Array.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class ProjectionConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Projection gdobject =  Projection.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class BasisConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Basis gdobject =  Basis.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Vector4iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Vector4i gdobject =  Vector4i.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Transform2DConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Transform2D gdobject =  Transform2D.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class AABBConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef AABB gdobject =  AABB.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class ColorConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Color gdobject =  Color.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedInt64ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedInt64Array gdobject =  PackedInt64Array.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Vector4Converter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Vector4 gdobject =  Vector4.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedColorArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedColorArray gdobject =  PackedColorArray.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class NodePathConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef NodePath gdobject =  NodePath.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class CallableConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Callable gdobject =  Callable.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class Rect2iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef Rect2i gdobject =  Rect2i.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedStringArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedStringArray gdobject =  PackedStringArray.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject
cdef class PackedVector3ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr):
        cdef PackedVector3Array gdobject =  PackedVector3Array.new0()
        constructor(gdobject.godot_owner, var_ptr)
        return gdobject

cdef dict_type_conversion_methods = {
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3:Vector3Converter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR2:Vector2Converter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL:BoolConverter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT:IntConverter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING:StringConverter(),
GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT:FloatConverter(),
GDEXTENSION_VARIANT_TYPE_QUATERNION:QuaternionConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY:PackedFloat64ArrayConverter(),
GDEXTENSION_VARIANT_TYPE_DICTIONARY:DictionaryConverter(),
GDEXTENSION_VARIANT_TYPE_TRANSFORM3D:Transform3DConverter(),
GDEXTENSION_VARIANT_TYPE_VECTOR2I:Vector2iConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY:PackedByteArrayConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY:PackedFloat32ArrayConverter(),
GDEXTENSION_VARIANT_TYPE_RECT2:Rect2Converter(),
GDEXTENSION_VARIANT_TYPE_PLANE:PlaneConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY:PackedInt32ArrayConverter(),
GDEXTENSION_VARIANT_TYPE_RID:RIDConverter(),
GDEXTENSION_VARIANT_TYPE_ARRAY:ArrayConverter(),
GDEXTENSION_VARIANT_TYPE_VECTOR3I:Vector3iConverter(),
GDEXTENSION_VARIANT_TYPE_STRING_NAME:StringNameConverter(),
GDEXTENSION_VARIANT_TYPE_SIGNAL:SignalConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY:PackedVector2ArrayConverter(),
GDEXTENSION_VARIANT_TYPE_PROJECTION:ProjectionConverter(),
GDEXTENSION_VARIANT_TYPE_BASIS:BasisConverter(),
GDEXTENSION_VARIANT_TYPE_VECTOR4I:Vector4iConverter(),
GDEXTENSION_VARIANT_TYPE_TRANSFORM2D:Transform2DConverter(),
GDEXTENSION_VARIANT_TYPE_AABB:AABBConverter(),
GDEXTENSION_VARIANT_TYPE_COLOR:ColorConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY:PackedInt64ArrayConverter(),
GDEXTENSION_VARIANT_TYPE_VECTOR4:Vector4Converter(),
GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY:PackedColorArrayConverter(),
GDEXTENSION_VARIANT_TYPE_NODE_PATH:NodePathConverter(),
GDEXTENSION_VARIANT_TYPE_CALLABLE:CallableConverter(),
GDEXTENSION_VARIANT_TYPE_RECT2I:Rect2iConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY:PackedStringArrayConverter(),
GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY:PackedVector3ArrayConverter(),
}

cdef class Variant:
    def __init__(self, object):
        #TODO: implement this
        self.native_ptr = create_variant(gdnative_interface)
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
            #TODO: get rid of if/elif: Use some kind of converter logic with a dictionary
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
            elif isinstance(obj, float):
                self.init_float(obj)
            elif isinstance(obj, type(True)):
                print_error("init_bool")
                self.init_bool(obj)
            elif isinstance(obj, PackedInt32Array):
                self.init_packedint32array(obj)
            elif isinstance(obj, Basis):
                self.init_basis(obj)
            elif isinstance(obj, Array):
                self.init_array(obj)
            elif isinstance(obj, Vector3i):
                self.init_vector3i(obj)
            elif isinstance(obj, StringName):
                self.init_stringname(obj)
            elif isinstance(obj, Transform3D):
                self.init_transform3d(obj)
            elif isinstance(obj, Signal):
                self.init_signal(obj)
            elif isinstance(obj, Quaternion):
                self.init_quaternion(obj)
            elif isinstance(obj, PackedColorArray):
                self.init_packedcolorarray(obj)
            elif isinstance(obj, Plane):
                self.init_plane(obj)
            elif isinstance(obj, Transform2D):
                self.init_transform2d(obj)
            elif isinstance(obj, AABB):
                self.init_aabb(obj)
            elif isinstance(obj, Vector2i):
                self.init_vector2i(obj)
            elif isinstance(obj, Color):
                self.init_color(obj)
            elif isinstance(obj, PackedVector3Array):
                self.init_packedvector3array(obj)
            elif isinstance(obj, PackedFloat64Array):
                self.init_packedfloat64array(obj)
            elif isinstance(obj, Dictionary):
                self.init_dictionary(obj)
            elif isinstance(obj, PackedVector2Array):
                self.init_packedvector2array(obj)
            elif isinstance(obj, Vector4):
                self.init_vector4(obj)
            elif isinstance(obj, RID):
                self.init_rid(obj)
            elif isinstance(obj, PackedFloat32Array):
                self.init_packedfloat32array(obj)
            elif isinstance(obj, NodePath):
                self.init_nodepath(obj)
            elif isinstance(obj, Rect2):
                self.init_rect2(obj)
            elif isinstance(obj, Rect2i):
                self.init_rect2i(obj)
            elif isinstance(obj, PackedByteArray):
                self.init_packedbytearray(obj)
            elif isinstance(obj, PackedStringArray):
                self.init_packedstringarray(obj)
            elif isinstance(obj, PackedInt64Array):
                self.init_packedint64array(obj)
            elif isinstance(obj, Vector2):
                self.init_vector2(obj)
            elif isinstance(obj, Vector4i):
                self.init_vector4i(obj)
            elif isinstance(obj, Callable):
                self.init_callable(obj)
            elif isinstance(obj, Projection):
                self.init_projection(obj)
            else:
                print_error("new_nil called")
                print_error("object:",str(obj))
                print_error("type:",type(str(obj)))
                self.init_nil()
            print_error("after init_type")
        except Exception as e:
            print_error(f"an exception happened:"+str(e))




