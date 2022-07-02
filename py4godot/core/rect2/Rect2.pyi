from py4godot.core.vector2.Vector2 import *
class Rect2:
    def __init__(self,x:float, y:float, width:float, height:float)->None:pass
    def new_with_position_and_size(r_dest:Rect2, pos:Vector2, size:Vector2)->None:pass
    def __str__(self)->str:pass
    def get_area(self)->float:pass
    def intersects(self, b:Rect2)->bool:pass
    def encloses(self, b:Rect2)->bool:pass
    def has_no_area(self)->bool:pass
    def clip(self, b:Rect2)->Rect2:pass
    def merge(self, b:Rect2)->Rect2:pass
    def has_point(self, point:Vector2)->bool:pass
    def grow(self, by:float)->Rect2:pass
    def expand(self, to:Vector2)->Rect2:pass
    def operator_equal(self, b:Rect2)->bool:pass
    def get_position(self)->Vector2:pass
    def get_size(self)->Vector2:pass
    def set_position(self, pos:Vector2)->None:pass
    def set_size(self, size:Vector2)->None:pass