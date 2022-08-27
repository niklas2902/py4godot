from py4godot.core.vector3.Vector3 import *
from py4godot.core.plane.Plane import *

class AABB:
    def __init__(self,pos:Vector3, size:Vector3)->None:pass
    def get_position(self)->Vector3:pass
    def set_position(self, v:Vector3)->None:pass
    def get_size(self)->Vector3:pass
    def set_size(self, v:Vector3)->None:pass
    def __str__(self)->str:pass
    def get_area(self)->float:pass
    def has_no_area(self)->bool:pass
    def has_no_surface(self)->bool:pass
    def intersects(self, _with:AABB)->bool:pass
    def encloses(self, with_:AABB)->bool:pass
    def merge(self, with_:AABB)->AABB:pass
    def intersection(self, with_:AABB)->AABB:pass
    def intersects_plane(self, plane:Plane)->bool:pass
    def intersects_segment(self, from_:Vector3, to:Vector3)->bool:pass
    def has_point(self, point:Vector3)->bool:pass
    def get_support(self, dir:Vector3)->Vector3:pass
    def get_longest_axis(self)->Vector3:pass
    def get_longest_axis_index(self)->int:pass
    def get_longest_axis_size(self)->float:pass
    def get_shortest_axis(self)->Vector3:pass
    def get_shortest_axis_index(self)->int:pass
    def get_shortest_axis_size(self)->float:pass
    def expand(self, to_point:Vector3)->godot_aabb:pass
    def grow(self, by:float)->godot_aabb:pass
    def get_endpoint(self, idx:int)->Vector3:pass
    def operator_equal(self, *b:godot_aabb)->godot_bool:pass