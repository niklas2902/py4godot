from py4godot.utils.print_tools import *
from py4godot.utils.test_utils cimport *
from libc.stdlib cimport malloc, free
from cpython.ref cimport Py_INCREF, Py_DECREF

cdef core.StringName py_c_string_to_string_name(char* string):
    cdef core.StringName gd_string_name = core.StringName.__new__(core.StringName)
    gd_string_name.StringName_internal_class_ptr = c_string_to_string_name_ptr(string)
    return gd_string_name


cdef core.String py_c_string_to_string(char* string):
    cdef core.String gd_string = core.String.__new__(core.String)
    gd_string.String_internal_class_ptr = c_string_to_string_ptr(string)
    return gd_string

cdef unicode gd_string_to_py_string_instance(core.String string):
    cdef shared_ptr[bridge.String] internal_string = string.String_internal_class_ptr
    cdef char* c_str
    cdef unicode py_string
    cdef char* c_str_test = "test"
    cdef PyObject* py_unicode
    try:
        py_unicode = gd_string_to_unicode(internal_string.get()[0], string.length())
        py_string = <unicode>py_unicode
        decrefPyObject(py_unicode)
    except Exception as e:
        print_error("error:" + str(e))
    return py_string

cdef unicode gd_string_name_to_py_string(core.StringName string):
    cdef shared_ptr[bridge.StringName] internal_string_name = string.StringName_internal_class_ptr
    cdef char* c_str
    cdef unicode py_string
    cdef char* c_str_test = "test"
    cdef PyObject* py_unicode
    try:
        py_unicode = gd_string_name_to_unicode(internal_string_name.get()[0], string.length())
        py_string = <unicode>py_unicode
        decrefPyObject(py_unicode)
    except Exception as e:
        print_error("error:" + str(e))
    return py_string

cdef unicode gd_string_to_py_string(core.String string):
    cdef shared_ptr[bridge.String] internal_string = string.String_internal_class_ptr
    cdef char* c_str
    try:
        gd_string_to_c_string(internal_string.get()[0], string.length(), &c_str)
    except Exception as e:
        print_error("error:" + str(e))
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    free(c_str)
    return py_string

"""
cdef unicode gd_string_name_to_py_string(core.StringName string_name):
    cdef core.String string = core.String.new2(string_name)
    cdef String internal_string = string.String_internal_class
    cdef const char* c_str = gd_string_to_c_string(internal_string, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string
"""