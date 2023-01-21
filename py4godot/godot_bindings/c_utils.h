#include "gdnative_interface.h"
#include<stdio.h>
#include<stdlib.h>

void set_gdnative_ptr(GDNativeTypePtr* a, GDNativeTypePtr b){
    *a = b;
}

GDNativeVariantPtr create_variant(GDNativeInterface * interface_ptr){
    GDNativeVariantPtr r_dest;
    interface_ptr->variant_new_nil(r_dest);
    return r_dest;
}

void create_variant_bool(GDNativeInterface * interface_ptr, GDNativeVariantPtr variant_ptr, uint8_t val){
    interface_ptr->variant_new_nil(variant_ptr);
    uint8_t* val_to_set = &val;
    GDNativeVariantFromTypeConstructorFunc constructor_func_valid = interface_ptr->get_variant_from_type_constructor(GDNATIVE_VARIANT_TYPE_BOOL);
    constructor_func_valid(variant_ptr, &val_to_set);
}

char * gd_string_c_string(GDNativeInterface* interface_ptr, GDNativeConstStringPtr string_ptr, int length){
    char *native_string = (char *)malloc(sizeof(char) * length+1);
    interface_ptr->string_to_utf8_chars(string_ptr, native_string, length+1);
    return native_string;
}

