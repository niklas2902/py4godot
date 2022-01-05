from py4godot.core.dictionary.dictionary_binding cimport *

cdef class NodePath:
    cdef godot_node_path _native

    cdef inline void set_native(self, godot_node_path _native):
        self._native = _native

    @staticmethod
    cdef inline NodePath new_static(godot_node_path _native):
        cdef NodePath o = NodePath.__new__(NodePath)
        o.set_native(_native)
        return o
