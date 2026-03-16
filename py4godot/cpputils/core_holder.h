#pragma once
#include "py4godot/gdextension-api/gdextension_interface.h"
#include <cassert>

GDExtensionInterface* gdnative_interface;
GDExtensionClassLibraryPtr _library;

GDExtensionInterface* get_interface(){
    return gdnative_interface;
}


void set_interface(GDExtensionInterface* _interface){
    _interface->print_error("set_interface called", "test", "test",1,1);
    if(_interface == nullptr){
          _interface->print_error("_interface is null", "test", "test",1,1);
    }
    else{
        _interface->print_error("_interface is not null", "test", "test",1,1);
    }
    gdnative_interface = _interface;
}

void set_library(GDExtensionClassLibraryPtr library) {
    _library = library;
}

GDExtensionClassLibraryPtr get_library() {
    if (_library == NULL) {
        assert("This should not be null");
    }
    return _library;
}