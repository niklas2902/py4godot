from py4godot.godot_bindings.binding4_godot4 cimport *
cimport py4godot.classes.generated4_core as core
from py4godot.classes.cpp_bridge cimport *
cdef extern from "py4godot/cpputils/utils.h":
    StringName c_string_to_string_name(const char* string)
    String c_string_to_string(const char* string)
    GDExtensionInterface* get_interface_utils()
    #const char * gd_string_to_c_string(GDExtensionInterface* interface_ptr, String string, int length)
    void gd_string_to_c_string(GDExtensionInterface* interface_ptr, String string, int length, char** res_string)


cdef core.StringName py_c_string_to_string_name(char* string)
cdef core.String py_c_string_to_string(char* string)
cdef unicode gd_string_to_py_string(core.String string)
#cdef unicode gd_string_name_to_py_string(core.StringName string_name)