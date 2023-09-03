#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"

static GDExtensionInterface* gdnative_interface;

static GDExtensionInterface* get_interface(){
    return gdnative_interface;
}


static GDExtensionInterface* set_interface(GDExtensionInterface* _interface){
    gdnative_interface = _interface;
}