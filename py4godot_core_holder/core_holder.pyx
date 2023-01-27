from py4godot.godot_bindings.binding4_godot4 cimport *

cdef api set_interface(GDExtensionInterface* p_Interface):
    global _interface
    _interface = p_Interface

cdef GDExtensionInterface* get_interface():
    if(_interface == NULL):
        raise Exception ("returning _interface as NULL")
    return _interface


cdef api set_library(GDExtensionClassLibraryPtr library):
    global _library
    _library = library

cdef GDExtensionClassLibraryPtr get_library():
    if(_library == NULL):
        raise Exception ("returning _library as NULL")
    return _library
