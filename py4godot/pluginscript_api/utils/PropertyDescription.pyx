from py4godot.pluginscript_api.hints.BaseHint cimport *
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.generated4_core cimport *
from py4godot.classes.Object.Object cimport *
from py4godot.utils.utils cimport *
from py4godot.utils.print_tools import *

cdef GDExtensionPropertyInfo property
cdef StringName name = StringName.new2(c_string_to_string("test"))
cdef StringName class_ = StringName.new2(c_string_to_string("int"))
cdef String hint = c_string_to_string("test")
property.type = GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT
property.name = name.godot_owner
property.class_name = class_.godot_owner
property.hint = 0
property.hint_string = hint.godot_owner
property.usage = 6


cdef dict types_dict = {
int:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT,
str:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING,
type(True):GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL,
float:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT,
Object:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT,
Vector4:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR4,
PackedColorArray:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY,
Vector2i:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR2I,
Vector3i:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3I,
Quaternion:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_QUATERNION,
Callable:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_CALLABLE,
PackedVector2Array:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY,
Vector4i:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR4I,
Array:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_ARRAY,
PackedByteArray:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY,
AABB:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_AABB,
Transform3D:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_TRANSFORM3D,
Transform2D:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_TRANSFORM2D,
Rect2i:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_RECT2I,
PackedFloat64Array:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY,
Dictionary:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_DICTIONARY,
PackedStringArray:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY,
Plane:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PLANE,
PackedInt64Array:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY,
Signal:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_SIGNAL,
PackedFloat32Array:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY,
Rect2:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_RECT2,
Vector2:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR2,
NodePath:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NODE_PATH,
Color:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_COLOR,
StringName:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING_NAME,
RID:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_RID,
Projection:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PROJECTION,
PackedInt32Array:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY,
Vector3:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3,
PackedVector3Array:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY,
Basis:GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BASIS,
}

cdef object convert_val(object val):
    if(type(val) == str):
        return c_string_to_string(val.encode("utf-8"))
    return val

cdef GDExtensionVariantType get_variant_type(object type_):
    if(type_ in types_dict.keys()):
        return types_dict[type_]
    print_error("couldn't find type", type_)
    return GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL

cdef class PropertyDescription:
    """"Description class for the properties, a gdclass can have and which can be found in the editor"""
    def __init__(self, name,type_, BaseHint hint, usage, default_value):
        self.name = StringName.new2(c_string_to_string(name.encode("utf-8")))
        self.type_ = get_variant_type(type_)
        self.hint = hint.get_hint()
        self.hint_string = c_string_to_string(hint.get_string().encode("utf-8"))
        self.usage = usage
        self.default_value = convert_val(default_value)
        self.class_ = c_string_to_string("int")
        self.class_name = StringName.new0()
        self.to_c()

    def get_name(self):
        return self.name

    def get_default_value(self):
        return self.default_value
    cdef void to_c(self):
        #cdef StringName name = StringName.new2(c_string_to_string(self.name.encode("utf-8")))
        #cdef StringName class_ = StringName.new2(c_string_to_string("int"))
        #cdef String hint = c_string_to_string(self.hint_string.encode('utf-8'))


        self.property_info.type = self.type_
        self.property_info.name = self.name.godot_owner
        self.property_info.class_name = self.class_name.godot_owner
        self.property_info.hint = self.hint
        self.property_info.hint_string = self.hint_string.godot_owner
        self.property_info.usage = self.usage


        #cdef StringName name = StringName.new2(c_string_to_string("test"))
        #cdef StringName class_ = StringName.new2(c_string_to_string("int"))
        #cdef String hint = c_string_to_string("test")
        #self.property_info.type = GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT
        #self.property_info.name = name.godot_owner
        #self.property_info.class_name = class_.godot_owner
        #self.property_info.hint = 0
        #self.property_info.hint_string = hint.godot_owner
        #self.property_info.usage = 32768


