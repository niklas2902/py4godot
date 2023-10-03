#pragma once 
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/class_defs.h"
namespace godot{
    class LIBRARY_API Variant {
    public:
        GDExtensionVariantPtr native_ptr;

        Variant();
        Variant(String& val);
        Variant(StringName& val);
        Variant(Dictionary& val);
        Variant(int val);

        void init_type(String& val);
        void init_type(Dictionary& val);
        void init_type(int val);
        void init_type(Array& val);

        static Variant new_static(GDExtensionTypePtr ptr) {
            Variant var{};
            var.native_ptr = ptr;
            return var;
        }

        GDExtensionTypePtr get_native_ptr() {
            return native_ptr;
        }
    };
}