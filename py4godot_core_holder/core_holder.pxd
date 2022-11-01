from py4godot.godot_bindings.binding4_godot4 cimport *

cdef GDNativeInterface* _interface = NULL
cdef GDNativeInterface* get_interface()
cdef api set_interface(GDNativeInterface* p_Interface)