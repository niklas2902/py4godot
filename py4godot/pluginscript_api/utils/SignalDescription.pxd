# distutils: language=c++
from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.pluginscript_api.utils.utils cimport *

cdef class SignalDescription:
    #cdef Variant create_signal_arg(self, String name, int type)
    cdef shared_ptr[CPPSignalDescription] get_signal_description(self)
    cdef shared_ptr[CPPSignalDescription] description