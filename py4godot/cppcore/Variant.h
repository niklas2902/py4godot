#pragma once 
#include "py4godot/gdextension-api/gdextension_interface.h"
class Variant {
public:
    GDExtensionTypePtr native_ptr;

    static Variant new_static(GDExtensionTypePtr ptr) {
        Variant var{};
        var.native_ptr = ptr;
        return var;
    }

    GDExtensionTypePtr get_native_ptr() {
        return native_ptr;
    }
};