from py4godot.core.vector3.Vector3 import *
from py4godot.core.plane.Plane import *
from py4godot.core.variant.Variant import *

class Array:
    def __init__(self)->None:pass
    def set(self, idx:int, value:Variant)->None:pass
    def get(self, idx:int)->Variant:pass
    def operator_index(self, idx:int)->Variant:pass
    def operator_index_const(self, idx:int)->const:pass
    def append(self, value:Variant)->None:pass
    def clear(self)->None:pass
    def count(self, value:Variant)->int:pass
    def empty(self)->godot_bool:pass
    def erase(self, value:Variant)->None:pass
    def front(self)->Variant:pass
    def back(self)->Variant:pass
    def find(self, what:Variant, from:int)->int:pass
    def find_last(self, what:Variant)->int:pass
    def has(self, value:Variant)->godot_bool:pass
    def hash(self)->int:pass
    def insert(self, pos:int, value:Variant)->None:pass
    def invert(self)->None:pass
    def pop_back(self)->Variant:pass
    def pop_front(self)->Variant:pass
    def push_back(self, value:Variant)->None:pass
    def push_front(self, value:Variant)->None:pass
    def remove(self, idx:int)->None:pass
    def resize(self, size:int)->None:pass
    def rfind(self, what:Variant, from_:int)->int:pass
    def size(self)->int:pass
    def sort(self)->None:pass
    def bsearch(self, value:Variant, before:bool)->int:pass
    def destroy(self)->None:pass