from classes.Joint cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_hingejoint__get_lower_limit
cdef godot_method_bind *bind_hingejoint__get_upper_limit
cdef godot_method_bind *bind_hingejoint__set_lower_limit
cdef godot_method_bind *bind_hingejoint__set_upper_limit
cdef godot_method_bind *bind_hingejoint_get_flag
cdef godot_method_bind *bind_hingejoint_get_param
cdef godot_method_bind *bind_hingejoint_set_flag
cdef godot_method_bind *bind_hingejoint_set_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_hingejoint__get_lower_limit = api_core.godot_method_bind_get_method('HingeJoint', '_get_lower_limit')
  bind_hingejoint__get_upper_limit = api_core.godot_method_bind_get_method('HingeJoint', '_get_upper_limit')
  bind_hingejoint__set_lower_limit = api_core.godot_method_bind_get_method('HingeJoint', '_set_lower_limit')
  bind_hingejoint__set_upper_limit = api_core.godot_method_bind_get_method('HingeJoint', '_set_upper_limit')
  bind_hingejoint_get_flag = api_core.godot_method_bind_get_method('HingeJoint', 'get_flag')
  bind_hingejoint_get_param = api_core.godot_method_bind_get_method('HingeJoint', 'get_param')
  bind_hingejoint_set_flag = api_core.godot_method_bind_get_method('HingeJoint', 'set_flag')
  bind_hingejoint_set_param = api_core.godot_method_bind_get_method('HingeJoint', 'set_param')

############################Generated class###################################
cdef class HingeJoint(Joint):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("HingeJoint")())
##################################Generated Properties#########################################
  @property
  def angular_limit_bias(self): 
    return self.get_angular_limit_bias()
  @angular_limit_bias.setter 
  def angular_limit_bias(self,value): 
    self.set_angular_limit_bias(value)
  @property
  def angular_limit_enable(self): 
    return self.get_angular_limit_enable()
  @angular_limit_enable.setter 
  def angular_limit_enable(self,value): 
    self.set_angular_limit_enable(value)
  @property
  def angular_limit_lower(self): 
    return self.get_angular_limit_lower()
  @angular_limit_lower.setter 
  def angular_limit_lower(self,value): 
    self.set_angular_limit_lower(value)
  @property
  def angular_limit_relaxation(self): 
    return self.get_angular_limit_relaxation()
  @angular_limit_relaxation.setter 
  def angular_limit_relaxation(self,value): 
    self.set_angular_limit_relaxation(value)
  @property
  def angular_limit_softness(self): 
    return self.get_angular_limit_softness()
  @angular_limit_softness.setter 
  def angular_limit_softness(self,value): 
    self.set_angular_limit_softness(value)
  @property
  def angular_limit_upper(self): 
    return self.get_angular_limit_upper()
  @angular_limit_upper.setter 
  def angular_limit_upper(self,value): 
    self.set_angular_limit_upper(value)
  @property
  def motor_enable(self): 
    return self.get_motor_enable()
  @motor_enable.setter 
  def motor_enable(self,value): 
    self.set_motor_enable(value)
  @property
  def motor_max_impulse(self): 
    return self.get_motor_max_impulse()
  @motor_max_impulse.setter 
  def motor_max_impulse(self,value): 
    self.set_motor_max_impulse(value)
  @property
  def motor_target_velocity(self): 
    return self.get_motor_target_velocity()
  @motor_target_velocity.setter 
  def motor_target_velocity(self,value): 
    self.set_motor_target_velocity(value)
  @property
  def params_bias(self): 
    return self.get_params_bias()
  @params_bias.setter 
  def params_bias(self,value): 
    self.set_params_bias(value)

##################################Generated Methods#########################################
  def  _get_lower_limit(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_hingejoint__get_lower_limit,self.godot_owner,[NULL,],&ret)
  def  _get_upper_limit(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_hingejoint__get_upper_limit,self.godot_owner,[NULL,],&ret)
  def  _set_lower_limit(self, lower_limit):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_hingejoint__set_lower_limit,self.godot_owner,[NULL,],NULL)
  def  _set_upper_limit(self, upper_limit):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_hingejoint__set_upper_limit,self.godot_owner,[NULL,],NULL)
  def  get_flag(self, flag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_hingejoint_get_flag,self.godot_owner,[NULL,],&ret)
  def  get_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_hingejoint_get_param,self.godot_owner,[NULL,],&ret)
  def  set_flag(self, flagenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_hingejoint_set_flag,self.godot_owner,[NULL,],NULL)
  def  set_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_hingejoint_set_param,self.godot_owner,[NULL,],NULL)
