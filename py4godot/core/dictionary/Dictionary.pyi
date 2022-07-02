from py4godot.core.variant.Variant import *
from py4godot.core.array.Array import *

class Dictionary:
    def __init__(self)->None:pass
    @staticmethod
    def new_copy(r_dest:Array, src:Array)->Array:pass
    def destroy(self)->None:pass
    def size(self)->int:pass
    def empty(self)->bool:pass
    def clear(self)->None:pass
    def has(self, key:Variant)->bool:pass
    def has_all(self, keys:Array)->bool:pass
    def erase(self, key:Variant)->None:pass
    def hash(self)->int:pass
    def keys(self)->Array:pass
    def values(self)->Array:pass
    def get(self, key:Variant)->Variant:pass
    def set(self, key:Variant, value:Variant)->None:pass
    def operator_index(self, key:Variant)->Variant:pass
    def operator_index_const(self, key:Variant)->const:pass
    def next(self, key:Variant)->Variant:pass
    def operator_equal(self, b:Array)->bool:pass
    def to_json(self)->str:pass