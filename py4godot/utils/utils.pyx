# distutils: language=c++
from py4godot.utils.print_tools import *
from py4godot.utils.test_utils cimport *
from libc.stdlib cimport malloc, free
from cpython.ref cimport Py_INCREF, Py_DECREF
from py4godot.classes.Node cimport *
cimport py4godot.classes.Viewport as py4godot_viewport
cimport py4godot.classes.SceneTree as py4godot_scenetree
cimport py4godot.classes.Window as py4godot_window


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

def get_viewport(Node node):

    cdef py4godot_viewport.Viewport _ret = py4godot_viewport.Viewport.__new__(py4godot_viewport.Viewport)
    _ret.Viewport_internal_class_ptr = node.Node_internal_class_ptr.get().py_get_viewport()
    #_ret.set_gdowner(_ret.Viewport_internal_class.get_godot_owner())

    return _ret



def get_window(Node node):

    cdef py4godot_window.Window _ret = py4godot_window.Window.__new__(py4godot_window.Window)
    _ret.Window_internal_class_ptr = node.Node_internal_class_ptr.get().py_get_window()
    #_ret.set_gdowner(_ret.Window_internal_class.get_godot_owner())

    return _ret


def get_tree(Node node):

    cdef py4godot_scenetree.SceneTree _ret = py4godot_scenetree.SceneTree.__new__(py4godot_scenetree.SceneTree)
    _ret.SceneTree_internal_class_ptr = node.Node_internal_class_ptr.get().py_get_tree()
    #_ret.set_gdowner(_ret.SceneTree_internal_class.get_godot_owner())

    return _ret

cdef PyObject* to_py_object(val):
    Py_INCREF(val)
    cdef PyObject* py_val = <PyObject*>val # This needs to be decreffed in C++
    return py_val # Just returning for converting

"""
cdef unicode gd_string_name_to_py_string(core.StringName string_name):
    cdef core.String string = core.String.new2(string_name)
    cdef String internal_string = string.String_internal_class
    cdef const char* c_str = gd_string_to_c_string(internal_string, string.length())
    cdef unicode py_string = <unicode>PyUnicode_FromStringAndSize(c_str,string.length())
    return py_string
"""