from py4godot.utils.print_tools import *
cdef core.StringName py_c_string_to_string_name(char* string):
    cdef core.StringName gd_string_name = core.StringName.__new__(core.StringName)
    gd_string_name.StringName_internal_class = c_string_to_string_name(string)
    return gd_string_name

cdef core.String py_c_string_to_string(char* string):

    cdef core.String gd_string = core.String.__new__(core.String)
    gd_string.String_internal_class = c_string_to_string(string)
    return gd_string

cdef unicode gd_string_to_py_string(core.String string):
    cdef String internal_string = string.String_internal_class
    cdef char* c_str
    try:
        gd_string_to_c_string(get_interface_utils(), internal_string, string.length(), &c_str)
    except Exception as e:
        print_error("error:" + str(e))
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string

"""
cdef unicode gd_string_name_to_py_string(core.StringName string_name):
    cdef core.String string = core.String.new2(string_name)
    cdef String internal_string = string.String_internal_class
    cdef const char* c_str = gd_string_to_c_string(get_interface_utils(),internal_string, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string
"""