#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cpputils/utils.h"
#include <vector>
#include<memory>
using namespace godot;

std::shared_ptr<CPPPropertyDescription> init_property_description(
GDExtensionVariantType type_,
StringName& name,
StringName& class_name,
uint32_t hint,
String& hint_string,
uint32_t usage
){
    std::shared_ptr<CPPPropertyDescription> res = std::make_shared<CPPPropertyDescription>();
    res -> name = StringName(name);
    res -> class_name = StringName::new0();
    res -> hint_string = String(hint_string);
    res -> hint = hint;
    res -> usage = usage;
    res -> type_ = type_;
    return res;
}