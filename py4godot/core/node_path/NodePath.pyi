from py4godot.core.string.String import *

class NodePath:

    def __init__(self, path:str = None):pass

    @staticmethod
    def new_copy(src:NodePath)->NodePath:pass

    def destroy(self)->None:pass

    def __str__(self)->str:pass

    def is_absolute(self)->bool:pass
    def get_name_count(self)->int:pass
    def get_name(self, idx:int)->str:pass
    def get_subname_count(self)->int:pass
    def get_subname(self, idx:int)->str:pass
    def get_concatenated_subnames(self)->str:pass
    def is_empty(self)->bool:pass
    def __eq__(self, b:NodePath)->bool:pass
