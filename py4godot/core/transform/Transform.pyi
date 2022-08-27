from py4godot.core.vector2.Vector2 import *
from py4godot.core.vector3.Vector3 import *
from py4godot.core.basis.Basis import *
from py4godot.core.aabb.AABB import *
from py4godot.core.transform.Transform2D import *

class Transform:
    def __init___with_axis_origin(self,x_axis:Vector3, y_axis:Vector3, z_axis:Vector3, origin:Vector3)->None:pass
    def new(r_dest:Transfrom, basis:Basis, origin:Vector3)->None:pass
    def get_basis(self)->Basis:pass
    def set_basis(self, v:Basis)->None:pass
    def get_origin(self)->Vector3:pass
    def set_origin(self, v:Vector3)->None:pass
    def __str__(self)->str:pass
    def inverse(self)->Transfrom:pass
    def affine_inverse(self)->Transfrom:pass
    def orthonormalized(self)->Transfrom:pass
    def rotated(self, axis:Vector3, phi:float)->Transfrom:pass
    def scaled(self, scale:Vector3)->Transfrom:pass
    def translated(self, ofs:Vector3)->Transfrom:pass
    def looking_at(self, target:Vector3, up:Vector3)->Transfrom:pass
    def xform_plane(self, v:Plane)->Plane:pass
    def xform_inv_plane(self, v:Plane)->Plane:pass
    def new_identity(r_dest:Transfrom)->None:pass
    def operator_equal(self, b:Transfrom)->bool:pass
    def operator_multiply(self, b:Transfrom)->Transfrom:pass
    def xform_vector3(self, v:Vector3)->Vector3:pass
    def xform_inv_vector3(self, v:Vector3)->Vector3:pass
    def xform_aabb(self, v:AABB)->AABB:pass
    def xform_inv_aabb(self, *v:AABB)->AABB:pass