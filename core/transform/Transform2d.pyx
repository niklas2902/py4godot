from core.transform.transform_binding cimport *

cdef class Transform2d:

    def __init__(self, godot_transform _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_transform2d_new(&self._native)

    def new_with_axis_origin(self, Vector3 x_axis, Vector3 y_axis, Vector3 z_axis, Vector3 origin):
        api_core.godot_transform2d_new_with_axis_origin(&self._native, &x_axis._native, &y_axis._native, &z_axis._native, &origin._native)

    def get_origin(self):
        return Vector3(api_core.godot_transform_get_origin(&self._native))

    def set_origin(Transform self, Vector3 v):
        api_core.godot_transform_set_origin(&self._native, &v._native)

    def __str__(self):
        return api_core.godot_transform2d_as_string(&self._native)

    def inverse(self):
        return Transform2d(api_core.godot_transform2d_inverse(&self._native))

    def get_rotation(self):
        return api_core.godot_transform2d_get_rotation(&self._native)

    def get_origin(self):
        return Vector2(api_core.godot_transform2d_get_origin(&self._native))

    def get_scale(self):
        return Vector2(api_core.godot_transform2d_get_scale(&self._native))

    def orthonormalized(self):
        return Transform2d(api_core.godot_transform2d_orthonormalized(&self._native))

    def rotated(self, Vector2 axis, godot_real p_phi):
        return Transform2d(api_core.godot_transform2d_rotated(&self._native, &axis._native, phi))

    def scaled(self, Vector2 scale):
        return Transform2(api_core.godot_transform2d_scaled(&self._native, &scale._native))

    def looking_at(self, Vector2 target, Vector3 up):
        return Transform2d(api_core.godot_transform2d_looking_at(&self._native, &target._native, &up._native))

    def xform_vector2(self, Plane v):
        return Vector2(api_core.godot_transform2d_xform_vector2(&self._native, &v._native))

    def xform_inv_vector2(self, Plane v):
        return Vector2(api_core.godot_transform2d_inv_vector2(&self._native, &v._native))

    def interpolate_with(self, Vector2 v):
        return Vector2(api_core.godot_transform2d_interpolate_with(&self._native, &v._native))

    def __eq__(self, Transform2d other):
        return api_core.godot_transform2d_operator_equal(&self._native, &other._native)

    def __mult__(self, Transform2d other):
        return Transform2d(api_core.godot_transform2d_operator_multiply(&self._native, &other._native))

    def xform_rect2(self, Rect2 v):
        return Rect2(api_core.godot_transform2d_xform_rect2(&self._native, &v._native))

   def xform_inv_rect2(self, Rect2 v):
        return Rect2(api_core.godot_transform2d_xform_inv_rect2(&self._native, &v._native))

    def new_identity(self):
        api_core.godot_transform2d_new_identity(&self._native)