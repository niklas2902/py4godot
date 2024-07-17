#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/cpputils/utils.h"
#include "main.h"
#include <vector>
using namespace godot;

/*
typedef struct {
	GDExtensionStringNamePtr name;
	GDExtensionPropertyInfo return_value;
	uint32_t flags; // Bitfield of `GDExtensionClassMethodFlags`.
	int32_t id;

	/* Arguments: `default_arguments` is an array of size `argument_count`. */
	//uint32_t argument_count;
	//GDExtensionPropertyInfo *arguments;

	/* Default arguments: `default_arguments` is an array of size `default_argument_count`. */
	//uint32_t default_argument_count;
	//GDExtensionVariantPtr *default_arguments;
//} GDExtensionMethodInfo;

static uint32_t id = 0;
void init_method_description(StringName name, std::vector<GDExtensionPropertyInfo>& properties, GDExtensionMethodInfo& method_info) {
     StringName * stringname = new StringName{name};
    stringname->shouldBeDeleted = false;
    method_info.name = &stringname->godot_owner;
    method_info.flags = 4096|6|32768;
    method_info.id = id++;
    method_info.argument_count = properties.size();
    method_info.default_argument_count = 0;

    GDExtensionPropertyInfo* my_properties = (GDExtensionPropertyInfo*)malloc(sizeof(GDExtensionPropertyInfo) * properties.size());
    for(size_t index = 0; index < properties.size(); index++){
        my_properties[index] = properties[index];
    }
    method_info.arguments = my_properties;

    auto& return_info = method_info.return_value;
    StringName* return_name = new StringName{c_string_to_string_name("return")};
    StringName* return_class_name = new StringName{c_string_to_string_name("Nil")};
    String* return_hint = new String{c_string_to_string("")};

    return_info.type = GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL;
    return_info.name = &return_name->godot_owner;
    return_info.class_name = &return_class_name->godot_owner;
    return_info.hint = 0;
    return_info.hint_string = &return_hint->godot_owner;
    return_info.usage = 4096|6|32768;

}