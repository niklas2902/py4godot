from py4godot.utils.Wrapper import *
class RID:
    def __init__(self)->None:pass
    def get_id(self)->int:pass
    def new_with_resource(r_dest:RID, from_:Wrapper)->None:pass
    def operator_equal(self, b:RID)->bool:pass
    def operator_less(self, b:RID)->bool:pass