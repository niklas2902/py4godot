from py4godot.godot_bindings.binding4_godot4 cimport *

cdef GDNativeInterface* _interface = NULL
cdef GDNativeExtensionClassLibraryPtr _library = NULL
cdef GDNativeInterface* get_interface()
cdef api set_interface(GDNativeInterface* p_Interface)

cdef GDNativeExtensionClassLibraryPtr get_library()
cdef api set_library(GDNativeExtensionClassLibraryPtr library)