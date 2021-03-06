from core.dictionary.dictionary_binding cimport *

cdef class NodePath:

    def __init__(self, godot_dictionary _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_node_path_new(&self._native)

    def new_copy(self, NodePath src):
        api_core.godot_node_path_new_copy(&self._native, &src._native)

    def destroy(self):
        api_core.godot_node_path_destroy(&self._native)

    def __str__(self):
        return api_core.godot_node_path_as_string(&self._native)

    def is_absolute(self):
        return api_core.godot_node_path_is_absolute(&self._native)

    def get_name_count(self):
        return api_coreo.godot_node_path_get_name_count(&self._native)

    def get_name(self, godot_int idx):
        return api_core.godot_node_path_get_name(&self._native, idx)

    def get_subname_count(self):
        return api_core.godot_node_path_get_subname_count(&self._name)

    def get_subname(self, godot_int idx):
        return api_core.godot_node_path_get_subname(&self._native, idx)

    def get_concatenated_subnames(self):
        return api_core.godot_node_path_get_concatenated_subnames(&self._native)

    def is_empty(self):
        return api_core.godot_node_path_is_empty(&self._native)

    def __eq__(self, NodePath b):
        return api_core.godot_node_path_operator_equal(&self._native, &b._native)

