from classes.Joint cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_sliderjoint__get_lower_limit_angular
cdef godot_method_bind *bind_sliderjoint__get_upper_limit_angular
cdef godot_method_bind *bind_sliderjoint__set_lower_limit_angular
cdef godot_method_bind *bind_sliderjoint__set_upper_limit_angular
cdef godot_method_bind *bind_sliderjoint_get_param
cdef godot_method_bind *bind_sliderjoint_set_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_sliderjoint__get_lower_limit_angular = api_core.godot_method_bind_get_method('SliderJoint', '_get_lower_limit_angular')
  bind_sliderjoint__get_upper_limit_angular = api_core.godot_method_bind_get_method('SliderJoint', '_get_upper_limit_angular')
  bind_sliderjoint__set_lower_limit_angular = api_core.godot_method_bind_get_method('SliderJoint', '_set_lower_limit_angular')
  bind_sliderjoint__set_upper_limit_angular = api_core.godot_method_bind_get_method('SliderJoint', '_set_upper_limit_angular')
  bind_sliderjoint_get_param = api_core.godot_method_bind_get_method('SliderJoint', 'get_param')
  bind_sliderjoint_set_param = api_core.godot_method_bind_get_method('SliderJoint', 'set_param')

############################Generated class###################################
cdef class SliderJoint(Joint):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SliderJoint")())
##################################Generated Properties#########################################
  @property
  def angular_limit_damping(self): 
    return self.get_angular_limit_damping()
  @angular_limit_damping.setter 
  def angular_limit_damping(self,value): 
    self.set_angular_limit_damping(value)
  @property
  def angular_limit_lower_angle(self): 
    return self.get_angular_limit_lower_angle()
  @angular_limit_lower_angle.setter 
  def angular_limit_lower_angle(self,value): 
    self.set_angular_limit_lower_angle(value)
  @property
  def angular_limit_restitution(self): 
    return self.get_angular_limit_restitution()
  @angular_limit_restitution.setter 
  def angular_limit_restitution(self,value): 
    self.set_angular_limit_restitution(value)
  @property
  def angular_limit_softness(self): 
    return self.get_angular_limit_softness()
  @angular_limit_softness.setter 
  def angular_limit_softness(self,value): 
    self.set_angular_limit_softness(value)
  @property
  def angular_limit_upper_angle(self): 
    return self.get_angular_limit_upper_angle()
  @angular_limit_upper_angle.setter 
  def angular_limit_upper_angle(self,value): 
    self.set_angular_limit_upper_angle(value)
  @property
  def angular_motion_damping(self): 
    return self.get_angular_motion_damping()
  @angular_motion_damping.setter 
  def angular_motion_damping(self,value): 
    self.set_angular_motion_damping(value)
  @property
  def angular_motion_restitution(self): 
    return self.get_angular_motion_restitution()
  @angular_motion_restitution.setter 
  def angular_motion_restitution(self,value): 
    self.set_angular_motion_restitution(value)
  @property
  def angular_motion_softness(self): 
    return self.get_angular_motion_softness()
  @angular_motion_softness.setter 
  def angular_motion_softness(self,value): 
    self.set_angular_motion_softness(value)
  @property
  def angular_ortho_damping(self): 
    return self.get_angular_ortho_damping()
  @angular_ortho_damping.setter 
  def angular_ortho_damping(self,value): 
    self.set_angular_ortho_damping(value)
  @property
  def angular_ortho_restitution(self): 
    return self.get_angular_ortho_restitution()
  @angular_ortho_restitution.setter 
  def angular_ortho_restitution(self,value): 
    self.set_angular_ortho_restitution(value)
  @property
  def angular_ortho_softness(self): 
    return self.get_angular_ortho_softness()
  @angular_ortho_softness.setter 
  def angular_ortho_softness(self,value): 
    self.set_angular_ortho_softness(value)
  @property
  def linear_limit_damping(self): 
    return self.get_linear_limit_damping()
  @linear_limit_damping.setter 
  def linear_limit_damping(self,value): 
    self.set_linear_limit_damping(value)
  @property
  def linear_limit_lower_distance(self): 
    return self.get_linear_limit_lower_distance()
  @linear_limit_lower_distance.setter 
  def linear_limit_lower_distance(self,value): 
    self.set_linear_limit_lower_distance(value)
  @property
  def linear_limit_restitution(self): 
    return self.get_linear_limit_restitution()
  @linear_limit_restitution.setter 
  def linear_limit_restitution(self,value): 
    self.set_linear_limit_restitution(value)
  @property
  def linear_limit_softness(self): 
    return self.get_linear_limit_softness()
  @linear_limit_softness.setter 
  def linear_limit_softness(self,value): 
    self.set_linear_limit_softness(value)
  @property
  def linear_limit_upper_distance(self): 
    return self.get_linear_limit_upper_distance()
  @linear_limit_upper_distance.setter 
  def linear_limit_upper_distance(self,value): 
    self.set_linear_limit_upper_distance(value)
  @property
  def linear_motion_damping(self): 
    return self.get_linear_motion_damping()
  @linear_motion_damping.setter 
  def linear_motion_damping(self,value): 
    self.set_linear_motion_damping(value)
  @property
  def linear_motion_restitution(self): 
    return self.get_linear_motion_restitution()
  @linear_motion_restitution.setter 
  def linear_motion_restitution(self,value): 
    self.set_linear_motion_restitution(value)
  @property
  def linear_motion_softness(self): 
    return self.get_linear_motion_softness()
  @linear_motion_softness.setter 
  def linear_motion_softness(self,value): 
    self.set_linear_motion_softness(value)
  @property
  def linear_ortho_damping(self): 
    return self.get_linear_ortho_damping()
  @linear_ortho_damping.setter 
  def linear_ortho_damping(self,value): 
    self.set_linear_ortho_damping(value)
  @property
  def linear_ortho_restitution(self): 
    return self.get_linear_ortho_restitution()
  @linear_ortho_restitution.setter 
  def linear_ortho_restitution(self,value): 
    self.set_linear_ortho_restitution(value)
  @property
  def linear_ortho_softness(self): 
    return self.get_linear_ortho_softness()
  @linear_ortho_softness.setter 
  def linear_ortho_softness(self,value): 
    self.set_linear_ortho_softness(value)

##################################Generated Methods#########################################
  def  _get_lower_limit_angular(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_sliderjoint__get_lower_limit_angular,self.godot_owner,[NULL,],&ret)
  def  _get_upper_limit_angular(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_sliderjoint__get_upper_limit_angular,self.godot_owner,[NULL,],&ret)
  def  _set_lower_limit_angular(self, lower_limit_angular):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sliderjoint__set_lower_limit_angular,self.godot_owner,[NULL,],NULL)
  def  _set_upper_limit_angular(self, upper_limit_angular):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sliderjoint__set_upper_limit_angular,self.godot_owner,[NULL,],NULL)
  def  get_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_sliderjoint_get_param,self.godot_owner,[NULL,],&ret)
  def  set_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sliderjoint_set_param,self.godot_owner,[NULL,],NULL)
