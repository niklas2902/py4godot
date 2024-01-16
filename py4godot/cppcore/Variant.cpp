#include "py4godot/cppcore/Variant.h"
#include "main.h"
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/cppclasses/Object/Object.h"
#include "type_helpers_api.h"
#include "cast_helpers_api.h"
#include "py4godot/cppcore/cast_type.h"
#include "py4godot/cpputils/utils.h"

#include "functions.h"

using namespace godot;

constexpr unsigned int str2int(const char* str, int h = 0)
{
    return !str[h] ? 5381 : (str2int(str, h+1) * 33) ^ str[h];
}
void Variant::init_godot_owner(void* owner, GDExtensionVariantType type){
    auto constructor = functions::get_get_variant_from_type_constructor()(type);
    constructor(&native_ptr, &owner);
}
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
        assert(false);
        return;
    }
    init_casting();
}

Variant::Variant(){
    /*int dummy = 0;
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(&native_ptr, &dummy);
    */
}

Variant Variant::construct(){
    Variant var{};
    int dummy = 0;
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(&var._inner_ptr, &dummy);
    var.native_ptr = &var._inner_ptr;
    return var;
}

void Variant::construct_inner(){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    int val = 0;
    constructor(&_inner_ptr, &val);
    native_ptr = &_inner_ptr;
}

void Variant::switch_native_and_inner(){
    native_ptr = ((void**)native_ptr)[0];
}

Variant::Variant(int* val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(&_inner_ptr, &val);
}

Variant::Variant(String& val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
    constructor(&native_ptr, &val.godot_owner);
}
Variant::Variant(StringName& val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
    constructor(&native_ptr, &val.godot_owner);
}
Variant::Variant(Dictionary& val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY);
    constructor(&native_ptr, &val.godot_owner);
}

Variant::Variant(Object& val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_OBJECT);
    constructor(&native_ptr, &val.godot_owner);
}

Variant::Variant(int val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(&native_ptr, &val);
}

void Variant::init_type(String& val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
    constructor(native_ptr, &val.godot_owner);
}
void Variant::init_type(Dictionary& val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY);
    constructor(native_ptr, &val.godot_owner);
}

void Variant::init_type(int val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(native_ptr, &val);
}

void Variant::init_type(Array& val){
    auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY);
    constructor(native_ptr, &val.godot_owner);
}

#pragma region generated
PyObject* Variant::create_vector3(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector3 vector = Vector3();
    vector.shouldBeDeleted = false;
    constructor(&vector.godot_owner, native_ptr);
    auto val = type_helper_create_vector3(vector);
    return val;
}

PyObject* Variant::create_string(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    String string = String();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);

    auto val = type_helper_create_string(string);
    return val;
}

PyObject* Variant::create_py_string(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    String string = String();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);

    auto val = type_helper_create_py_string(string);
    return val;
}

PyObject* Variant::create_rect2i(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Rect2i string = Rect2i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_rect2i(string);
    return val;
}
PyObject* Variant::create_callable(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Callable string = Callable();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_callable(string);
    return val;
}
PyObject* Variant::create_nodepath(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    NodePath string = NodePath();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_nodepath(string);
    return val;
}
PyObject* Variant::create_int(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    int val = 0;
    constructor(&val, native_ptr);
    return PyLong_FromLong(val);
}

PyObject* Variant::create_packedvector3array(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedVector3Array string = PackedVector3Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedvector3array(string);
    return val;
}

