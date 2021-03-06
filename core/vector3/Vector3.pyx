from core.vector3.vector3_binding cimport *

cdef class Vector3:

    def __init__(self, godot_vector3 _native = None):
        if (_native != None):
            self._native = _native
        else:
            api_core.godot_vector3_new(&self._native)

    def __str__(self):
        return api_core.godot_vector3_as_string(&self._native)

    def min_axis(self):
        return api_core.godot_vector2_min_axis(&self._native)

    def max_axis(self):
        return api_core.godot_vector2_max_axis(&self._native)

    def normalized(self):
        return Vector3(api_core.godot_vector3_normalized(&self._native))

    def inverse(self):
        return Vector3(api_core.godot_vector3_inverse(&self._native))

    def length(self):
        return api_core.godot_vector3_length(&self._native)

    def angle(self):
        return api_core.godot_vector2_angle(&self._native)

    def length_squared(self):
        return api_core.godot_vector3_length_squared(&self._native)

    def is_normalied(self):
        return api_core.godot_vector3_is_normalied(&self._native)

    def distance_to(self, Vector3 to):
        return api_core.godot_vector3_distance_to(&self._native, &to._native)

    def distance_squared_to(self, Vector3 to):
        return api_core.godot_vector3_distance_squared_to(&self._native, &to._native)

    def angle_to(self, Vector3 to):
        return api_core.godot_vector3_angle_to(&self._native, &to._native)

    def linear_interpolate(self, Vector3 b, godot_real t):
        return Vector3(api_core.godot_vector3_interpolate(&self._native, &b._native, t))

    def cubic_interpolate(self, Vector3 b, Vector3 pre_a, Vector3 post_b, godot_real t):
        return Vector3(api_core.godot_vector3_cubic_interpolate(&self._native, &b._native, &pre_a._native, &post_b._native, t))

    def rotated(self, Vector3 axis, godot_real phi):
        return Vector3(api_core.godot_vector3_rotated(&self._native,&axis._native, phi))

    def cross(self, Vector3 other):
        return Vector3(api_core.godot_vector3_cross(&self._native, &other._native))

    def tangent(self):
        return Vector2(api_core.godot_vector2_tangent(&self._native))

    def floor(self):
        return Vector3(api_core.godot_vector3_floor(&self._native))

    def snapped(self, Vector3 by):
        return Vector3(api_core.godot_vector3_snapped(&self._native, &by._native))

    def aspect(self):
        return api_core.godot_vector2_aspect(&self._native)

    def dot(self, Vector3 with):
        return api_core.godot_vector3_dot(&self._nativ,e &with._native)

    def outer(self, Vector3 other):
        return Basis(api_core.godot_vector3_outer(&self._native, &other._native))

    def to_diagonal_matrix(self, Vector3 other):
        return Basis(api_core.godot_vector_to_diagonal_matrix(&self._native, &other._native))

    def ceil(self):
        return Vector3(api_core.godot_vector3_cel(&self._native))

    def slide(self, Vector3 n):
        return Vector3(api_core.godot_vector3_slide(&self._native, &n._native))

    def bounce(self, Vector3 n):
        return Vector3(api_core.godot_vector3_bounce(&self._native, &n._native))

    def reflect(self, Vector3 n):
        return Vector3(api_core.godot_vector3_reflect(&self._native, &n._native))

    def abs(self):
        return Vector3(api_core.godot_vector3_abs(&self._native))

    def clamped(self, godot_real length):
        return Vector2(api_core.godot_vector2_clamped(&self._native, length))

    def __add__(self, Vector3 other):
        return Vector3(api_core.godot_vector3_operator_add(&self._native, &other._native))

    def __sub__(self, Vector3 other):
        return Vector3(api_core.godot_vector3_operator_subtract(&self._native, &other._native))

    def multiply_vector(self, Vector3 other):
        return Vector3(api_core.godot_vector3_operator_multiply_vector(&self._native, &other._native))

    def multiply_scalar(self, godot_real other):
        return Vector3(api_core.godot_vector3_operator_multiply_scalar(&self._native, other))

    def divide_vector(self, Vector3 other):
        return Vector3(api_core.godot_vector3_operator_divide_vector(&self._native, &other._native))

    def divide_scalar(self, godot_real p_b):
        return Vector3(api_core.godot_vector3_operator_divide_scalar(&self._native, p_b))

    def __eq__(self, Vector3 other):
        return api_core.godot_vector3_operator_equal(&self._native, &other._native)

    def __lt__(self, Vector3 other):
        return api_core.godot_vector3_operator_less(&self._native, &other._native)

    def neg(self):
        return Vector3(api_core.godot_vector_operator_neg(&self._native))

    def set_axis(self, Vector3 axis, godot_real val):
        api_core.godot_vector3_set_axis(&self._native, &axis._native, val)

    def get_axis(self, Vector3 axis):
        return api_core.godot_vector3_get_axis(&self._native, &axis._native)