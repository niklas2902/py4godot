#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
namespace godot{
    class Wrapper{

        public:
            GDExtensionObjectPtr godot_owner = nullptr;
        void set_godot_owner(GDExtensionObjectPtr owner) {
            godot_owner = owner;
        }

        GDExtensionObjectPtr get_godot_owner() {
            return godot_owner;
        }
    };
}