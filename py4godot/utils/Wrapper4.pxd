from py4godot.godot_bindings.binding4_godot4 cimport *
from py4godot.utils.ScriptHolder cimport *
cdef class Wrapper4(object):
    """This class holds the c pointer of the godot_owner. The godot_owner is used when calling api methods,
    to identify the object"""
    cdef GodotObject godot_owner

    cdef inline void set_godot_owner(self,GodotObject owner):
        self.godot_owner = owner

    cdef inline GodotObject get_godot_owner(self):
        return self.godot_owner