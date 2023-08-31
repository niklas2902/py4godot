#include "gdextension_interface.h"
class VariantTypeWrapper4(object)[object VariantWrapper, type VariantWrapperType]:
    """This class holds the c pointer of the godot_owner. The godot_owner is used when calling api methods,
    to identify the object"""
    cdef GDExtensionVariantType variant_type;
    cdef GDExtensionTypePtr godot_owner;

    public:
    void set_godot_owner(GDExtensionTypePtr owner){
        godot_owner = owner;
        }

    GDExtensionTypePtr get_godot_owner(){
        return godot_owner;
        }

    void set_variant_type(GDExtensionVariantType variant_type){
        variant_type = variant_type;
    }

    GDExtensionVariantType get_variant_type(){
        return variant_type;
        }