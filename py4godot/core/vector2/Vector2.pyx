from py4godot.core.string.String cimport String
from py4godot.utils.core_holder cimport get_core
from py4godot.core.vector2.vector2_binding cimport *

api_core = get_core()

cdef class Vector2:
    LEFT = Vector2( -1, 0)
    RIGHT = Vector2( 1, 0)
    UP = Vector2( 0, 1)
    DOWN = Vector2( 0, -1)

    def __init__(self, godot_real x = 0, godot_real y = 0):
        api_core.godot_vector2_new(&self._native, x, y)
        self.update_event = UpdateEvent()

    def __str__(self):
        return api_core.godot_vector2_as_string(&self._native)

    def normalized(self):
        return Vector2.new_static(api_core.godot_vector2_normalized(&self._native))

    def length(self):
        return api_core.godot_vector2_length(&self._native)

    def angle(self):
        return api_core.godot_vector2_angle(&self._native)

    def length_squared(self):
        return api_core.godot_vector2_length_squared(&self._native)

    def is_normalized(self):
        return api_core.godot_vector2_is_normalized(&self._native)

    def distance_to(self, Vector2 to):
        return api_core.godot_vector2_distance_to(&self._native, &to._native)

    def distance_squared_to(self, Vector2 to):
        return api_core.godot_vector2_distance_squared_to(&self._native, &to._native)

    def angle_to(self, Vector2 to):
        return api_core.godot_vector2_angle_to(&self._native, &to._native)

    def angle_to_point(self, Vector2 to):
        return api_core.godot_vector2_angle_to_point(&self._native, &to._native)

    def linear_interpolate(self, Vector2 b, godot_real t):
        return Vector2.new_static(api_core.godot_vector2_linear_interpolate(&self._native, &b._native, t))

    def cubic_interpolate(self, Vector2 b, Vector2 pre_a, Vector2 post_b, godot_real t):
        return Vector2.new_static(api_core.godot_vector2_cubic_interpolate(&self._native, &b._native, &pre_a._native, &post_b._native, t))

    def rotated(self, godot_real phi):
        return Vector2.new_static(api_core.godot_vector2_rotated(&self._native, phi))

    def tangent(self):
        return Vector2.new_static(api_core.godot_vector2_tangent(&self._native))

    def floor(self):
        return Vector2.new_static(api_core.godot_vector2_floor(&self._native))

    def snapped(self, Vector2 by):
        return Vector2.new_static(api_core.godot_vector2_snapped(&self._native, &by._native))

    def aspect(self):
        return api_core.godot_vector2_aspect(&self._native)

    def dot(self, Vector2 with_):
        return api_core.godot_vector2_dot(&self._native, &with_._native)

    def slide(self, Vector2 n):
        return Vector2.new_static(api_core.godot_vector2_slide(&self._native, &n._native))

    def bounce(self, Vector2 n):
        return Vector2.new_static(api_core.godot_vector2_bounce(&self._native, &n._native))

    def reflect(self, Vector2 n):
        return Vector2.new_static(api_core.godot_vector2_reflect(&self._native, &n._native))

    def abs(self):
        return Vector2.new_static(api_core.godot_vector2_abs(&self._native))

    def clamped(self, godot_real length):
        return Vector2.new_static(api_core.godot_vector2_clamped(&self._native, length))

    def add(self, Vector2 other):
        return Vector2.new_static(api_core.godot_vector2_operator_add(&self._native, &other._native))

    def sub(self, Vector2 other):
        return Vector2.new_static(api_core.godot_vector2_operator_subtract(&self._native, &other._native))

    def multiply_vector(self, Vector2 other):
        return Vector2.new_static(api_core.godot_vector2_operator_multiply_vector(&self._native, &other._native))

    def multiply_scalar(self, godot_real other):
        return Vector2.new_static(api_core.godot_vector2_operator_multiply_scalar(&self._native, other))

    def divide_vector(self, Vector2 other):
        return Vector2.new_static(api_core.godot_vector2_operator_divide_vector(&self._native, &other._native))

    def divide_scalar(self, godot_real p_b):
        return Vector2.new_static(api_core.godot_vector2_operator_divide_scalar(&self._native, p_b))

    def __eq__(self, Vector2 other):
        return api_core.godot_vector2_operator_equal(&self._native, &other._native)

    def __lt__(self, Vector2 other):
        return api_core.godot_vector2_operator_less(&self._native, &other._native)

    def __add__(self, Vector2 other):
        return self.add(other)

    def __mul__(self, other):
        if(isinstance(other,Vector2)):
            return self.multiply_vector(other)
        elif (isinstance(other,float) or isinstance(other,int)):
            return self.multiply_scalar(other)
        #TODO: Exception not supported
        raise Exception(f"multiplication for type {type(other)} not supported")


    def __floordiv__(self, other):
        if(isinstance(other,Vector2)):
            return self.divide_vector(other)
        elif (isinstance(other,float) or isinstance(other,int)):
            return self.divide_scalar(other)
        #TODO: Exception not supported
        raise Exception(f"division for type {type(other)} not supported")

    def __truediv__(self, other):
        if(isinstance(other,Vector2)):
            return self.divide_vector(other)
        elif (isinstance(other,float) or isinstance(other,int)):
            return self.divide_scalar(other)
        #TODO: Exception not supported
        raise Exception(f"division for type {type(other)} not supported")

    def __sub__(self, Vector2 other):
        return self.sub(other)

    def neg(self):
        return Vector2.new_static(api_core.godot_vector2_operator_neg(&self._native))

    def set_x(self, godot_real x):
        api_core.godot_vector2_set_x(&self._native, x)

    def set_y(self, godot_real y):
        api_core.godot_vector2_set_y(&self._native, y)
        self.update_event.notify()

    def get_x(self):
        return api_core.godot_vector2_get_x(&self._native)
        self.update_event.notify()

    def get_y(self):
        return api_core.godot_vector2_get_y(&self._native)

    def __str__(self):
        return str(String.new_static(api_core.godot_vector2_as_string(&self._native)))