#include "py4godot/cppcore/Variant.h"
#include "main.h"
#include "py4godot/cppclasses/generated4_core.h"

using namespace godot;

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
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
    constructor(&native_ptr, &val.godot_owner);
}
void Variant::init_type(Dictionary& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_STRING_NAME);
    constructor(&native_ptr, &val.godot_owner);
}

void Variant::init_type(int val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_INT);
    constructor(&native_ptr, &val);
}

void Variant::init_type(Array& val){
    auto constructor = get_interface()->get_variant_from_type_constructor(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_ARRAY);
    constructor(&native_ptr, &val.godot_owner);
}