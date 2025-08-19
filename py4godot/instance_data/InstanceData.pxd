# distutils: language=c++
from libcpp.vector cimport vector
from py4godot.godot_bindings.binding4_godot4 cimport *
cimport py4godot.pluginscript_api.utils.utils as utils
cdef extern from "py4godot/script_extension/PyScriptExtension.h" namespace "godot":
    cdef cppclass PyScriptExtension:
        pass


cdef extern from "py4godot/instance_data/CPPInstanceData.h":
   cdef cppclass InstanceData:
        PyObject* owner
        vector[utils.CPPPropertyDescription*] properties;
        vector[GDExtensionMethodInfo] methods;
        void* script;
        GDExtensionScriptInstanceInfo info;

cdef extern from "py4godot/instance_data/CPPMethodCallData.h":
    cdef cppclass MethodCallData:
        bool has_value;
        PyObject* ret_val
        PyObject* ret_typename