# distutils: language=c++
from py4godot.py_classes.core import StringName, String
from py4godot.wrappers.wrappers cimport CPPStringWrapper, CPPStringNameWrapper
from py4godot.utils.print_tools import *
from py4godot.utils.test_utils cimport *
from libc.stdlib cimport malloc, free

cdef object py_string_to_string_name(str string):
    cdef bytes encoded = string.encode("utf-8")
    cdef const char * c_str = encoded
    return py_c_string_to_string_name(c_str)


cdef object py_c_string_to_string_name(char* string):
    gd_string_name = StringName.__new__(StringName)
    gd_string_name._ptr = c_string_to_string_name_ptr(string)
    return gd_string_name

cdef object py_string_to_string(str string):
    cdef bytes encoded = string.encode("utf-8")
    cdef const char * c_str = encoded
    return py_c_string_to_string(c_str)


cdef object py_c_string_to_string(char* string):
    gd_string = String.__new__(String)
    gd_string._ptr = c_string_to_string_name_ptr(string)
    return gd_string

cdef unicode gd_string_to_py_string_instance(object string):
    cdef CPPStringWrapper wrapper = <CPPStringWrapper>(string._ptr)
    cdef shared_ptr[bridge.String] internal_string = wrapper._ptr
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

cdef unicode gd_string_name_to_py_string(object string):
    cdef CPPStringNameWrapper wrapper = <CPPStringNameWrapper>(string._ptr)
    cdef shared_ptr[bridge.StringName] internal_string_name = wrapper._ptr
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

cdef unicode gd_string_to_py_string(object string):
    cdef CPPStringWrapper wrapper = <CPPStringWrapper>(string._ptr)
    cdef shared_ptr[bridge.String] internal_string = wrapper._ptr
    cdef char* c_str
    try:
        gd_string_to_c_string(internal_string.get()[0], string.length(), &c_str)
    except Exception as e:
        print_error("error:" + str(e))
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    free(c_str)
    return py_string

cdef PyObject* to_py_object(val):
    return <PyObject*>val # Just returning for converting

"""
cdef unicode gd_string_name_to_py_string(core.StringName string_name):
    cdef core.String string = core.String.new2(string_name)
    cdef String internal_string = string.String_internal_class
    cdef const char* c_str = gd_string_to_c_string(internal_string, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string
"""