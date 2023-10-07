cdef core.StringName py_c_string_to_string_name(char* string):
    cdef core.StringName gd_string_name = core.StringName.__new__(core.StringName)
    gd_string_name.StringName_internal_class = c_string_to_string_name(string)
    return gd_string_name

cdef core.String py_c_string_to_string(char* string):

    cdef core.String gd_string = core.String.__new__(core.String)
    gd_string.String_internal_class = c_string_to_string(string)
    return gd_string

"""cdef unicode gd_string_to_py_string(String string):
    cdef const char* c_str = gd_string_c_string(gdnative_interface,string.godot_owner, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string

cdef unicode gd_string_name_to_py_string(StringName string_name):
    cdef String string = String.new2(string_name)
    cdef const char* c_str = gd_string_c_string(gdnative_interface,string.godot_owner, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string
"""