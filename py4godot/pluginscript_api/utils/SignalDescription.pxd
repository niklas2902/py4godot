# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.classes.core cimport String, Dictionary
from py4godot.pluginscript_api.utils.utils cimport *

cdef class SignalDescription:
    #cdef Variant create_signal_arg(self, String name, int type)
    cdef CPPSignalDescription* get_signal_description(self)
    cdef CPPSignalDescription* description