from py4godot.godot_bindings.binding4_godot4 cimport *

cdef GDExtensionInterface* _interface = NULL
cdef GDExtensionClassLibraryPtr _library = NULL
cdef GDExtensionInterface* get_interface()
cdef api set_interface(GDExtensionInterface* p_Interface)

cdef GDExtensionClassLibraryPtr get_library()
cdef api set_library(GDExtensionClassLibraryPtr library)