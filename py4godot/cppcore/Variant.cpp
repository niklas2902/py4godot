#include "py4godot/cppcore/Variant.h"
#include "main.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "type_helpers_api.h"

using namespace godot;


void Variant::init_variant(){
    import_py4godot__core__variant4__type_helpers();
    if (PyErr_Occurred())
    {
        PyObject *ptype, *pvalue, *ptraceback;
        PyErr_Fetch(&ptype, &pvalue, &ptraceback);

        PyObject* str_exc_type = PyObject_Repr(pvalue); //Now a unicode
        PyObject* pyStr = PyUnicode_AsEncodedString(str_exc_type, "utf-8","Error ~");
        const char *strExcType = PyBytes_AS_STRING(pyStr);
        PyErr_Print();
        _interface->print_error(strExcType, "test", "test", 1, 1);
        assert(false);
        return;
    }
}

Variant::Variant(){
    //auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL);
    //constructor(&native_ptr, NULL);
}


Variant::Variant(String& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
    constructor(&native_ptr, &val.godot_owner);
}
Variant::Variant(StringName& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
    constructor(&native_ptr, &val.godot_owner);
}
Variant::Variant(Dictionary& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY);
    constructor(&native_ptr, &val.godot_owner);
}

Variant::Variant(int val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(&native_ptr, &val);
}

void Variant::init_type(String& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
    constructor(native_ptr, &val.godot_owner);
}
void Variant::init_type(Dictionary& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY);
    constructor(native_ptr, &val.godot_owner);
}

void Variant::init_type(int val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(native_ptr, &val);
}

void Variant::init_type(Array& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY);
    constructor(native_ptr, &val.godot_owner);
}

#pragma region generated
PyObject* Variant::create_vector3(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Vector3 vector = Vector3();
    constructor(&vector.godot_owner, native_ptr);

    auto val = type_helper_create_vector3(vector);
    return val;
}

PyObject* Variant::create_string(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    String string = String();
    constructor(&string.godot_owner, native_ptr);

    auto val = type_helper_create_string(string);
    return val;
}

PyObject* Variant::create_rect2i(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Rect2i string = Rect2i();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_rect2i(string);
    return val;
}
PyObject* Variant::create_callable(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Callable string = Callable();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_callable(string);
    return val;
}
PyObject* Variant::create_nodepath(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    NodePath string = NodePath();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_nodepath(string);
    return val;
}
PyObject* Variant::create_int(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    int val = 0;
    constructor(&val, native_ptr);
    return PyLong_FromLong(val);
}

PyObject* Variant::create_packedvector3array(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedVector3Array string = PackedVector3Array();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedvector3array(string);
    return val;
}

PyObject* Variant::create_dictionary(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Dictionary string = Dictionary();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_dictionary(string);
    return val;
}
PyObject* Variant::create_projection(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Projection string = Projection();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_projection(string);
    return val;
}
PyObject* Variant::create_rid(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    RID string = RID();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_rid(string);
    return val;
}
PyObject* Variant::create_vector2i(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Vector2i string = Vector2i();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector2i(string);
    return val;
}
PyObject* Variant::create_transform2d(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Transform2D string = Transform2D();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_transform2d(string);
    return val;
}
PyObject* Variant::create_aabb(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    AABB string = AABB();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_aabb(string);
    return val;
}
PyObject* Variant::create_float(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    double val = 0;
    constructor(&val, native_ptr);
    return PyFloat_FromDouble(val);
}
PyObject* Variant::create_vector3i(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Vector3i string = Vector3i();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector3i(string);
    return val;
}
PyObject* Variant::create_packedint64array(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedInt64Array string = PackedInt64Array();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedint64array(string);
    return val;
}
PyObject* Variant::create_packedint32array(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedInt32Array string = PackedInt32Array();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedint32array(string);
    return val;
}
PyObject* Variant::create_packedfloat32array(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedFloat32Array string = PackedFloat32Array();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedfloat32array(string);
    return val;
}
PyObject* Variant::create_packedbytearray(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedByteArray string = PackedByteArray();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedbytearray(string);
    return val;
}
PyObject* Variant::create_vector4(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Vector4 string = Vector4();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector4(string);
    return val;
}
PyObject* Variant::create_rect2(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Rect2 string = Rect2();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_rect2(string);
    return val;
}
PyObject* Variant::create_vector2(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Vector2 string = Vector2();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector2(string);
    return val;
}
PyObject* Variant::create_transform3d(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Transform3D string = Transform3D();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_transform3d(string);
    return val;
}
PyObject* Variant::create_packedcolorarray(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedColorArray string = PackedColorArray();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedcolorarray(string);
    return val;
}
PyObject* Variant::create_signal(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Signal string = Signal();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_signal(string);
    return val;
}
PyObject* Variant::create_packedvector2array(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedVector2Array string = PackedVector2Array();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedvector2array(string);
    return val;
}
PyObject* Variant::create_plane(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Plane string = Plane();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_plane(string);
    return val;
}
PyObject* Variant::create_packedfloat64array(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedFloat64Array string = PackedFloat64Array();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedfloat64array(string);
    return val;
}

PyObject* Variant::create_bool(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    bool val = false;
    constructor(&val, native_ptr);
    return PyBool_FromLong(val);
}
PyObject* Variant::create_basis(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Basis string = Basis();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_basis(string);
    return val;
}
PyObject* Variant::create_color(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Color string = Color();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_color(string);
    return val;
}
PyObject* Variant::create_vector4i(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Vector4i string = Vector4i();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector4i(string);
    return val;
}
PyObject* Variant::create_array(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Array string = Array();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_array(string);
    return val;
}
PyObject* Variant::create_quaternion(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    Quaternion string = Quaternion();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_quaternion(string);
    return val;
}
PyObject* Variant::create_packedstringarray(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    PackedStringArray string = PackedStringArray();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedstringarray(string);
    return val;
}
PyObject* Variant::create_stringname(){
    GDExtensionVariantType type = get_interface()->variant_get_type(native_ptr);
    auto constructor = get_interface()->get_variant_to_type_constructor(type);
    StringName string = StringName();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_stringname(string);
    return val;
}


#pragma endregion

PyObject* Variant::get_converted_value(){
    switch(get_interface()->variant_get_type(native_ptr)){
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2I:
        return create_rect2i();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_CALLABLE:
        return create_callable();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NODE_PATH:
        return create_nodepath();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT:
        return create_int();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING:
        return create_string();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY:
        return create_packedvector3array();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3:
        return create_vector3();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY:
        return create_dictionary();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PROJECTION:
        return create_projection();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RID:
        return create_rid();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2I:
        return create_vector2i();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM2D:
        return create_transform2d();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_AABB:
        return create_aabb();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_FLOAT:
        return create_float();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3I:
        return create_vector3i();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY:
        return create_packedint64array();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY:
        return create_packedint32array();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY:
        return create_packedfloat32array();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY:
        return create_packedbytearray();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4:
        return create_vector4();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2:
        return create_rect2();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2:
        return create_vector2();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM3D:
        return create_transform3d();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY:
        return create_packedcolorarray();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_SIGNAL:
        return create_signal();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY:
        return create_packedvector2array();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PLANE:
        return create_plane();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY:
        return create_packedfloat64array();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BOOL:
        return create_bool();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BASIS:
        return create_basis();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_COLOR:
        return create_color();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4I:
        return create_vector4i();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY:
        return create_array();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_QUATERNION:
        return create_quaternion();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY:
        return create_packedstringarray();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME:
        return create_stringname();
    }
    return nullptr;
}