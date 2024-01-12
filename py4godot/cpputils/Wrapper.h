#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/godot_bindings/macros.h"
namespace godot{
    class LIBRARY_API Wrapper{

        public:
            bool shouldBeDeleted = false;
            GDExtensionObjectPtr godot_owner = nullptr;
            Wrapper(){
                shouldBeDeleted = false;
            }
        void set_godot_owner(GDExtensionObjectPtr owner) {
            godot_owner = owner;
        }

        GDExtensionObjectPtr& get_godot_owner() {
            return godot_owner;
        }
    };
}