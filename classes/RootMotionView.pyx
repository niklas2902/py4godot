from classes.VisualInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")

############################Generated class###################################
cdef class RootMotionView(VisualInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RootMotionView")())
##################################Generated Properties#########################################
  @property
  def animation_path(self): 
    return self.get_animation_path()
  @animation_path.setter 
  def animation_path(self,value): 
    self.set_animation_path(value)
  @property
  def cell_size(self): 
    return self.get_cell_size()
  @cell_size.setter 
  def cell_size(self,value): 
    self.set_cell_size(value)
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def radius(self): 
    return self.get_radius()
  @radius.setter 
  def radius(self,value): 
    self.set_radius(value)
  @property
  def zero_y(self): 
    return self.get_zero_y()
  @zero_y.setter 
  def zero_y(self,value): 
    self.set_zero_y(value)
