
void set_gdnative_ptr(GDExtensionTypePtr* a, GDExtensionTypePtr b){
    *a = b;
}


GDExtensionVariantPtr create_variant2(GDExtensionInterface * interface_ptr){
    GDExtensionVariantPtr r_dest = malloc(sizeof(char)*4);
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
    char *native_string = (char *)malloc(sizeof(char) * (length));
    interface_ptr->string_to_utf8_chars(string_ptr, native_string, length);
    return native_string;
}

void * create_native_ptr(GDExtensionInterface* interface_ptr){
    interface_ptr->print_error("before creating ptr", "test", "test",1,1);
    void* ptr =  interface_ptr->mem_alloc(8);
    interface_ptr->print_error("after creating ptr", "test", "test",1,1);
    return ptr;
}

void create_native_ptr_from_ptr(GDExtensionInterface* interface_ptr, void** from_ptr ){
    * (from_ptr) =  interface_ptr->mem_alloc(8);

}