PyObject* Variant::create_dictionary(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Dictionary string = Dictionary();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_dictionary(string);
    return val;
}
PyObject* Variant::create_projection(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Projection string = Projection();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_projection(string);
    return val;
}
PyObject* Variant::create_rid(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    RID string = RID();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_rid(string);
    return val;
}
PyObject* Variant::create_vector2i(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector2i string = Vector2i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector2i(string);
    return val;
}
PyObject* Variant::create_transform2d(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Transform2D string = Transform2D();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_transform2d(string);
    return val;
}
PyObject* Variant::create_aabb(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    AABB string = AABB();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_aabb(string);
    return val;
}
PyObject* Variant::create_float(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    double val = 0;
    constructor(&val, native_ptr);
    return PyFloat_FromDouble(val);
}
PyObject* Variant::create_vector3i(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector3i string = Vector3i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector3i(string);
    return val;
}
PyObject* Variant::create_packedint64array(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedInt64Array string = PackedInt64Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedint64array(string);
    return val;
}
PyObject* Variant::create_packedint32array(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedInt32Array string = PackedInt32Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedint32array(string);
    return val;
}
PyObject* Variant::create_packedfloat32array(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedFloat32Array string = PackedFloat32Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedfloat32array(string);
    return val;
}
PyObject* Variant::create_packedbytearray(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedByteArray string = PackedByteArray();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_packedbytearray(string);
    return val;
}
PyObject* Variant::create_vector4(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector4 string = Vector4();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector4(string);
    return val;
}
PyObject* Variant::create_rect2(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Rect2 string = Rect2();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_rect2(string);
    return val;
}
PyObject* Variant::create_vector2(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector2 string = Vector2();
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector2(string);
    return val;
}
PyObject* Variant::create_transform3d(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Transform3D string = Transform3D();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_transform3d(string);
    return val;
}
PyObject* Variant::create_packedcolorarray(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedColorArray string = PackedColorArray();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_packedcolorarray(string);
    return val;
}
PyObject* Variant::create_signal(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Signal string = Signal();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_signal(string);
    return val;
}
PyObject* Variant::create_packedvector2array(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedVector2Array string = PackedVector2Array();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_packedvector2array(string);
    return val;
}
PyObject* Variant::create_plane(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Plane string = Plane();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_plane(string);
    return val;
}
PyObject* Variant::create_packedfloat64array(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedFloat64Array string = PackedFloat64Array();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_packedfloat64array(string);
    return val;
}

PyObject* Variant::create_bool(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    bool val = false;
    constructor(&val, native_ptr);
    return PyBool_FromLong(val);
}
PyObject* Variant::create_basis(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Basis string = Basis();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_basis(string);
    return val;
}
PyObject* Variant::create_color(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Color string = Color();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_color(string);
    return val;
}
PyObject* Variant::create_vector4i(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector4i string = Vector4i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_vector4i(string);
    return val;
}
PyObject* Variant::create_array(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Array string = Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_array(string);
    return val;
}
PyObject* Variant::create_quaternion(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Quaternion string = Quaternion();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_quaternion(string);
    return val;
}
PyObject* Variant::create_packedstringarray(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedStringArray string = PackedStringArray();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_packedstringarray(string);
    return val;
}
PyObject* Variant::create_stringname(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    StringName string = StringName();
    constructor(&string.godot_owner, native_ptr);
    string.shouldBeDeleted = false;
    auto val = type_helper_create_stringname(string);
    return val;
}

PyObject* Variant::create_object(){
    GDExtensionVariantType type = functions::get_variant_get_type()(native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Object string = Object::constructor();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, native_ptr);
    auto val = type_helper_create_object(string);
    char* class_name;
    auto class_name_string = string.get_class();
    gd_string_to_c_string(&class_name_string.godot_owner, class_name_string.length(),&class_name);
    auto casted = cast_to_type(class_name,val);
    free(class_name);
    return casted;
}


PyObject* Variant::create_vector3_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector3 vector = Vector3();
    vector.shouldBeDeleted = false;
    constructor(&vector.godot_owner, &native_ptr);

    auto val = type_helper_create_vector3(vector);
    return val;
}

PyObject* Variant::create_string_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    String string = String();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);

    auto val = type_helper_create_string(string);
    return val;
}

PyObject* Variant::create_py_string_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    String string = String();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);

    auto val = type_helper_create_py_string(string);
    return val;
}

PyObject* Variant::create_rect2i_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Rect2i string = Rect2i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_rect2i(string);
    return val;
}
PyObject* Variant::create_callable_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Callable string = Callable();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_callable(string);
    return val;
}
PyObject* Variant::create_nodepath_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    NodePath string = NodePath();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_nodepath(string);
    return val;
}
PyObject* Variant::create_int_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    int val = 0;
    constructor(&val, &native_ptr);
    return PyLong_FromLong(val);
}

PyObject* Variant::create_packedvector3array_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedVector3Array string = PackedVector3Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedvector3array(string);
    return val;
}

