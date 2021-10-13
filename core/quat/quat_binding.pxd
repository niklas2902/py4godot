from godot_bindings.binding cimport *

cdef extern from "binding.h":
    const godot_gdnative_core_api_struct *api_core

    struct godot_gdnative_core_api_struct:
        void (*godot_quat_new)(godot_quat *r_dest, const godot_real p_x, const godot_real p_y, const godot_real p_z, const godot_real p_w);
        void (*godot_quat_new_with_axis_angle)(godot_quat *r_dest, const godot_vector3 *p_axis, const godot_real p_angle);
        godot_real (*godot_quat_get_x)(const godot_quat *p_self);
        void (*godot_quat_set_x)(godot_quat *p_self, const godot_real val);
        godot_real (*godot_quat_get_y)(const godot_quat *p_self);
        void (*godot_quat_set_y)(godot_quat *p_self, const godot_real val);
        godot_real (*godot_quat_get_z)(const godot_quat *p_self);
        void (*godot_quat_set_z)(godot_quat *p_self, const godot_real val);
        godot_real (*godot_quat_get_w)(const godot_quat *p_self);
        void (*godot_quat_set_w)(godot_quat *p_self, const godot_real val);
        godot_string (*godot_quat_as_string)(const godot_quat *p_self);
        godot_real (*godot_quat_length)(const godot_quat *p_self);
        godot_real (*godot_quat_length_squared)(const godot_quat *p_self);
        godot_quat (*godot_quat_normalized)(const godot_quat *p_self);
        godot_bool (*godot_quat_is_normalized)(const godot_quat *p_self);
        godot_quat (*godot_quat_inverse)(const godot_quat *p_self);
        godot_real (*godot_quat_dot)(const godot_quat *p_self, const godot_quat *p_b);
        godot_vector3 (*godot_quat_xform)(const godot_quat *p_self, const godot_vector3 *p_v);
        godot_quat (*godot_quat_slerp)(const godot_quat *p_self, const godot_quat *p_b, const godot_real p_t);
        godot_quat (*godot_quat_slerpni)(const godot_quat *p_self, const godot_quat *p_b, const godot_real p_t);
        godot_quat (*godot_quat_cubic_slerp)(const godot_quat *p_self, const godot_quat *p_b, const godot_quat *p_pre_a, const godot_quat *p_post_b, const godot_real p_t);
        godot_quat (*godot_quat_operator_multiply)(const godot_quat *p_self, const godot_real p_b);
        godot_quat (*godot_quat_operator_add)(const godot_quat *p_self, const godot_quat *p_b);
        godot_quat (*godot_quat_operator_subtract)(const godot_quat *p_self, const godot_quat *p_b);
        godot_quat (*godot_quat_operator_divide)(const godot_quat *p_self, const godot_real p_b);
        godot_bool (*godot_quat_operator_equal)(const godot_quat *p_self, const godot_quat *p_b);
        godot_quat (*godot_quat_operator_neg)(const godot_quat *p_self);