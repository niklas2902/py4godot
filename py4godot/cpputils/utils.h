#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include "py4godot/cppclasses/generated4_core.h"

using namespace godot;
static StringName c_string_to_string_name(const char* string){
    GDExtensionInterface* _interface = get_interface();
    String gd_string = String::new0();
    _interface->string_new_with_utf8_chars(gd_string.godot_owner, string);
    StringName gd_string_name = StringName::new2(gd_string);
    return gd_string_name;
}
static String c_string_to_string(const char* string){
    GDExtensionInterface* _interface = get_interface();
    String gd_string = String::new0();
    _interface->string_new_with_utf8_chars(gd_string.godot_owner, string);
    return gd_string;
}