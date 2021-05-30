from godot_api.binding cimport *


cdef extern from "binding.h":

    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_vector2_new)(godot_vector2 *r_dest, const godot_real p_x, const godot_real p_y);
        godot_string (*godot_vector2_as_string)(const godot_vector2 *p_self);
        godot_vector2 (*godot_vector2_normalized)(const godot_vector2 *p_self);
        godot_real (*godot_vector2_length)(const godot_vector2 *p_self);
        godot_real (*godot_vector2_angle)(const godot_vector2 *p_self);
        godot_real (*godot_vector2_length_squared)(const godot_vector2 *p_self);
        godot_bool (*godot_vector2_is_normalized)(const godot_vector2 *p_self);
        godot_real (*godot_vector2_distance_to)(const godot_vector2 *p_self, const godot_vector2 *p_to);
        godot_real (*godot_vector2_distance_squared_to)(const godot_vector2 *p_self, const godot_vector2 *p_to);
        godot_real (*godot_vector2_angle_to)(const godot_vector2 *p_self, const godot_vector2 *p_to);
        godot_real (*godot_vector2_angle_to_point)(const godot_vector2 *p_self, const godot_vector2 *p_to);
        godot_vector2 (*godot_vector2_linear_interpolate)(const godot_vector2 *p_self, const godot_vector2 *p_b, const godot_real p_t);
        godot_vector2 (*godot_vector2_cubic_interpolate)(const godot_vector2 *p_self, const godot_vector2 *p_b, const godot_vector2 *p_pre_a, const godot_vector2 *p_post_b, const godot_real p_t);
        godot_vector2 (*godot_vector2_rotated)(const godot_vector2 *p_self, const godot_real p_phi);
        godot_vector2 (*godot_vector2_tangent)(const godot_vector2 *p_self);
        godot_vector2 (*godot_vector2_floor)(const godot_vector2 *p_self);
        godot_vector2 (*godot_vector2_snapped)(const godot_vector2 *p_self, const godot_vector2 *p_by);
        godot_real (*godot_vector2_aspect)(const godot_vector2 *p_self);
        godot_real (*godot_vector2_dot)(const godot_vector2 *p_self, const godot_vector2 *p_with);
        godot_vector2 (*godot_vector2_slide)(const godot_vector2 *p_self, const godot_vector2 *p_n);
        godot_vector2 (*godot_vector2_bounce)(const godot_vector2 *p_self, const godot_vector2 *p_n);
        godot_vector2 (*godot_vector2_reflect)(const godot_vector2 *p_self, const godot_vector2 *p_n);
        godot_vector2 (*godot_vector2_abs)(const godot_vector2 *p_self);
        godot_vector2 (*godot_vector2_clamped)(const godot_vector2 *p_self, const godot_real p_length);
        godot_vector2 (*godot_vector2_operator_add)(const godot_vector2 *p_self, const godot_vector2 *p_b);
        godot_vector2 (*godot_vector2_operator_subtract)(const godot_vector2 *p_self, const godot_vector2 *p_b);
        godot_vector2 (*godot_vector2_operator_multiply_vector)(const godot_vector2 *p_self, const godot_vector2 *p_b);
        godot_vector2 (*godot_vector2_operator_multiply_scalar)(const godot_vector2 *p_self, const godot_real p_b);
        godot_vector2 (*godot_vector2_operator_divide_vector)(const godot_vector2 *p_self, const godot_vector2 *p_b);
        godot_vector2 (*godot_vector2_operator_divide_scalar)(const godot_vector2 *p_self, const godot_real p_b);
        godot_bool (*godot_vector2_operator_equal)(const godot_vector2 *p_self, const godot_vector2 *p_b);
        godot_bool (*godot_vector2_operator_less)(const godot_vector2 *p_self, const godot_vector2 *p_b);
        godot_vector2 (*godot_vector2_operator_neg)(const godot_vector2 *p_self);
        void (*godot_vector2_set_x)(godot_vector2 *p_self, const godot_real p_x);
        void (*godot_vector2_set_y)(godot_vector2 *p_self, const godot_real p_y);
        godot_real (*godot_vector2_get_x)(const godot_vector2 *p_self);
        godot_real (*godot_vector2_get_y)(const godot_vector2 *p_self);