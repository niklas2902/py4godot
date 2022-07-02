from py4godot.core.vector3.Vector3 import *
from py4godot.core.quat.Quat import *

class Basis:
    def __init___with_rows(self,x_axis:Vector3, y_axis:Vector3, z_axis:Vector3)->None:pass
    def new_with_axis_and_angle(r_dest:Basis, axis:Vector3, phi:float)->None:pass
    def new_with_euler(r_dest:Basis, euler:Vector3)->None:pass
    def __str__(self)->str:pass
    def inverse(self)->Basis:pass
    def transposed(self)->Basis:pass
    def orthonormalized(self)->Basis:pass
    def determinant(self)->float:pass
    def rotated(self, axis:Vector3, phi:float)->Basis:pass
    def scaled(self, scale:Vector3)->Basis:pass
    def get_scale(self)->Vector3:pass
    def get_euler(self)->Vector3:pass
    def tdotx(self, with_:Vector3)->float:pass
    def tdoty(self, with_:Vector3)->float:pass
    def tdotz(self, with_:Vector3)->float:pass
    def xform(self, v:Vector3)->Vector3:pass
    def xform_inv(self, v:Vector3)->Vector3:pass
    def get_orthogonal_index(self)->int:pass
    def new(r_dest:Basis)->None:pass
    def new_with_euler_quat(r_dest:Basis, *euler:Quat)->None:pass
    def get_elements(self, elements:Vector3)->None:pass
    def get_axis(self, axis:int)->Vector3:pass
    def set_axis(self, axis:int, value:Vector3)->None:pass
    def get_row(self, row:int)->Vector3:pass
    def set_row(self, row:int, value:Vector3)->None:pass
    def operator_equal(self, b:Basis)->bool:pass
    def operator_add(self, b:Basis)->Basis:pass
    def operator_subtract(self, b:Basis)->Basis:pass
    def operator_multiply_vector(self, b:Basis)->Basis:pass
    def operator_multiply_scalar(self, b:float)->Basis:pass