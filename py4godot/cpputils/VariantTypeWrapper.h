#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cpputils/Callback.h"
#include "py4godot/godot_bindings/macros.h"
#include <memory>
#include <vector>
namespace godot{
    class LIBRARY_API VariantTypeWrapper {

    public:
        GDExtensionVariantType variant_type;
        GDExtensionTypePtr godot_owner = nullptr;
        void* native_ptr = nullptr;
        bool is_callback_set = false;
        bool initialized = false;
        bool shouldBeDeleted = false;
        bool allocated_memory = false;
        long long __id;
        uint8_t data[16];
        void* _callback = nullptr;
        VariantTypeWrapper(){
            native_ptr = nullptr;
            godot_owner = &data[0];
            shouldBeDeleted = false;
            bool allocated_memory = false;
        }
        void set_godot_owner(GDExtensionTypePtr owner) {
            godot_owner = owner;
        }

        void set_callback(BaseCallback* callback){
            //_internal_update_callback = callback;
        }

        GDExtensionTypePtr& get_godot_owner() {
            return godot_owner;
        }

        void set_variant_type(GDExtensionVariantType variant_type) {
            this->variant_type = variant_type;
        }

        GDExtensionVariantType get_variant_type() {
            return variant_type;
        }

        void set_shouldBeDeleted(bool val){
            shouldBeDeleted = val;
        }
    };
}