from py4godot.utils.Wrapper4 cimport *
from py4godot.script_extension.PyScriptExtension cimport *
cdef class InstanceData:
    cdef Wrapper4 owner
    cdef PyScriptExtension script