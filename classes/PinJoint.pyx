from classes.Joint cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_pinjoint_get_param
cdef godot_method_bind *bind_pinjoint_set_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_pinjoint_get_param = api_core.godot_method_bind_get_method('PinJoint', 'get_param')
  bind_pinjoint_set_param = api_core.godot_method_bind_get_method('PinJoint', 'set_param')

############################Generated class###################################
cdef class PinJoint(Joint):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PinJoint")())
##################################Generated Properties#########################################
  @property
  def params_bias(self): 
    return self.get_params_bias()
  @params_bias.setter 
  def params_bias(self,value): 
    self.set_params_bias(value)
  @property
  def params_damping(self): 
    return self.get_params_damping()
  @params_damping.setter 
  def params_damping(self,value): 
    self.set_params_damping(value)
  @property
  def params_impulse_clamp(self): 
    return self.get_params_impulse_clamp()
  @params_impulse_clamp.setter 
  def params_impulse_clamp(self,value): 
    self.set_params_impulse_clamp(value)

##################################Generated Methods#########################################
  def  get_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_pinjoint_get_param,self.godot_owner,[NULL,],&ret)
  def  set_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_pinjoint_set_param,self.godot_owner,[NULL,],NULL)
