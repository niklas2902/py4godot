#pragma once
#include "py4godot/cppclasses/generated4_core.h"
#include "py4godot/godot_bindings/main.h"
#include <stdlib.h>

using namespace godot;
static const char* gd_string_to_c_string(GDExtensionInterface* interface_ptr, GDExtensionConstStringPtr string_ptr, int length) {
    char* native_string = (char*)malloc(sizeof(char) * (length));
    interface_ptr->string_to_utf8_chars(string_ptr, native_string, length);
    return native_string;
}

static StringName c_string_to_string_name(const char* string){
    String gd_string = String::new0();
    main_interface->string_new_with_utf8_chars(&gd_string.godot_owner, string);
    const char* str = gd_string_to_c_string(main_interface, &gd_string.godot_owner, 10);
    main_interface->print_error("string_val:", "test", "test", 1, 1);
    main_interface->print_error(str, "test", "test",1,1);
    StringName gd_string_name = StringName::new2(gd_string);
    return gd_string_name;
}
static String c_string_to_string(const char* string){
    String gd_string = String::new0();
    gd_string.godot_owner = malloc(sizeof(uint8_t));
    main_interface->string_new_with_utf8_chars(gd_string.godot_owner, string);
    return gd_string;
}