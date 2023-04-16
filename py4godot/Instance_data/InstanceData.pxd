from py4godot.utils.Wrapper4 cimport *
from py4godot.script_extension.PyScriptExtension cimport *
cdef class InstanceData:
    cdef Wrapper4 owner
    cdef list properties
    cdef PyScriptExtension script

    cdef inline Wrapper4 set_owner(self, Wrapper4 _owner):
        self.owner = _owner

    cdef inline list set_properties(self, list _properties):
        self.properties = _properties

    cdef inline PyScriptExtension set_script(self, PyScriptExtension _script):
        self.script = _script
