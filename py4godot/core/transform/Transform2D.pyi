from py4godot.core.vector2.Vector2 import *
from py4godot.core.basis.Basis import *
from py4godot.core.rect2.Rect2 import *

class Transform2D:
    def __init__(self,rot:float, pos:Vector2)->None:pass
    @staticmethod
    def new_axis_origin(r_dest:Transform2D, x_axis:Vector2, y_axis:Vector2, origin:Vector2)->Transform2D:pass
    def __str__(self)->str:pass
    def inverse(self)->Transform2D:pass
    def affine_inverse(self)->Transform2D:pass
    def get_rotation(self)->float:pass
    def get_origin(self)->Vector2:pass
    def get_scale(self)->Vector2:pass
    def orthonormalized(self)->Transform2D:pass
    def rotated(self, phi:float)->Transform2D:pass
    def scaled(self, scale:Vector2)->Transform2D:pass
    def translated(self, offset:Vector2)->Transform2D:pass
    def xform_vector2(self, v:Vector2)->Vector2:pass
    def xform_inv_vector2(self, v:Vector2)->Vector2:pass
    def basis_xform_vector2(self, v:Vector2)->Vector2:pass
    def basis_xform_inv_vector2(self, v:Vector2)->Vector2:pass
    def interpolate_with(self, m:Transform2D, c:float)->Transform2D:pass
    def operator_equal(self, b:Transform2D)->bool:pass
    def operator_multiply(self, b:Transform2D)->Transform2D:pass
    def new_identity(r_dest:Transform2D)->None:pass
    def xform_rect2(self, v:Rect2)->Rect2:pass
    def xform_inv_rect2(self, v:Rect2)->Rect2:pass