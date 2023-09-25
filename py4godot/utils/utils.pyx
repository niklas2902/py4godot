"""from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot_core_holder.core_holder cimport *

cdef GDExtensionInterface* _interface = get_interface()
cdef StringName c_string_to_string_name(char* string):

    cdef String gd_string = String.new0()
    _interface.string_new_with_utf8_chars(gd_string.godot_owner, string)
    cdef StringName gd_string_name = StringName.new2(gd_string)
    return gd_string_name

cdef String c_string_to_string(char* string):

    cdef String gd_string = String.new0()
    _interface.string_new_with_utf8_chars(gd_string.godot_owner, string)
    return gd_string

cdef unicode gd_string_to_py_string(String string):
    cdef const char* c_str = gd_string_c_string(gdnative_interface,string.godot_owner, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string

cdef unicode gd_string_name_to_py_string(StringName string_name):
    cdef String string = String.new2(string_name)
    cdef const char* c_str = gd_string_c_string(gdnative_interface,string.godot_owner, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string
"""