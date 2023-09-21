#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
namespace godot{
    class VariantTypeWrapper {

    public:
        GDExtensionVariantType variant_type;
        GDExtensionTypePtr godot_owner;

        void set_godot_owner(GDExtensionTypePtr owner) {
            godot_owner = owner;
        }

        GDExtensionTypePtr get_godot_owner() {
            return godot_owner;
        }

        void set_variant_type(GDExtensionVariantType variant_type) {
            this->variant_type = variant_type;
        }

        GDExtensionVariantType get_variant_type() {
            return variant_type;
        }
    };
}