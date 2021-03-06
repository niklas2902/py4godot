from godot_api.binding cimport *


cdef extern from "binding.h":
    ctypedef struct godot_basis:
        pass

    struct godot_gdnative_core_api_struct:
        void (*godot_basis_new_with_rows)(godot_basis *r_dest, const godot_vector3 *p_x_axis, const godot_vector3 *p_y_axis, const godot_vector3 *p_z_axis);
        void (*godot_basis_new_with_axis_and_angle)(godot_basis *r_dest, const godot_vector3 *p_axis, const godot_real p_phi);
        void (*godot_basis_new_with_euler)(godot_basis *r_dest, const godot_vector3 *p_euler);
        godot_string (*godot_basis_as_string)(const godot_basis *p_self);
        godot_basis (*godot_basis_inverse)(const godot_basis *p_self);
        godot_basis (*godot_basis_transposed)(const godot_basis *p_self);
        godot_basis (*godot_basis_orthonormalized)(const godot_basis *p_self);
        godot_real (*godot_basis_determinant)(const godot_basis *p_self);
        godot_basis (*godot_basis_rotated)(const godot_basis *p_self, const godot_vector3 *p_axis, const godot_real p_phi);
        godot_basis (*godot_basis_scaled)(const godot_basis *p_self, const godot_vector3 *p_scale);
        godot_vector3 (*godot_basis_get_scale)(const godot_basis *p_self);
        godot_vector3 (*godot_basis_get_euler)(const godot_basis *p_self);
        godot_real (*godot_basis_tdotx)(const godot_basis *p_self, const godot_vector3 *p_with);
        godot_real (*godot_basis_tdoty)(const godot_basis *p_self, const godot_vector3 *p_with);
        godot_real (*godot_basis_tdotz)(const godot_basis *p_self, const godot_vector3 *p_with);
        godot_vector3 (*godot_basis_xform)(const godot_basis *p_self, const godot_vector3 *p_v);
        godot_vector3 (*godot_basis_xform_inv)(const godot_basis *p_self, const godot_vector3 *p_v);
        godot_int (*godot_basis_get_orthogonal_index)(const godot_basis *p_self);
        void (*godot_basis_new)(godot_basis *r_dest);
        void (*godot_basis_new_with_euler_quat)(godot_basis *r_dest, const godot_quat *p_euler);
        void (*godot_basis_get_elements)(const godot_basis *p_self, godot_vector3 *p_elements);
        godot_vector3 (*godot_basis_get_axis)(const godot_basis *p_self, const godot_int p_axis);
        void (*godot_basis_set_axis)(godot_basis *p_self, const godot_int p_axis, const godot_vector3 *p_value);
        godot_vector3 (*godot_basis_get_row)(const godot_basis *p_self, const godot_int p_row);
        void (*godot_basis_set_row)(godot_basis *p_self, const godot_int p_row, const godot_vector3 *p_value);
        godot_bool (*godot_basis_operator_equal)(const godot_basis *p_self, const godot_basis *p_b);
        godot_basis (*godot_basis_operator_add)(const godot_basis *p_self, const godot_basis *p_b);
        godot_basis (*godot_basis_operator_subtract)(const godot_basis *p_self, const godot_basis *p_b);
        godot_basis (*godot_basis_operator_multiply_vector)(const godot_basis *p_self, const godot_basis *p_b);
        godot_basis (*godot_basis_operator_multiply_scalar)(const godot_basis *p_self, const godot_real p_b);