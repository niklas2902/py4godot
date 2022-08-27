class Vector3_Axis:
    pass
class Vector3:
    def __init__(self,x:float, y:float, z:float)->None:pass
    def length(self)->float:pass
    def length_squared(self)->float:pass
    def is_normalized(self)->bool:pass
    def normalized(self)->Vector3:pass
    def inverse(self)->Vector3:pass
    def snapped(self, by:Vector3)->Vector3:pass
    def rotated(self, axis:Vector3, phi:float)->Vector3:pass
    def linear_interpolate(self, b:Vector3, t:float)->Vector3:pass
    def cubic_interpolate(self, b:Vector3, pre_a:Vector3, post_b:Vector3, t:float)->Vector3:pass
    def dot(self, b:Vector3)->float:pass
    def cross(self, b:Vector3)->Vector3:pass
    def outer(self, b:Vector3)->Basis:pass
    def to_diagonal_matrix(self)->Basis:pass
    def abs(self)->Vector3:pass
    def floor(self)->Vector3:pass
    def ceil(self)->Vector3:pass
    def distance_to(self, b:Vector3)->float:pass
    def distance_squared_to(self, b:Vector3)->float:pass
    def angle_to(self, to:Vector3)->float:pass
    def slide(self, n:Vector3)->Vector3:pass
    def bounce(self, n:Vector3)->Vector3:pass
    def reflect(self, n:Vector3)->Vector3:pass
    def operator_add(self, b:Vector3)->Vector3:pass
    def operator_subtract(self, b:Vector3)->Vector3:pass
    def operator_multiply_vector(self, b:Vector3)->Vector3:pass
    def operator_multiply_scalar(self, b:float)->Vector3:pass
    def operator_divide_vector(self, b:Vector3)->Vector3:pass
    def operator_divide_scalar(self, b:float)->Vector3:pass
    def operator_equal(self, b:Vector3)->godot_bool:pass
    def operator_less(self, b:Vector3)->godot_bool:pass
    def operator_neg(self)->Vector3:pass
    def set_axis(self, axis:Vector3_Axis, val:float)->None:pass
    def get_axis(self, axis:Vector3_Axis)->float:pass
    def __str__(self)->str:pass
    def __add__(self, other:Vector3)->Vector3:pass
    def __sub__(self, other:Vector3)->Vector3:pass
    def __mul__(self, other)->Vector3:pass
    def __floordiv__(self, other)->Vector3:pass
    def __truediv__(self, other)->Vector3:pass