from classes.Light cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")

############################Generated class###################################
cdef class SpotLight(Light):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpotLight")())
##################################Generated Properties#########################################
  @property
  def spot_angle(self): 
    return self.get_spot_angle()
  @spot_angle.setter 
  def spot_angle(self,value): 
    self.set_spot_angle(value)
  @property
  def spot_angle_attenuation(self): 
    return self.get_spot_angle_attenuation()
  @spot_angle_attenuation.setter 
  def spot_angle_attenuation(self,value): 
    self.set_spot_angle_attenuation(value)
  @property
  def spot_attenuation(self): 
    return self.get_spot_attenuation()
  @spot_attenuation.setter 
  def spot_attenuation(self,value): 
    self.set_spot_attenuation(value)
  @property
  def spot_range(self): 
    return self.get_spot_range()
  @spot_range.setter 
  def spot_range(self,value): 
    self.set_spot_range(value)
