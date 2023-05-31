#include "gdextension_interface.h"
#include<stdio.h>
#include<stdlib.h>
void* vector_array;
int int_val = 0;
float float_val = 0;
int bool_val = 0;
void* exec_constructor(GDExtensionInterface * interface_ptr, GDExtensionVariantPtr variant_ptr, void** godot_ptr,GDExtensionTypeFromVariantConstructorFunc constructor){
    GDExtensionTypeFromVariantConstructorFunc constr;
    GDExtensionVariantType variant_type = interface_ptr->variant_get_type(variant_ptr);

    vector_array = malloc(sizeof(uint8_t)*8);
    constr = interface_ptr -> get_variant_to_type_constructor(variant_type);
    constr(godot_ptr, variant_ptr);
    return godot_ptr;
}

void* exec_constructor_string(GDExtensionInterface * interface_ptr, GDExtensionVariantPtr variant_ptr, void* godot_ptr,GDExtensionTypeFromVariantConstructorFunc constructor){
    GDExtensionTypeFromVariantConstructorFunc constr;
    GDExtensionVariantType variant_type = interface_ptr->variant_get_type(variant_ptr);

    //godot_ptr = malloc(sizeof(uint8_t)*8);
    constr = interface_ptr -> get_variant_to_type_constructor(variant_type);
    constr(&godot_ptr, variant_ptr);
    return godot_ptr;
}


void exec_constructor_primitive(GDExtensionInterface * interface_ptr, GDExtensionVariantPtr variant_ptr,void* type_ptr, GDExtensionTypeFromVariantConstructorFunc constructor){
    GDExtensionTypeFromVariantConstructorFunc constr;
    GDExtensionVariantType variant_type = interface_ptr->variant_get_type(variant_ptr);
    constr = interface_ptr -> get_variant_to_type_constructor(variant_type);

    switch(variant_type){
        case GDEXTENSION_VARIANT_TYPE_BOOL:
            constr(type_ptr, variant_ptr);

        case GDEXTENSION_VARIANT_TYPE_INT:
            constr(type_ptr, variant_ptr);

        case GDEXTENSION_VARIANT_TYPE_FLOAT:
            constr(type_ptr, variant_ptr);
    }
    return 0;
}