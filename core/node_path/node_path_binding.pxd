from godot_api.binding cimport *


cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_node_path_new)(godot_node_path *r_dest, const godot_string *p_from);
        void (*godot_node_path_new_copy)(godot_node_path *r_dest, const godot_node_path *p_src);
        void (*godot_node_path_destroy)(godot_node_path *p_self);
        godot_string (*godot_node_path_as_string)(const godot_node_path *p_self);
        godot_bool (*godot_node_path_is_absolute)(const godot_node_path *p_self);
        godot_int (*godot_node_path_get_name_count)(const godot_node_path *p_self);
        godot_string (*godot_node_path_get_name)(const godot_node_path *p_self, const godot_int p_idx);
        godot_int (*godot_node_path_get_subname_count)(const godot_node_path *p_self);
        godot_string (*godot_node_path_get_subname)(const godot_node_path *p_self, const godot_int p_idx);
        godot_string (*godot_node_path_get_concatenated_subnames)(const godot_node_path *p_self);
        godot_bool (*godot_node_path_is_empty)(const godot_node_path *p_self);
        godot_bool (*godot_node_path_operator_equal)(const godot_node_path *p_self, const godot_node_path *p_b);
