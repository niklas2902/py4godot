from py4godot.core.string.String cimport *
from py4godot.core.node_path.node_path_binding cimport *

cdef api set_api_core_node_path(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class NodePath:

    def __init__(self, String path):
        api_core.godot_node_path_new(&self._native, &path._native)
        self.update_event = UpdateEvent()

    @staticmethod
    def new_copy(NodePath src):
        cdef NodePath node_path = NodePath.__new__(NodePath)
        api_core.godot_node_path_new_copy(&node_path._native, &src._native)
        return node_path

    def destroy(self):
        api_core.godot_node_path_destroy(&self._native)

    def __str__(self):
        return api_core.godot_node_path_as_string(&self._native)

    def is_absolute(self):
        return api_core.godot_node_path_is_absolute(&self._native)

    def get_name_count(self):
        return api_core.godot_node_path_get_name_count(&self._native)

    def get_name(self, godot_int idx):
        return api_core.godot_node_path_get_name(&self._native, idx)

    def get_subname_count(self):
        return api_core.godot_node_path_get_subname_count(&self._native)

    def get_subname(self, godot_int idx):
        return api_core.godot_node_path_get_subname(&self._native, idx)

    def get_concatenated_subnames(self):
        return api_core.godot_node_path_get_concatenated_subnames(&self._native)

    def is_empty(self):
        return api_core.godot_node_path_is_empty(&self._native)

    def __eq__(self, NodePath b):
        return api_core.godot_node_path_operator_equal(&self._native, &b._native)

