#include "gdnative_interface.h"

void set_gdnative_ptr(GDNativeTypePtr* a, GDNativeTypePtr b){
    *a = b;
}

GDNativeVariantPtr create_variant(GDNativeInterface * interface_ptr){
    GDNativeVariantPtr r_dest;
    interface_ptr->variant_new_nil(r_dest);
    return r_dest;
}

