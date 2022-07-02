from py4godot.core.vector3.Vector3 import *

class Plane:
    def __init___with_reals(self,a:float, b:float, c:float, d:float)->None:pass
    def new_with_vectors(r_dest:Plane, v1:Vector3, v2:Vector3, v3:Vector3)->None:pass
    def new_with_normal(r_dest:Plane, normal:Vector3, d:float)->None:pass
    def __str__(self)->str:pass
    def normalized(self)->Plane:pass
    def center(self)->Vector3:pass
    def get_any_point(self)->Vector3:pass
    def is_point_over(self, point:Vector3)->bool:pass
    def distance_to(self, point:Vector3)->float:pass
    def has_point(self, point:Vector3, epsilon:float)->bool:pass
    def project(self, point:Vector3)->Vector3:pass
    def intersect_3(self, r_dest:Vector3, b:Plane, c:Plane)->bool:pass
    def intersects_ray(self, r_dest:Vector3, from_:Vector3, dir:Vector3)->bool:pass
    def intersects_segment(self, r_dest:Vector3, begin:Vector3, end:Vector3)->bool:pass
    def operator_neg(self)->Plane:pass
    def operator_equal(self, b:Plane)->bool:pass
    def set_normal(self, normal:Vector3)->None:pass
    def get_normal(self)->Vector3:pass
    def get_d(self)->float:pass
    def set_d(self, d:float)->None:pass
