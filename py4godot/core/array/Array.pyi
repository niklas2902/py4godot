from py4godot.core.vector3.Vector3 import *
from py4godot.core.plane.Plane import *

class Array:
    def __init__(self,*objects)->None:pass
    def set(self, idx:int, value:object)->None:pass
    def get(self, idx:int)->object:pass
    def operator_index(self, idx:int)->object:pass
    def append(self, value:object)->None:pass
    def clear(self)->None:pass
    def count(self, value:object)->int:pass
    def empty(self)->bool:pass
    def erase(self, value:object)->None:pass
    def front(self)->object:pass
    def back(self)->object:pass
    def find(self, what:object, from_:int)->int:pass
    def find_last(self, what:object)->int:pass
    def has(self, value:object)->bool:pass
    def hash(self)->int:pass
    def insert(self, pos:int, value:object)->None:pass
    def invert(self)->None:pass
    def pop_back(self)->object:pass
    def pop_front(self)->object:pass
    def push_back(self, value:object)->None:pass
    def push_front(self, value:object)->None:pass
    def remove(self, idx:int)->None:pass
    def resize(self, size:int)->None:pass
    def rfind(self, what:object, from_:int)->int:pass
    def size(self)->int:pass
    def sort(self)->None:pass
    def bsearch(self, value:object, before:bool)->int:pass
    def destroy(self)->None:pass
    def __getitem__(self, index:int)->object:pass
    def __setitem__(self, index:int, value:object)->None:pass
    def __iter__(self)->None:pass
    def __next__(self)->object:pass
