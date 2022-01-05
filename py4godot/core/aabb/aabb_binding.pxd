from py4godot.godot_bindings.binding cimport *


cdef extern from "binding.h":

    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_aabb_new)(godot_aabb *r_dest, const godot_vector3 *p_pos, const godot_vector3 *p_size);
        godot_vector3 (*godot_aabb_get_position)(const godot_aabb *p_self);
        void (*godot_aabb_set_position)(const godot_aabb *p_self, const godot_vector3 *p_v);
        godot_vector3 (*godot_aabb_get_size)(const godot_aabb *p_self);
        void (*godot_aabb_set_size)(const godot_aabb *p_self, const godot_vector3 *p_v);
        godot_string (*godot_aabb_as_string)(const godot_aabb *p_self);
        godot_real (*godot_aabb_get_area)(const godot_aabb *p_self);
        godot_bool (*godot_aabb_has_no_area)(const godot_aabb *p_self);
        godot_bool (*godot_aabb_has_no_surface)(const godot_aabb *p_self);
        godot_bool (*godot_aabb_intersects)(const godot_aabb *p_self, const godot_aabb *p_with);
        godot_bool (*godot_aabb_encloses)(const godot_aabb *p_self, const godot_aabb *p_with);
        godot_aabb (*godot_aabb_merge)(const godot_aabb *p_self, const godot_aabb *p_with);
        godot_aabb (*godot_aabb_intersection)(const godot_aabb *p_self, const godot_aabb *p_with);
        godot_bool (*godot_aabb_intersects_plane)(const godot_aabb *p_self, const godot_plane *p_plane);
        godot_bool (*godot_aabb_intersects_segment)(const godot_aabb *p_self, const godot_vector3 *p_from, const godot_vector3 *p_to);
        godot_bool (*godot_aabb_has_point)(const godot_aabb *p_self, const godot_vector3 *p_point);
        godot_vector3 (*godot_aabb_get_support)(const godot_aabb *p_self, const godot_vector3 *p_dir);
        godot_vector3 (*godot_aabb_get_longest_axis)(const godot_aabb *p_self);
        godot_int (*godot_aabb_get_longest_axis_index)(const godot_aabb *p_self);
        godot_real (*godot_aabb_get_longest_axis_size)(const godot_aabb *p_self);
        godot_vector3 (*godot_aabb_get_shortest_axis)(const godot_aabb *p_self);
        godot_int (*godot_aabb_get_shortest_axis_index)(const godot_aabb *p_self);
        godot_real (*godot_aabb_get_shortest_axis_size)(const godot_aabb *p_self);
        godot_aabb (*godot_aabb_expand)(const godot_aabb *p_self, const godot_vector3 *p_to_point);
        godot_aabb (*godot_aabb_grow)(const godot_aabb *p_self, const godot_real p_by);
        godot_vector3 (*godot_aabb_get_endpoint)(const godot_aabb *p_self, const godot_int p_idx);
        godot_bool (*godot_aabb_operator_equal)(const godot_aabb *p_self, const godot_aabb *p_b);
