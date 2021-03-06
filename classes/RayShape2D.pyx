from classes.Shape2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_rayshape2d_get_length
cdef godot_method_bind *bind_rayshape2d_get_slips_on_slope
cdef godot_method_bind *bind_rayshape2d_set_length
cdef godot_method_bind *bind_rayshape2d_set_slips_on_slope
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_rayshape2d_get_length = api_core.godot_method_bind_get_method('RayShape2D', 'get_length')
  bind_rayshape2d_get_slips_on_slope = api_core.godot_method_bind_get_method('RayShape2D', 'get_slips_on_slope')
  bind_rayshape2d_set_length = api_core.godot_method_bind_get_method('RayShape2D', 'set_length')
  bind_rayshape2d_set_slips_on_slope = api_core.godot_method_bind_get_method('RayShape2D', 'set_slips_on_slope')

############################Generated class###################################
cdef class RayShape2D(Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RayShape2D")())
##################################Generated Properties#########################################
  @property
  def length(self): 
    return self.get_length()
  @length.setter 
  def length(self,value): 
    self.set_length(value)
  @property
  def slips_on_slope(self): 
    return self.get_slips_on_slope()
  @slips_on_slope.setter 
  def slips_on_slope(self,value): 
    self.set_slips_on_slope(value)

##################################Generated Methods#########################################
  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_rayshape2d_get_length,self.godot_owner,[NULL,],&ret)
  def  get_slips_on_slope(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_rayshape2d_get_slips_on_slope,self.godot_owner,[NULL,],&ret)
  def  set_length(self, length):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_rayshape2d_set_length,self.godot_owner,[NULL,],NULL)
  def  set_slips_on_slope(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_rayshape2d_set_slips_on_slope,self.godot_owner,[NULL,],NULL)
