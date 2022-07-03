class Color:
    def __init___rgba(self,r:float, g:float, b:float, a:float)->None:pass
    def new_rgb(r_dest:Color, r:float, g:float, b:float)->None:pass
    def get_r(self)->float:pass
    def set_r(self, r:float)->None:pass
    def get_g(self)->float:pass
    def set_g(self, g:float)->None:pass
    def get_b(self)->float:pass
    def set_b(self, b:float)->None:pass
    def get_a(self)->float:pass
    def set_a(self, a:float)->None:pass
    def get_h(self)->float:pass
    def get_s(self)->float:pass
    def get_v(self)->float:pass
    def __str__(self)->str:pass
    def to_rgba32(self)->int:pass
    def to_argb32(self)->int:pass
    def gray(self)->float:pass
    def inverted(self)->Color:pass
    def contrasted(self)->Color:pass
    def linear_interpolate(self, b:Color, t:float)->Color:pass
    def blend(self, over:Color)->Color:pass
    def to_html(self, with_alpha:bool)->str:pass
    def operator_equal(self, b:Color)->bool:pass
    def operator_less(self, b:Color)->bool:pass