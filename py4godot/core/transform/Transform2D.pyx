from py4godot.core.vector2.Vector2 cimport *
from py4godot.core.plane.Plane cimport *
from py4godot.core.rect2.Rect2 cimport *
from py4godot.core.string.String cimport String
from py4godot.core.transform.Transform2D cimport *
from py4godot_core_holder.core_holder cimport get_core
from py4godot.core.transform.transform_binding cimport *

api_core = get_core()

cdef class Transform2D:

    def __init__(self,godot_real rotation, Vector2 pos):
        api_core.godot_transform2d_new(&self._native, rotation, &pos._native)
        self.update_event = UpdateEvent()

    @staticmethod
    def new_with_axis_origin(Vector2 x_axis, Vector2 y_axis, Vector2 origin):
        cdef Transform2D transform = Transform2D.__new__(Transform2D)
        api_core.godot_transform2d_new_axis_origin(&transform._native, &x_axis._native, &y_axis._native, &origin._native)
        transform.update_event = UpdateEvent()
        return transform

    def __str__(self):
        return str(String.new_static(api_core.godot_transform2d_as_string(&self._native)))

    def inverse(self):
        return Transform2D.new_static(api_core.godot_transform2d_inverse(&self._native))

    def get_rotation(self):
        return api_core.godot_transform2d_get_rotation(&self._native)

    def get_origin(self):
        return Vector2.new_static(api_core.godot_transform2d_get_origin(&self._native))

    def get_scale(self):
        return Vector2.new_static(api_core.godot_transform2d_get_scale(&self._native))

    def orthonormalized(self):
        return Transform2D.new_static(api_core.godot_transform2d_orthonormalized(&self._native))

    def rotated(self, godot_real phi):
        return Transform2D.new_static(api_core.godot_transform2d_rotated(&self._native, phi))

    def scaled(self, Vector2 scale):
        return Transform2D.new_static(api_core.godot_transform2d_scaled(&self._native, &scale._native))

    def xform_vector2(self, Vector2 v):
        return Vector2.new_static(api_core.godot_transform2d_xform_vector2(&self._native, &v._native))

    def xform_inv_vector2(self, Vector2 v):
        return Vector2.new_static(api_core.godot_transform2d_xform_inv_vector2(&self._native, &v._native))

    def interpolate_with(self, Transform2D m, godot_real c):
        return Transform2D.new_static(api_core.godot_transform2d_interpolate_with(&self._native, &m._native, c))

    def __eq__(self, Transform2D other):
        return api_core.godot_transform2d_operator_equal(&self._native, &other._native)

    def __mult__(self, Transform2D other):
        return Transform2D.new_static(api_core.godot_transform2d_operator_multiply(&self._native, &other._native))

    def xform_rect2(self, Rect2 v):
        return Rect2.new_static(api_core.godot_transform2d_xform_rect2(&self._native, &v._native))

    def xform_inv_rect2(self, Rect2 v):
        return Rect2.new_static(api_core.godot_transform2d_xform_inv_rect2(&self._native, &v._native))

    def new_identity(self):
        api_core.godot_transform2d_new_identity(&self._native)
        self.update_event.notify()