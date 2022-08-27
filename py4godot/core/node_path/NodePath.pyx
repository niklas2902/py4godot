from py4godot.core.string.String cimport *
from py4godot_core_holder.core_holder cimport get_core
from py4godot.core.node_path.node_path_binding cimport *

api_core = get_core()

cdef class NodePath:

    def __init__(self, path = None):
        api_core.godot_node_path_new(&self._native, &String(path)._native)
        self.update_event = UpdateEvent()

    @staticmethod
    def new_copy(NodePath src):
        cdef NodePath node_path = NodePath.__new__(NodePath)
        api_core.godot_node_path_new_copy(&node_path._native, &src._native)
        node_path.update_event = UpdateEvent()
        return node_path

    def destroy(self):
        api_core.godot_node_path_destroy(&self._native)

    def __str__(self):
        return "NodePath<"+str(String.new_static(api_core.godot_node_path_as_string(&self._native)))+">"

    def is_absolute(self):
        return api_core.godot_node_path_is_absolute(&self._native)

    def get_name_count(self):
        return api_core.godot_node_path_get_name_count(&self._native)

    def get_name(self, godot_int idx):
        return String.new_static(api_core.godot_node_path_get_name(&self._native, idx))

    def get_subname_count(self):
        return api_core.godot_node_path_get_subname_count(&self._native)

    def get_subname(self, godot_int idx):
        return String.new_static(api_core.godot_node_path_get_subname(&self._native, idx))

    def get_concatenated_subnames(self):
        return String.new_static(api_core.godot_node_path_get_concatenated_subnames(&self._native))

    def is_empty(self):
        return api_core.godot_node_path_is_empty(&self._native)

    def __eq__(self, NodePath b):
        return api_core.godot_node_path_operator_equal(&self._native, &b._native)

