from godot_api.binding cimport *


cdef extern from "binding.h":
    ctypedef struct godot_transform:
        pass
    ctypedef struct godot_transform2d:
        pass

    struct godot_gdnative_core_api_struct:
	void (*godot_transform_new_with_axis_origin)(godot_transform *r_dest, const godot_vector3 *p_x_axis, const godot_vector3 *p_y_axis, const godot_vector3 *p_z_axis, const godot_vector3 *p_origin);
	void (*godot_transform_new)(godot_transform *r_dest, const godot_basis *p_basis, const godot_vector3 *p_origin);
	godot_basis (*godot_transform_get_basis)(const godot_transform *p_self);
	void (*godot_transform_set_basis)(godot_transform *p_self, const godot_basis *p_v);
	godot_vector3 (*godot_transform_get_origin)(const godot_transform *p_self);
	void (*godot_transform_set_origin)(godot_transform *p_self, const godot_vector3 *p_v);
	godot_string (*godot_transform_as_string)(const godot_transform *p_self);
	godot_transform (*godot_transform_inverse)(const godot_transform *p_self);
	godot_transform (*godot_transform_affine_inverse)(const godot_transform *p_self);
	godot_transform (*godot_transform_orthonormalized)(const godot_transform *p_self);
	godot_transform (*godot_transform_rotated)(const godot_transform *p_self, const godot_vector3 *p_axis, const godot_real p_phi);
	godot_transform (*godot_transform_scaled)(const godot_transform *p_self, const godot_vector3 *p_scale);
	godot_transform (*godot_transform_translated)(const godot_transform *p_self, const godot_vector3 *p_ofs);
	godot_transform (*godot_transform_looking_at)(const godot_transform *p_self, const godot_vector3 *p_target, const godot_vector3 *p_up);
	godot_plane (*godot_transform_xform_plane)(const godot_transform *p_self, const godot_plane *p_v);
	godot_plane (*godot_transform_xform_inv_plane)(const godot_transform *p_self, const godot_plane *p_v);
	void (*godot_transform_new_identity)(godot_transform *r_dest);
	godot_bool (*godot_transform_operator_equal)(const godot_transform *p_self, const godot_transform *p_b);
	godot_transform (*godot_transform_operator_multiply)(const godot_transform *p_self, const godot_transform *p_b);
	godot_vector3 (*godot_transform_xform_vector3)(const godot_transform *p_self, const godot_vector3 *p_v);
	godot_vector3 (*godot_transform_xform_inv_vector3)(const godot_transform *p_self, const godot_vector3 *p_v);
	godot_aabb (*godot_transform_xform_aabb)(const godot_transform *p_self, const godot_aabb *p_v);
	godot_aabb (*godot_transform_xform_inv_aabb)(const godot_transform *p_self, const godot_aabb *p_v);
	void (*godot_transform2d_new)(godot_transform2d *r_dest, const godot_real p_rot, const godot_vector2 *p_pos);
	void (*godot_transform2d_new_axis_origin)(godot_transform2d *r_dest, const godot_vector2 *p_x_axis, const godot_vector2 *p_y_axis, const godot_vector2 *p_origin);
	godot_string (*godot_transform2d_as_string)(const godot_transform2d *p_self);
	godot_transform2d (*godot_transform2d_inverse)(const godot_transform2d *p_self);
	godot_transform2d (*godot_transform2d_affine_inverse)(const godot_transform2d *p_self);
	godot_real (*godot_transform2d_get_rotation)(const godot_transform2d *p_self);
	godot_vector2 (*godot_transform2d_get_origin)(const godot_transform2d *p_self);
	godot_vector2 (*godot_transform2d_get_scale)(const godot_transform2d *p_self);
	godot_transform2d (*godot_transform2d_orthonormalized)(const godot_transform2d *p_self);
	godot_transform2d (*godot_transform2d_rotated)(const godot_transform2d *p_self, const godot_real p_phi);
	godot_transform2d (*godot_transform2d_scaled)(const godot_transform2d *p_self, const godot_vector2 *p_scale);
	godot_transform2d (*godot_transform2d_translated)(const godot_transform2d *p_self, const godot_vector2 *p_offset);
	godot_vector2 (*godot_transform2d_xform_vector2)(const godot_transform2d *p_self, const godot_vector2 *p_v);
	godot_vector2 (*godot_transform2d_xform_inv_vector2)(const godot_transform2d *p_self, const godot_vector2 *p_v);
	godot_vector2 (*godot_transform2d_basis_xform_vector2)(const godot_transform2d *p_self, const godot_vector2 *p_v);
	godot_vector2 (*godot_transform2d_basis_xform_inv_vector2)(const godot_transform2d *p_self, const godot_vector2 *p_v);
	godot_transform2d (*godot_transform2d_interpolate_with)(const godot_transform2d *p_self, const godot_transform2d *p_m, const godot_real p_c);
	godot_bool (*godot_transform2d_operator_equal)(const godot_transform2d *p_self, const godot_transform2d *p_b);
	godot_transform2d (*godot_transform2d_operator_multiply)(const godot_transform2d *p_self, const godot_transform2d *p_b);
	void (*godot_transform2d_new_identity)(godot_transform2d *r_dest);
	godot_rect2 (*godot_transform2d_xform_rect2)(const godot_transform2d *p_self, const godot_rect2 *p_v);
	godot_rect2 (*godot_transform2d_xform_inv_rect2)(const godot_transform2d *p_self, const godot_rect2 *p_v);