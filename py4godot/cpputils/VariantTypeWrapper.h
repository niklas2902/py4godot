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
        bool shouldBeDeleted = false;
        long long __id;
        void* _callback = nullptr;
        VariantTypeWrapper(){
            shouldBeDeleted = false;
        }
        void set_shouldBeDeleted(bool val){
            shouldBeDeleted = val;
        }
    };
}