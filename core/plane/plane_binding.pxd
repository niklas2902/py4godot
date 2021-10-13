from godot_bindings.binding cimport *

cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_plane_new_with_reals)(godot_plane *r_dest, const godot_real p_a, const godot_real p_b, const godot_real p_c, const godot_real p_d);
        void (*godot_plane_new_with_vectors)(godot_plane *r_dest, const godot_vector3 *p_v1, const godot_vector3 *p_v2, const godot_vector3 *p_v3);
        void (*godot_plane_new_with_normal)(godot_plane *r_dest, const godot_vector3 *p_normal, const godot_real p_d);
        godot_string (*godot_plane_as_string)(const godot_plane *p_self);
        godot_plane (*godot_plane_normalized)(const godot_plane *p_self);
        godot_vector3 (*godot_plane_center)(const godot_plane *p_self);
        godot_vector3 (*godot_plane_get_any_point)(const godot_plane *p_self);
        godot_bool (*godot_plane_is_point_over)(const godot_plane *p_self, const godot_vector3 *p_point);
        godot_real (*godot_plane_distance_to)(const godot_plane *p_self, const godot_vector3 *p_point);
        godot_bool (*godot_plane_has_point)(const godot_plane *p_self, const godot_vector3 *p_point, const godot_real p_epsilon);
        godot_vector3 (*godot_plane_project)(const godot_plane *p_self, const godot_vector3 *p_point);
        godot_bool (*godot_plane_intersect_3)(const godot_plane *p_self, godot_vector3 *r_dest, const godot_plane *p_b, const godot_plane *p_c);
        godot_bool (*godot_plane_intersects_ray)(const godot_plane *p_self, godot_vector3 *r_dest, const godot_vector3 *p_from, const godot_vector3 *p_dir);
        godot_bool (*godot_plane_intersects_segment)(const godot_plane *p_self, godot_vector3 *r_dest, const godot_vector3 *p_begin, const godot_vector3 *p_end);
        godot_plane (*godot_plane_operator_neg)(const godot_plane *p_self);
        godot_bool (*godot_plane_operator_equal)(const godot_plane *p_self, const godot_plane *p_b);
        void (*godot_plane_set_normal)(godot_plane *p_self, const godot_vector3 *p_normal);
        godot_vector3 (*godot_plane_get_normal)(const godot_plane *p_self);
        godot_real (*godot_plane_get_d)(const godot_plane *p_self);
        void (*godot_plane_set_d)(godot_plane *p_self, const godot_real p_d);