PyObject* Variant::create_dictionary_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Dictionary string = Dictionary();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_dictionary(string);
    return val;
}
PyObject* Variant::create_projection_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Projection string = Projection();
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_projection(string);
    return val;
}
PyObject* Variant::create_rid_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    RID string = RID();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_rid(string);
    return val;
}
PyObject* Variant::create_vector2i_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector2i string = Vector2i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_vector2i(string);
    return val;
}
PyObject* Variant::create_transform2d_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Transform2D string = Transform2D();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_transform2d(string);
    return val;
}
PyObject* Variant::create_aabb_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    AABB string = AABB();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_aabb(string);
    return val;
}
PyObject* Variant::create_float_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    double val = 0;
    constructor(&val, &native_ptr);
    return PyFloat_FromDouble(val);
}
PyObject* Variant::create_vector3i_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector3i string = Vector3i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_vector3i(string);
    return val;
}
PyObject* Variant::create_packedint64array_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedInt64Array string = PackedInt64Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedint64array(string);
    return val;
}
PyObject* Variant::create_packedint32array_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedInt32Array string = PackedInt32Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedint32array(string);
    return val;
}
PyObject* Variant::create_packedfloat32array_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedFloat32Array string = PackedFloat32Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedfloat32array(string);
    return val;
}
PyObject* Variant::create_packedbytearray_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedByteArray string = PackedByteArray();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedbytearray(string);
    return val;
}
PyObject* Variant::create_vector4_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector4 string = Vector4();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_vector4(string);
    return val;
}
PyObject* Variant::create_rect2_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Rect2 string = Rect2();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_rect2(string);
    return val;
}
PyObject* Variant::create_vector2_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector2 string = Vector2();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_vector2(string);
    return val;
}
PyObject* Variant::create_transform3d_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Transform3D string = Transform3D();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_transform3d(string);
    return val;
}
PyObject* Variant::create_packedcolorarray_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedColorArray string = PackedColorArray();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedcolorarray(string);
    return val;
}
PyObject* Variant::create_signal_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Signal string = Signal();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_signal(string);
    return val;
}
PyObject* Variant::create_packedvector2array_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedVector2Array string = PackedVector2Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedvector2array(string);
    return val;
}
PyObject* Variant::create_plane_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Plane string = Plane();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_plane(string);
    return val;
}
PyObject* Variant::create_packedfloat64array_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedFloat64Array string = PackedFloat64Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedfloat64array(string);
    return val;
}

PyObject* Variant::create_bool_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    bool val = false;
    constructor(&val, &native_ptr);
    return PyBool_FromLong(val);
}
PyObject* Variant::create_basis_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Basis string = Basis();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_basis(string);
    return val;
}
PyObject* Variant::create_color_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Color string = Color();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_color(string);
    return val;
}
PyObject* Variant::create_vector4i_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Vector4i string = Vector4i();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_vector4i(string);
    return val;
}
PyObject* Variant::create_array_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Array string = Array();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_array(string);
    return val;
}
PyObject* Variant::create_quaternion_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    Quaternion string = Quaternion();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_quaternion(string);
    return val;
}
PyObject* Variant::create_packedstringarray_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    PackedStringArray string = PackedStringArray();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_packedstringarray(string);
    return val;
}
PyObject* Variant::create_stringname_native_ptr(){
    GDExtensionVariantType type = functions::get_variant_get_type()(&native_ptr);
    auto constructor = functions::get_get_variant_to_type_constructor()(type);
    StringName string = StringName();
    string.shouldBeDeleted = false;
    constructor(&string.godot_owner, &native_ptr);
    auto val = type_helper_create_stringname(string);
    return val;
}


#pragma endregion

PyObject* Variant::get_converted_value(bool should_return_pystring){
    switch(functions::get_variant_get_type()(native_ptr)){
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2I:
        return create_rect2i();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_CALLABLE:
        return create_callable();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NODE_PATH:
        return create_nodepath();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT:
        return create_int();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING:
        if (!should_return_pystring)
            return create_string();
        return create_py_string();
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

    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL:
        return Py_None;

    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_OBJECT:
        return create_object();
    }
    return nullptr;
}

