from py4godot.core.dictionary.dictionary_binding cimport *
from py4godot.events.events cimport *

cdef class NodePath:
    cdef godot_node_path _native
    cdef UpdateEvent update_event

    cdef inline void set_native(self, godot_node_path _native):
        self._native = _native

    @staticmethod
    cdef inline NodePath new_static(godot_node_path _native):
        cdef NodePath o = NodePath.__new__(NodePath)
        o.set_native(_native)
        o.update_event = UpdateEvent()
        return o
