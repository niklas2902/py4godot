#from core.basis.Basis cimport *
from core.vector3.vector3_binding cimport *

cdef class Vector3:

    def __init__(self, godot_real x, godot_real y, godot_real z):
        hello("Hallo")
        hello("start")
        api_core.godot_vector3_new(&self._native,x,y,z)
        hello("end")

    def normalized(self):
        return Vector3. new_static(api_core.godot_vector3_normalized(&self._native))

    def inverse(self):
        return Vector3(api_core.godot_vector3_inverse(&self._native))

    def length(self):
        return api_core.godot_vector3_length(&self._native)

    def length_squared(self):
        return api_core.godot_vector3_length_squared(&self._native)

    def is_normalized(self):
        return api_core.godot_vector3_is_normalized(&self._native)

    def distance_to(self, Vector3 to):
        return api_core.godot_vector3_distance_to(&self._native, &to._native)

    def distance_squared_to(self, Vector3 to):
        return api_core.godot_vector3_distance_squared_to(&self._native, &to._native)

    def angle_to(self, Vector3 to):
        return api_core.godot_vector3_angle_to(&self._native, &to._native)

    def linear_interpolate(self, Vector3 b, godot_real t):
        return Vector3. new_static(api_core.godot_vector3_linear_interpolate(&self._native, &b._native, t))

    def cubic_interpolate(self, Vector3 b, Vector3 pre_a, Vector3 post_b, godot_real t):
        return Vector3. new_static(api_core.godot_vector3_cubic_interpolate(&self._native, &b._native, &pre_a._native, &post_b._native, t))

    def rotated(self, Vector3 axis, godot_real phi):
        return Vector3. new_static(api_core.godot_vector3_rotated(&self._native,&axis._native, phi))

    def cross(self, Vector3 other):
        return Vector3. new_static(api_core.godot_vector3_cross(&self._native, &other._native))

    def floor(self):
        return Vector3. new_static(api_core.godot_vector3_floor(&self._native))

    def snapped(self, Vector3 by):
        return Vector3. new_static(api_core.godot_vector3_snapped(&self._native, &by._native))

    def dot(self, Vector3 with_):
        return api_core.godot_vector3_dot(&self._native, &with_._native)

    def outer(self, Vector3 other):
        pass
        #return Basis. new_static(api_core.godot_vector3_outer(&self._native, &other._native))

    def ceil(self):
        return Vector3. new_static(api_core.godot_vector3_ceil(&self._native))

    def slide(self, Vector3 n):
        return Vector3. new_static(api_core.godot_vector3_slide(&self._native, &n._native))

    def bounce(self, Vector3 n):
        return Vector3. new_static(api_core.godot_vector3_bounce(&self._native, &n._native))

    def reflect(self, Vector3 n):
        return Vector3. new_static(api_core.godot_vector3_reflect(&self._native, &n._native))

    def abs(self):
        return Vector3. new_static(api_core.godot_vector3_abs(&self._native))

    def add(self, Vector3 other):
        return Vector3. new_static(api_core.godot_vector3_operator_add(&self._native, &other._native))

    def sub(self, Vector3 other):
        return Vector3. new_static(api_core.godot_vector3_operator_subtract(&self._native, &other._native))

    def multiply_vector(self, Vector3 other):
        return Vector3. new_static(api_core.godot_vector3_operator_multiply_vector(&self._native, &other._native))

    def multiply_scalar(self, godot_real other):
        return Vector3. new_static(api_core.godot_vector3_operator_multiply_scalar(&self._native, other))

    def divide_vector(self, Vector3 other):
        return Vector3. new_static(api_core.godot_vector3_operator_divide_vector(&self._native, &other._native))

    def divide_scalar(self, godot_real p_b):
        return Vector3. new_static(api_core.godot_vector3_operator_divide_scalar(&self._native, p_b))

    def __eq__(self, Vector3 other):
        return api_core.godot_vector3_operator_equal(&self._native, &other._native)

    def __lt__(self, Vector3 other):
        return api_core.godot_vector3_operator_less(&self._native, &other._native)

    def neg(self):
        return Vector3. new_static(api_core.godot_vector3_operator_neg(&self._native))

"""
    def set_axis(self, Vector3 axis, godot_real val):
        api_core.godot_vector3_set_axis(&self._native, &axis._native, val)

    def get_axis(self, Vector3 axis):
        return api_core.godot_vector3_get_axis(&self._native, &axis._native)
"""