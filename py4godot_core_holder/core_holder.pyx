from py4godot.godot_bindings.binding4_godot4 cimport *

cdef api set_interface(GDNativeInterface* p_Interface):
    global _interface
    _interface = p_Interface

cdef GDNativeInterface* get_interface():
    if(_interface == NULL):
        raise Exception ("returning _interface as NULL")
    return _interface


cdef api set_library(GDNativeExtensionClassLibraryPtr library):
    global _library
    _library = library

cdef GDNativeExtensionClassLibraryPtr get_library():
    if(_library == NULL):
        raise Exception ("returning _library as NULL")
    return _library
