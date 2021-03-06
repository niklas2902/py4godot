from classes.Joint cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_conetwistjoint__get_swing_span
cdef godot_method_bind *bind_conetwistjoint__get_twist_span
cdef godot_method_bind *bind_conetwistjoint__set_swing_span
cdef godot_method_bind *bind_conetwistjoint__set_twist_span
cdef godot_method_bind *bind_conetwistjoint_get_param
cdef godot_method_bind *bind_conetwistjoint_set_param
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_conetwistjoint__get_swing_span = api_core.godot_method_bind_get_method('ConeTwistJoint', '_get_swing_span')
  bind_conetwistjoint__get_twist_span = api_core.godot_method_bind_get_method('ConeTwistJoint', '_get_twist_span')
  bind_conetwistjoint__set_swing_span = api_core.godot_method_bind_get_method('ConeTwistJoint', '_set_swing_span')
  bind_conetwistjoint__set_twist_span = api_core.godot_method_bind_get_method('ConeTwistJoint', '_set_twist_span')
  bind_conetwistjoint_get_param = api_core.godot_method_bind_get_method('ConeTwistJoint', 'get_param')
  bind_conetwistjoint_set_param = api_core.godot_method_bind_get_method('ConeTwistJoint', 'set_param')

############################Generated class###################################
cdef class ConeTwistJoint(Joint):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConeTwistJoint")())
##################################Generated Properties#########################################
  @property
  def bias(self): 
    return self.get_bias()
  @bias.setter 
  def bias(self,value): 
    self.set_bias(value)
  @property
  def relaxation(self): 
    return self.get_relaxation()
  @relaxation.setter 
  def relaxation(self,value): 
    self.set_relaxation(value)
  @property
  def softness(self): 
    return self.get_softness()
  @softness.setter 
  def softness(self,value): 
    self.set_softness(value)
  @property
  def swing_span(self): 
    return self.get_swing_span()
  @swing_span.setter 
  def swing_span(self,value): 
    self.set_swing_span(value)
  @property
  def twist_span(self): 
    return self.get_twist_span()
  @twist_span.setter 
  def twist_span(self,value): 
    self.set_twist_span(value)

##################################Generated Methods#########################################
  def  _get_swing_span(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__get_swing_span,self.godot_owner,[NULL,],&ret)
  def  _get_twist_span(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__get_twist_span,self.godot_owner,[NULL,],&ret)
  def  _set_swing_span(self, swing_span):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__set_swing_span,self.godot_owner,[NULL,],NULL)
  def  _set_twist_span(self, twist_span):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__set_twist_span,self.godot_owner,[NULL,],NULL)
  def  get_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint_get_param,self.godot_owner,[NULL,],&ret)
  def  set_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint_set_param,self.godot_owner,[NULL,],NULL)
