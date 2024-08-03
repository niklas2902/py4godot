# distutils: language=c++
from libcpp.vector cimport vector
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.cpp_bridge cimport *

cdef extern from "py4godot/script_extension/PyScriptExtension.h" namespace "godot":
    cdef cppclass PyScriptExtension:
        pass


cdef extern from "py4godot/instance_data/CPPInstanceData.h":
   cdef cppclass InstanceData:
        PyObject* owner
        vector[GDExtensionPropertyInfo] properties;
        vector[GDExtensionMethodInfo] methods;
        void* script;
        GDExtensionScriptInstanceInfo info;

cdef extern from "py4godot/instance_data/CPPMethodCallData.h":
    cdef cppclass MethodCallData:
        bool has_value;
        PyObject* ret_val
        PyObject* ret_typename