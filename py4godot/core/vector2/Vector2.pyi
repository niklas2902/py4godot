class Vector2:
    def __init__(self,x:float, y:float)->None:pass
    def __str__(self)->str:pass
    def normalized(self)->Vector2:pass
    def length(self)->float:pass
    def angle(self)->float:pass
    def length_squared(self)->float:pass
    def is_normalized(self)->bool:pass
    def distance_to(self, to:Vector2)->float:pass
    def distance_squared_to(self, to:Vector2)->float:pass
    def angle_to(self, to:Vector2)->float:pass
    def angle_to_point(self, to:Vector2)->float:pass
    def linear_interpolate(self, b:Vector2, t:float)->Vector2:pass
    def cubic_interpolate(self, b:Vector2, pre_a:Vector2, post_b:Vector2, t:float)->Vector2:pass
    def rotated(self, phi:float)->Vector2:pass
    def tangent(self)->Vector2:pass
    def floor(self)->Vector2:pass
    def snapped(self, by:Vector2)->Vector2:pass
    def aspect(self)->float:pass
    def dot(self, with_:Vector2)->float:pass
    def slide(self, n:Vector2)->Vector2:pass
    def bounce(self, n:Vector2)->Vector2:pass
    def reflect(self, n:Vector2)->Vector2:pass
    def abs(self)->Vector2:pass
    def clamped(self, length:float)->Vector2:pass
    def operator_add(self, b:Vector2)->Vector2:pass
    def operator_subtract(self, b:Vector2)->Vector2:pass
    def operator_multiply_vector(self, b:Vector2)->Vector2:pass
    def operator_multiply_scalar(self, b:float)->Vector2:pass
    def operator_divide_vector(self, b:Vector2)->Vector2:pass
    def operator_divide_scalar(self, b:float)->Vector2:pass
    def operator_equal(self, b:Vector2)->bool:pass
    def operator_less(self, b:Vector2)->bool:pass
    def operator_neg(self)->Vector2:pass
    def set_x(self, x:float)->None:pass
    def set_y(self, y:float)->None:pass
    def get_x(self)->float:pass
    def get_y(self)->float:pass