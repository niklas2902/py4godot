#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/help_types.h"
#include "py4godot/cpputils/utils.h"
#include "main.h"
#include <vector>
#include <memory>
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

std::shared_ptr<CPPMethodDescription> init_method_description(StringName name, std::vector<std::shared_ptr<CPPPropertyDescription>>& properties) {
    std::shared_ptr<CPPMethodDescription> res = std::make_shared<CPPMethodDescription>();
    res->name = name;
    res->flags = 4096|6|32768;
    res->id = id++;
    res->args = properties;

    std::shared_ptr<CPPPropertyDescription> return_description = std::make_shared<CPPPropertyDescription>();
    return_description->type_ = GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_NIL;
    return_description->name = c_string_to_string_name("return");
    return_description->class_name = c_string_to_string_name("Nil");
    return_description->hint = 0;
    return_description->usage = 4096|6|32768;
    return_description->hint_string = c_string_to_string("");

    res->return_value = return_description;
    return res;
}