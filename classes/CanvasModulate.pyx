from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_canvasmodulate_get_color
cdef godot_method_bind *bind_canvasmodulate_set_color
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_canvasmodulate_get_color = api_core.godot_method_bind_get_method('CanvasModulate', 'get_color')
  bind_canvasmodulate_set_color = api_core.godot_method_bind_get_method('CanvasModulate', 'set_color')

############################Generated class###################################
cdef class CanvasModulate(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CanvasModulate")())
##################################Generated Properties#########################################
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)

##################################Generated Methods#########################################
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_canvasmodulate_get_color,self.godot_owner,[NULL,],&ret)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_canvasmodulate_set_color,self.godot_owner,[NULL,],NULL)
