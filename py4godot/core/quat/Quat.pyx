from py4godot.core.vector3.Vector3 cimport *
from py4godot.core.quat.quat_binding cimport *

cdef api set_api_core_quat(godot_gdnative_core_api_struct * core):
    global api_core
    api_core = core

cdef class Quat:

    def __init__(self,godot_real x, godot_real y, godot_real z, godot_real w):
            api_core.godot_quat_new(&self._native,x,y,z,w)
            self.update_events = UpdateEvent()

    def new_with_axis_angle(self, Vector3 axis, godot_real angle):
        api_core.godot_quat_new_with_axis_angle(&self._native, &axis._native, angle)

    def get_x(self):
        return api_core.godot_quat_get_x(&self._native)

    def set_x(self, godot_real val):
        api_core.godot_quat_set_x(&self._native, val)

    def get_y(self):
        return api_core.godot_quat_get_y(&self._native)

    def set_y(self, godot_real val):
        api_core.godot_quat_set_y(&self._native, val)

    def get_z(self):
        return api_core.godot_quat_get_z(&self._native)

    def set_z(self, godot_real val):
        api_core.godot_quat_set_z(&self._native, val)

    def get_w(self):
        return api_core.godot_quat_get_w(&self._native)

    def set_w(self, godot_real val):
        api_core.godot_quat_set_w(&self._native, val)

    def __str__(self):
        return api_core.godot_quat_as_string(&self._native)

    def length(self):
        return api_core.godot_quat_length(&self._native)

    def length_squared(self):
        return api_core.godot_quat_length_squared(&self._native)

    def normalized(self):
        return Quat. new_static(api_core.godot_quat_normalized(&self._native))

    def is_normalized(self):
        return api_core.godot_quat_is_normalized(&self._native)

    def inverse(self):
        return Quat. new_static(api_core.godot_quat_inverse(&self._native))

    def dot(self, Quat b):
        return api_core.godot_quat_dot(&self._native, &b._native)

    def xform(self, Vector3 v):
        return Vector3. new_static(api_core.godot_quat_xform(&self._native, &v._native))

    def slerp(self, Quat b, godot_real t):
        return Quat. new_static(api_core.godot_quat_slerp(&self._native, &b._native, t))

    def slerpni(self, Quat b, godot_real t):
        return Quat. new_static(api_core.godot_quat_slerpni(&self._native, &b._native, t))

    def cubic_slerp(self, Quat b, Quat pre_a, Quat post_b, godot_real t):
        return Quat(api_core.godot_quat_cubic_slerp(&self._native, &b._native, &pre_a._native, &post_b._native, t))

    def mult(self, godot_real b):
        return Quat. new_static(api_core.godot_quat_operator_multiply(&self._native, b))

    def add(self, Quat b):
        return Quat. new_static(api_core.godot_quat_operator_add(&self._native, &b._native))

    def sub(self, Quat b):
        return Quat. new_static(api_core.godot_quat_operator_subtract(&self._native, &b._native))

    def div(self, godot_real b):
        return Quat. new_static(api_core.godot_quat_operator_divide(&self._native, b))

    def eq(self, Quat b):
        return api_core.godot_quat_operator_equal(&self._native, &b._native)

    def neg(self):
        return Quat. new_static(api_core.godot_quat_operator_neg(&self._native))