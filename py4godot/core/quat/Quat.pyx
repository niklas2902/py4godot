from py4godot.core.vector3.Vector3 cimport Vector3
from py4godot.core.string.String cimport String
from py4godot_core_holder.core_holder cimport get_core
from py4godot.core.quat.quat_binding cimport *

api_core = get_core()

cdef class Quat:

    def __init__(self,godot_real x, godot_real y, godot_real z, godot_real w):
            api_core.godot_quat_new(&self._native,x,y,z,w)
            self.update_event = UpdateEvent()

    @staticmethod
    def new_with_axis_angle(Vector3 axis, godot_real angle):
        cdef Quat quat = Quat.__new__(Quat)
        quat.update_event = UpdateEvent()
        api_core.godot_quat_new_with_axis_angle(&quat._native, &axis._native, angle)
        return quat

    def get_x(self):
        return api_core.godot_quat_get_x(&self._native)

    def set_x(self, godot_real val):
        api_core.godot_quat_set_x(&self._native, val)
        self.update_event.notify()

    def get_y(self):
        return api_core.godot_quat_get_y(&self._native)

    def set_y(self, godot_real val):
        api_core.godot_quat_set_y(&self._native, val)
        self.update_event.notify()

    def get_z(self):
        return api_core.godot_quat_get_z(&self._native)

    def set_z(self, godot_real val):
        api_core.godot_quat_set_z(&self._native, val)
        self.update_event.notify()

    def get_w(self):
        return api_core.godot_quat_get_w(&self._native)

    def set_w(self, godot_real val):
        api_core.godot_quat_set_w(&self._native, val)
        self.update_event.notify()

    def __str__(self):
        return str(String.new_static(api_core.godot_quat_as_string(&self._native)))

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
        return Quat.new_static(api_core.godot_quat_cubic_slerp(&self._native, &b._native, &pre_a._native, &post_b._native, t))

    def mult(self, godot_real b):
        return Quat. new_static(api_core.godot_quat_operator_multiply(&self._native, b))

    def add(self, Quat b):
        return Quat. new_static(api_core.godot_quat_operator_add(&self._native, &b._native))

    def sub(self, Quat b):
        return Quat. new_static(api_core.godot_quat_operator_subtract(&self._native, &b._native))

    def div(self, godot_real b):
        return Quat. new_static(api_core.godot_quat_operator_divide(&self._native, b))

    def __add__(self, Quat b):
        return self.add(b)

    def __sub__(self, Quat b):
        return self.sub(b)

    def __mul__(self, godot_real b):
        return self.mult(b)

    def __eq__(self, Quat b):
        return api_core.godot_quat_operator_equal(&self._native, &b._native)

    def __floordiv__(self, other):
        return self.div(other)

    def __truediv__(self, godot_real other):
        return self.div(other)

    def __neg__(self):
        return self.neg()

    def neg(self):
        return Quat. new_static(api_core.godot_quat_operator_neg(&self._native))