# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
cdef extern from "instance.h":
    void get_instance_ptr(GDExtensionInterface *p_interface, GDExtensionScriptInstanceInfo* info)
    void get_placeholder_instance_ptr(GDExtensionInterface *p_interface, GDExtensionScriptInstanceInfo* info)
