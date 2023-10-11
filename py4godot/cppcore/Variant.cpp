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

PyObject* Variant::get_converted_value(){
    switch(get_interface()->variant_get_type(native_ptr)){
        case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_VECTOR3:
            return create_vector3();
        case GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING:
            return create_string();
    }
    return nullptr;
}