# distutils: language=c++
cimport py4godot.classes.cpp_bridge as bridge
from py4godot.godot_bindings.binding4_godot4 cimport *


cdef extern from "py4godot/cpputils/utils.h":
    void decrefPyObject(PyObject* object)
    PyObject* gd_string_to_unicode(bridge.String& string)
    PyObject* gd_string_name_to_unicode(bridge.StringName& string)