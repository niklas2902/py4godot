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
        void* _callback = nullptr;
        bool initialized = false;
        bool shouldBeDeleted = false;
        long long __id;
        VariantTypeWrapper(){
            native_ptr = nullptr;
            godot_owner = nullptr;
            shouldBeDeleted = false;
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