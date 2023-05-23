from py4godot.core.variant4.variant_utils cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.ScriptExtension.ScriptExtension cimport *
from py4godot.classes.Object.Object cimport *

cdef class ConverterBase:
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)

cdef class Vector3Converter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Vector2Converter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class BoolConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class IntConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class StringConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class FloatConverter(ConverterBase):
    cdef object from_ptr(self,GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class QuaternionConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedFloat64ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class DictionaryConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Transform3DConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Vector2iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedByteArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedFloat32ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Rect2Converter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PlaneConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedInt32ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class RIDConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Vector3iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class StringNameConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class SignalConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedVector2ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class ProjectionConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class BasisConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Vector4iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Transform2DConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class AABBConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class ColorConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedInt64ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Vector4Converter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedColorArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class NodePathConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class CallableConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class Rect2iConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedStringArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)
cdef class PackedVector3ArrayConverter(ConverterBase):
    cdef object from_ptr(self, GDExtensionTypeFromVariantConstructorFunc constructor, GDExtensionVariantPtr var_ptr)

cdef class Variant:
    cdef GDExtensionVariantPtr native_ptr
    cdef ConverterBase converter
    cdef GDExtensionTypeFromVariantConstructorFunc constructor
    cdef uint8_t[8] native_arr
    cdef object obj
    cdef object converted_val
    cdef GDExtensionVariantType variant_type
    cdef void * type_ptr
    cdef inline void set_native_ptr(self,GDExtensionVariantPtr ptr):
      self.native_ptr = ptr

    cdef void init_vector3(self, Vector3 object)
    cdef void init_string(self, String object)
    cdef void init_object(self, Object object)
    cdef void init_bool(self, bint object)
    cdef void init_int(self, int object)
    cdef void init_nil(self)

    cdef void init_float(self, float object)
    cdef void init_packedint32array(self, PackedInt32Array object)
    cdef void init_basis(self, Basis object)
    cdef void init_array(self, Array object)
    cdef void init_vector3i(self, Vector3i object)
    cdef void init_stringname(self, StringName object)
    cdef void init_transform3d(self, Transform3D object)
    cdef void init_signal(self, Signal object)
    cdef void init_quaternion(self, Quaternion object)
    cdef void init_packedcolorarray(self, PackedColorArray object)
    cdef void init_plane(self, Plane object)
    cdef void init_transform2d(self, Transform2D object)
    cdef void init_aabb(self, AABB object)
    cdef void init_vector2i(self, Vector2i object)
    cdef void init_color(self, Color object)
    cdef void init_packedvector3array(self, PackedVector3Array object)
    cdef void init_packedfloat64array(self, PackedFloat64Array object)
    cdef void init_dictionary(self, Dictionary object)
    cdef void init_packedvector2array(self, PackedVector2Array object)
    cdef void init_vector4(self, Vector4 object)
    cdef void init_rid(self, RID object)
    cdef void init_packedfloat32array(self, PackedFloat32Array object)
    cdef void init_nodepath(self, NodePath object)
    cdef void init_rect2(self, Rect2 object)
    cdef void init_rect2i(self, Rect2i object)
    cdef void init_packedbytearray(self, PackedByteArray object)
    cdef void init_packedstringarray(self, PackedStringArray object)
    cdef void init_packedint64array(self, PackedInt64Array object)
    cdef void init_vector2(self, Vector2 object)
    cdef void init_vector4i(self, Vector4i object)
    cdef void init_callable(self, Callable object)
    cdef void init_projection(self, Projection object)

    cdef int int_val
    cdef bint bool_val
    cdef double float_val

    cdef void init_type(self, object obj)
    #convert values
    cdef object get_converted_value(self)


    @staticmethod
    cdef inline Variant new_static(GDExtensionVariantPtr ptr):
        cdef Variant var = Variant.__new__(Variant)
        var.set_native_ptr(ptr)
        return var

    cdef inline GDExtensionVariantPtr get_native_ptr(self):
        return self.native_ptr