from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.utils.ScriptHolder cimport *
from libcpp.memory cimport shared_ptr, allocator
from py4godot.classes.cpp_bridge cimport Wrapper as CPPWrapper
cdef class Wrapper4(object):
    """This class holds the c pointer of the godot_owner. The godot_owner is used when calling api methods,
    to identify the object"""
    cdef shared_ptr[CPPWrapper] internal_object_ptr