PyObject* Variant::get_converted_value_native_ptr(bool should_return_pystring){
    switch(functions::get_variant_get_type()(&native_ptr)){
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2I:
        return create_rect2i_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_CALLABLE:
        return create_callable_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NODE_PATH:
        return create_nodepath_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT:
        return create_int_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING:
        if (!should_return_pystring)
            return create_string_native_ptr();
        return create_py_string_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY:
        return create_packedvector3array_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3:
        return create_vector3_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY:
        return create_dictionary_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PROJECTION:
        return create_projection_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RID:
        return create_rid_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2I:
        return create_vector2i_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM2D:
        return create_transform2d_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_AABB:
        return create_aabb_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_FLOAT:
        return create_float_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3I:
        return create_vector3i_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY:
        return create_packedint64array_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY:
        return create_packedint32array_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY:
        return create_packedfloat32array_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY:
        return create_packedbytearray_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4:
        return create_vector4_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2:
        return create_rect2_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2:
        return create_vector2_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM3D:
        return create_transform3d_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY:
        return create_packedcolorarray_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_SIGNAL:
        return create_signal_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY:
        return create_packedvector2array_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PLANE:
        return create_plane_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY:
        return create_packedfloat64array_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BOOL:
        return create_bool_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BASIS:
        return create_basis_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_COLOR:
        return create_color_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4I:
        return create_vector4i_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY:
        return create_array_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_QUATERNION:
        return create_quaternion_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY:
        return create_packedstringarray_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME:
        return create_stringname_native_ptr();
    case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL:
        return Py_None;
    }
    return nullptr;
}




void Variant::init_from_py_object(PyObject* object, const char* type_name){
    GDExtensionVariantFromTypeConstructorFunc constructor;
    switch(str2int(type_name)){
        case str2int("Rect2i"):
            construct_Rect2i(object);
            break;
        case str2int("Callable"):
            construct_Callable(object);
            break;
        case str2int("NodePath"):
            construct_NodePath(object);
            break;
        case str2int("int"):
            construct_int(object);
            break;
        case str2int("String"):
            construct_String(object);
            break;
        case str2int("PackedVector3Array"):
            construct_PackedVector3Array(object);
            break;
        case str2int("Vector3"):
            construct_Vector3(object);
            break;
        case str2int("Dictionary"):
            construct_Dictionary(object);
            break;
        case str2int("Projection"):
            construct_Projection(object);
            break;
        case str2int("RID"):
            construct_RID(object);
            break;
        case str2int("Vector2i"):
            construct_Vector2i(object);
            break;
        case str2int("Transform2D"):
            construct_Transform2D(object);
            break;
        case str2int("AABB"):
            construct_AABB(object);
            break;
        case str2int("float"):
            construct_float(object);
            break;
        case str2int("Vector3i"):
            construct_Vector3i(object);
            break;
        case str2int("PackedInt64Array"):
            construct_PackedInt64Array(object);
            break;
        case str2int("Nil"):
            construct_Nil(object);
            break;
        case str2int("PackedInt32Array"):
            construct_PackedInt32Array(object);
            break;
        case str2int("PackedFloat32Array"):
            construct_PackedFloat32Array(object);
            break;
        case str2int("PackedByteArray"):
            construct_PackedByteArray(object);
            break;
        case str2int("Vector4"):
            construct_Vector4(object);
            break;
        case str2int("Rect2"):
            construct_Rect2(object);
            break;
        case str2int("Vector2"):
            construct_Vector2(object);
            break;
        case str2int("Transform3D"):
            construct_Transform3D(object);
            break;
        case str2int("PackedColorArray"):
            construct_PackedColorArray(object);
            break;
        case str2int("Signal"):
            construct_Signal(object);
            break;
        case str2int("PackedVector2Array"):
            construct_PackedVector2Array(object);
            break;
        case str2int("Plane"):
            construct_Plane(object);
            break;
        case str2int("PackedFloat64Array"):
            construct_PackedFloat64Array(object);
            break;
        case str2int("bool"):
            construct_bool(object);
            break;
        case str2int("Basis"):
            construct_Basis(object);
            break;
        case str2int("Color"):
            construct_Color(object);
            break;
        case str2int("Vector4i"):
            construct_Vector4i(object);
            break;
        case str2int("Array"):
            construct_Array(object);
            break;
        case str2int("Quaternion"):
            construct_Quaternion(object);
            break;
        case str2int("PackedStringArray"):
            construct_PackedStringArray(object);
            break;
        case str2int("StringName"):
            construct_StringName(object);
            break;
        case str2int("str"):
            construct_py_string(object);
            break;
        default:
            construct_Object(object);
    }
}


