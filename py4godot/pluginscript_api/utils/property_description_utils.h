#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cpputils/utils.h"
#include <vector>
using namespace godot;

void init_property_description(GDExtensionPropertyInfo& property_info,
GDExtensionVariantType type_,
StringName& name,
StringName& class_name,
uint32_t hint,
String& hint_string,
uint32_t usage
){
    StringName * stringname = new StringName{name};
    stringname->shouldBeDeleted = false;
    StringName *classname = new StringName{class_name};
    classname->shouldBeDeleted = false;
    auto temp_hint_string = c_string_to_string("");
    String * ptr_hint_string = new String{temp_hint_string};
    ptr_hint_string->shouldBeDeleted = false;

    property_info.type = type_;
    property_info.name = &stringname->godot_owner;
    property_info.class_name = &classname->godot_owner;
    property_info.hint = hint;
    property_info.hint_string = &ptr_hint_string->godot_owner;
    property_info.usage = usage;
}