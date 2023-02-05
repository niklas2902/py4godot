#include "gdextension_interface.h"
#include<stdio.h>
#include<stdlib.h>

void set_gdnative_ptr(GDExtensionTypePtr* a, GDExtensionTypePtr b){
    *a = b;
}


GDExtensionVariantPtr create_variant2(GDExtensionInterface * interface_ptr){
    GDExtensionVariantPtr r_dest = malloc(sizeof(char));
    interface_ptr->variant_new_nil(r_dest);
    return r_dest;
}

GDExtensionVariantPtr create_variant(GDExtensionInterface * interface_ptr){
    GDExtensionVariantPtr r_dest;
    interface_ptr->variant_new_nil(r_dest);
    return r_dest;
}

void create_variant_bool(GDExtensionInterface * interface_ptr, GDExtensionVariantPtr variant_ptr, uint8_t val){
    interface_ptr->variant_new_nil(variant_ptr);
    uint8_t* val_to_set = &val;
    GDExtensionVariantFromTypeConstructorFunc constructor_func_valid = interface_ptr->get_variant_from_type_constructor(GDEXTENSION_VARIANT_TYPE_BOOL);
    constructor_func_valid(variant_ptr, &val_to_set);
}

char * gd_string_c_string(GDExtensionInterface* interface_ptr, GDExtensionConstStringPtr string_ptr, int length){
    char *native_string = (char *)malloc(sizeof(char) * length+1);
    interface_ptr->string_to_utf8_chars(string_ptr, native_string, length+1);
    return native_string;
}

