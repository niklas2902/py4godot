from py4godot.core.vector3.Vector3 import Vector3

class Quat:
    def __init__(self,x:float, y:float, z:float, w:float)->None:pass
    def new_with_axis_angle(r_dest:Quat, axis:Vector3, angle:float)->None:pass
    def get_x(self)->float:pass
    def set_x(self, val:float)->None:pass
    def get_y(self)->float:pass
    def set_y(self, val:float)->None:pass
    def get_z(self)->float:pass
    def set_z(self, val:float)->None:pass
    def get_w(self)->float:pass
    def set_w(self, val:float)->None:pass
    def __str__(self)->str:pass
    def length(self)->float:pass
    def length_squared(self)->float:pass
    def normalized(self)->Quat:pass
    def is_normalized(self)->bool:pass
    def inverse(self)->Quat:pass
    def dot(self, b:Quat)->float:pass
    def xform(self, v:Vector3)->Vector3:pass
    def slerp(self, b:Quat, t:float)->Quat:pass
    def slerpni(self, b:Quat, t:float)->Quat:pass
    def cubic_slerp(self, b:Quat, pre_a:Quat, post_b:Quat, t:float)->Quat:pass
    def operator_multiply(self, b:float)->Quat:pass
    def operator_add(self, b:Quat)->Quat:pass
    def operator_subtract(self, b:Quat)->Quat:pass
    def operator_divide(self, b:float)->Quat:pass
    def operator_equal(self, b:Quat)->bool:pass
    def operator_neg(self)->Quat:pass