void Variant::init_from_py_object_native_ptr(PyObject* object, const char* type_name){
    GDExtensionVariantFromTypeConstructorFunc constructor;
    switch(str2int(type_name)){
        case str2int("Rect2i"):
            construct_Rect2i_native_ptr(object);
            break;
        case str2int("Callable"):
            construct_Callable_native_ptr(object);
            break;
        case str2int("NodePath"):
            construct_NodePath_native_ptr(object);
            break;
        case str2int("int"):
            construct_int_native_ptr(object);
            break;
        case str2int("String"):
            construct_String_native_ptr(object);
            break;
        case str2int("PackedVector3Array"):
            construct_PackedVector3Array_native_ptr(object);
            break;
        case str2int("Vector3"):
            construct_Vector3_native_ptr(object);
            break;
        case str2int("Dictionary"):
            construct_Dictionary_native_ptr(object);
            break;
        case str2int("Projection"):
            construct_Projection_native_ptr(object);
            break;
        case str2int("RID"):
            construct_RID_native_ptr(object);
            break;
        case str2int("Vector2i"):
            construct_Vector2i_native_ptr(object);
            break;
        case str2int("Transform2D"):
            construct_Transform2D_native_ptr(object);
            break;
        case str2int("AABB"):
            construct_AABB_native_ptr(object);
            break;
        case str2int("float"):
            construct_float_native_ptr(object);
            break;
        case str2int("Vector3i"):
            construct_Vector3i_native_ptr(object);
            break;
        case str2int("PackedInt64Array"):
            construct_PackedInt64Array_native_ptr(object);
            break;
        case str2int("Nil"):
            construct_Nil_native_ptr(object);
            break;
        case str2int("PackedInt32Array"):
            construct_PackedInt32Array_native_ptr(object);
            break;
        case str2int("PackedFloat32Array"):
            construct_PackedFloat32Array_native_ptr(object);
            break;
        case str2int("PackedByteArray"):
            construct_PackedByteArray_native_ptr(object);
            break;
        case str2int("Vector4"):
            construct_Vector4_native_ptr(object);
            break;
        case str2int("Rect2"):
            construct_Rect2_native_ptr(object);
            break;
        case str2int("Vector2"):
            construct_Vector2_native_ptr(object);
            break;
        case str2int("Transform3D"):
            construct_Transform3D_native_ptr(object);
            break;
        case str2int("PackedColorArray"):
            construct_PackedColorArray_native_ptr(object);
            break;
        case str2int("Signal"):
            construct_Signal_native_ptr(object);
            break;
        case str2int("PackedVector2Array"):
            construct_PackedVector2Array_native_ptr(object);
            break;
        case str2int("Plane"):
            construct_Plane_native_ptr(object);
            break;
        case str2int("PackedFloat64Array"):
            construct_PackedFloat64Array_native_ptr(object);
            break;
        case str2int("bool"):
            construct_bool_native_ptr(object);
            break;
        case str2int("Basis"):
            construct_Basis_native_ptr(object);
            break;
        case str2int("Color"):
            construct_Color_native_ptr(object);
            break;
        case str2int("Vector4i"):
            construct_Vector4i_native_ptr(object);
            break;
        case str2int("Array"):
            construct_Array_native_ptr(object);
            break;
        case str2int("Quaternion"):
            construct_Quaternion_native_ptr(object);
            break;
        case str2int("PackedStringArray"):
            construct_PackedStringArray_native_ptr(object);
            break;
        case str2int("StringName"):
            construct_StringName_native_ptr(object);
            break;
        case str2int("str"):
            construct_py_string_native_ptr(object);
            break;
        case str2int("NoneType"):
            construct_Nil_native_ptr(object);
            break;
        default:
            construct_Object_native_ptr(object);
    }
}
void Variant::construct_Rect2i(PyObject* object){
        Rect2i converted_val = get_rect2i_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2I);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Callable(PyObject* object){
        Callable converted_val = get_callable_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_CALLABLE);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_NodePath(PyObject* object){
        NodePath converted_val = get_nodepath_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NODE_PATH);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_int(PyObject* object){
        int64_t converted_val = (int64_t)PyLong_AsLong(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
        constructor(native_ptr, &converted_val);
}
void Variant::construct_py_string(PyObject* object){
        String converted_val = get_string_from_py_string(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}

void Variant::construct_String(PyObject* object){
        String converted_val = get_string_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedVector3Array(PyObject* object){
        PackedVector3Array converted_val = get_packedvector3array_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Vector3(PyObject* object){
        Vector3 converted_val = Vector3(get_vector3_from_pyobject(object));
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Dictionary(PyObject* object){
        Dictionary converted_val = get_dictionary_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Projection(PyObject* object){
        Projection converted_val = get_projection_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PROJECTION);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_RID(PyObject* object){
        RID converted_val = get_rid_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RID);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Vector2i(PyObject* object){
        Vector2i converted_val = get_vector2i_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2I);
        constructor(native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Transform2D(PyObject* object){
        Transform2D converted_val = get_transform2d_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM2D);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_AABB(PyObject* object){
        AABB converted_val = get_aabb_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_AABB);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_float(PyObject* object){
        double converted_val = PyFloat_AsDouble(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_FLOAT);
        constructor(native_ptr, &converted_val);
}
void Variant::construct_Vector3i(PyObject* object){
        Vector3i converted_val = get_vector3i_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3I);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedInt64Array(PyObject* object){
        PackedInt64Array converted_val = get_packedint64array_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Nil(PyObject* object){
        long long val = 0;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL);
        constructor(native_ptr, &val);
}
void Variant::construct_PackedInt32Array(PyObject* object){
        PackedInt32Array converted_val = get_packedint32array_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedFloat32Array(PyObject* object){
        PackedFloat32Array converted_val = get_packedfloat32array_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedByteArray(PyObject* object){
        PackedByteArray converted_val = get_packedbytearray_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Vector4(PyObject* object){
        Vector4 converted_val = get_vector4_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Rect2(PyObject* object){
        Rect2 converted_val = get_rect2_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Vector2(PyObject* object){
        Vector2 converted_val = get_vector2_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Transform3D(PyObject* object){
        Transform3D converted_val = get_transform3d_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM3D);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedColorArray(PyObject* object){
        PackedColorArray converted_val = get_packedcolorarray_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Signal(PyObject* object){
        Signal converted_val = get_signal_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_SIGNAL);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedVector2Array(PyObject* object){
        PackedVector2Array converted_val = get_packedvector2array_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Plane(PyObject* object){
        Plane converted_val = get_plane_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PLANE);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedFloat64Array(PyObject* object){
        PackedFloat64Array converted_val = get_packedfloat64array_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_bool(PyObject* object){
        bool converted_val = PyObject_IsTrue(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BOOL);
        constructor(native_ptr, &converted_val);
}
void Variant::construct_Basis(PyObject* object){
        Basis converted_val = get_basis_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BASIS);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Color(PyObject* object){
        Color converted_val = get_color_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_COLOR);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Vector4i(PyObject* object){
        Vector4i converted_val = get_vector4i_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4I);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Array(PyObject* object){
        Array converted_val = get_array_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_Quaternion(PyObject* object){
        Quaternion converted_val = get_quaternion_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_QUATERNION);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_PackedStringArray(PyObject* object){
        PackedStringArray converted_val = get_packedstringarray_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}
void Variant::construct_StringName(PyObject* object){
        StringName converted_val = get_stringname_from_pyobject(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
        constructor(native_ptr, &converted_val.godot_owner);
        converted_val.shouldBeDeleted = false;
}

void Variant::construct_Object(PyObject* object){
        Object converted_val;
        if(object != Py_None){
            get_object_from_pyobject(object, &converted_val);
            auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_OBJECT);
            constructor(native_ptr, &converted_val.godot_owner);
        }

}



void Variant::construct_Rect2i_native_ptr(PyObject* object){
        Rect2i converted_val = get_rect2i_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2I);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Callable_native_ptr(PyObject* object){
        Callable converted_val = get_callable_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_CALLABLE);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_NodePath_native_ptr(PyObject* object){
        NodePath converted_val = get_nodepath_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NODE_PATH);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_int_native_ptr(PyObject* object){
        int64_t converted_val = (int64_t)PyLong_AsLong(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
        constructor(&native_ptr, &converted_val);
}
void Variant::construct_py_string_native_ptr(PyObject* object){
        String converted_val = get_string_from_py_string(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
        constructor(&native_ptr, &converted_val.godot_owner);
}

void Variant::construct_String_native_ptr(PyObject* object){
        String converted_val = get_string_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedVector3Array_native_ptr(PyObject* object){
        PackedVector3Array converted_val = get_packedvector3array_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Vector3_native_ptr(PyObject* object){
        Vector3 converted_val = get_vector3_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Dictionary_native_ptr(PyObject* object){
        Dictionary converted_val = get_dictionary_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_DICTIONARY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Projection_native_ptr(PyObject* object){
        Projection converted_val = get_projection_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PROJECTION);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_RID_native_ptr(PyObject* object){
        RID converted_val = get_rid_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RID);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Vector2i_native_ptr(PyObject* object){
        Vector2i converted_val = get_vector2i_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2I);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Transform2D_native_ptr(PyObject* object){
        Transform2D converted_val = get_transform2d_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM2D);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_AABB_native_ptr(PyObject* object){
        AABB converted_val = get_aabb_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_AABB);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_float_native_ptr(PyObject* object){
        double converted_val = PyFloat_AsDouble(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_FLOAT);
        constructor(&native_ptr, &converted_val);
}
void Variant::construct_Vector3i_native_ptr(PyObject* object){
        Vector3i converted_val = get_vector3i_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3I);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedInt64Array_native_ptr(PyObject* object){
        PackedInt64Array converted_val = get_packedint64array_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Nil_native_ptr(PyObject* object){
        int val = 0;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
        constructor(&native_ptr, &val);
}
void Variant::construct_PackedInt32Array_native_ptr(PyObject* object){
        PackedInt32Array converted_val = get_packedint32array_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedFloat32Array_native_ptr(PyObject* object){
        PackedFloat32Array converted_val = get_packedfloat32array_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedByteArray_native_ptr(PyObject* object){
        PackedByteArray converted_val = get_packedbytearray_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Vector4_native_ptr(PyObject* object){
        Vector4 converted_val = get_vector4_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Rect2_native_ptr(PyObject* object){
        Rect2 converted_val = get_rect2_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_RECT2);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Vector2_native_ptr(PyObject* object){
        Vector2 converted_val = get_vector2_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR2);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Transform3D_native_ptr(PyObject* object){
        Transform3D converted_val = get_transform3d_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_TRANSFORM3D);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedColorArray_native_ptr(PyObject* object){
        PackedColorArray converted_val = get_packedcolorarray_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Signal_native_ptr(PyObject* object){
        Signal converted_val = get_signal_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_SIGNAL);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedVector2Array_native_ptr(PyObject* object){
        PackedVector2Array converted_val = get_packedvector2array_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Plane_native_ptr(PyObject* object){
        Plane converted_val = get_plane_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PLANE);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedFloat64Array_native_ptr(PyObject* object){
        PackedFloat64Array converted_val = get_packedfloat64array_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_bool_native_ptr(PyObject* object){
        bool converted_val = PyObject_IsTrue(object);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BOOL);
        constructor(&native_ptr, &converted_val);
}
void Variant::construct_Basis_native_ptr(PyObject* object){
        Basis converted_val = get_basis_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_BASIS);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Color_native_ptr(PyObject* object){
        Color converted_val = get_color_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_COLOR);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Vector4i_native_ptr(PyObject* object){
        Vector4i converted_val = get_vector4i_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR4I);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Array_native_ptr(PyObject* object){
        Array converted_val = get_array_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_Quaternion_native_ptr(PyObject* object){
        Quaternion converted_val = get_quaternion_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_QUATERNION);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_PackedStringArray_native_ptr(PyObject* object){
        PackedStringArray converted_val = get_packedstringarray_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY);
        constructor(&native_ptr, &converted_val.godot_owner);
}
void Variant::construct_StringName_native_ptr(PyObject* object){
        StringName converted_val = get_stringname_from_pyobject(object);
        converted_val.shouldBeDeleted = false;
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
        constructor(&native_ptr, &converted_val.godot_owner);
}

void Variant::construct_Object_native_ptr(PyObject* object){
    Object converted_val;
        get_object_from_pyobject(object, &converted_val);
        auto constructor = functions::get_get_variant_from_type_constructor()(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_OBJECT);
        constructor(&native_ptr, &converted_val.godot_owner);
}