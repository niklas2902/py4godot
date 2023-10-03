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

static void gd_string_to_c_string(GDExtensionInterface* interface_ptr, GDExtensionConstStringPtr string_ptr, int length, char** res_string) {
    *res_string = (char*)malloc(sizeof(char) * (length+1));
    interface_ptr->string_to_utf8_chars(string_ptr, *res_string, length);
    (*res_string)[length] = '\0';
}

static StringName c_string_to_string_name(const char* string){
    String gd_string = String::new0();
    get_interface()->string_new_with_utf8_chars(&gd_string.godot_owner, string);
    StringName gd_string_name = StringName::new2(gd_string);
    return gd_string_name;
}
static String c_string_to_string(const char* string){
    String gd_string = String::new0();
    get_interface()->string_new_with_utf8_chars(&gd_string.godot_owner, string);
    return gd_string;
}

static void add_string_to_array(GDExtensionTypePtr array, String string){
     GDExtensionTypePtr _args[1];
    _args[0] = &string.godot_owner;
    bool _ret;
    StringName _class_name = c_string_to_string_name("PackedStringArray");
    StringName _method_name = c_string_to_string_name("push_back");
    GDExtensionPtrBuiltInMethod method_to_call = _interface->variant_get_ptr_builtin_method(GDExtensionVariantType::GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY, &_method_name.godot_owner, 816187996);
    method_to_call(array, &_args[0], &_ret, 1);
}