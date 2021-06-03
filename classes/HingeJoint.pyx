
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Joint 

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
cdef class HingeJoint(classes.Joint.Joint):
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

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_hingejoint__get_lower_limit,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_upper_limit(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_hingejoint__get_upper_limit,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_lower_limit(self,  float lower_limit):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &lower_limit
    api_core.godot_method_bind_ptrcall(bind_hingejoint__set_lower_limit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_upper_limit(self,  float upper_limit):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &upper_limit
    api_core.godot_method_bind_ptrcall(bind_hingejoint__set_upper_limit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_flag(self,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &flag
    api_core.godot_method_bind_ptrcall(bind_hingejoint_get_flag,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_param(self,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &param
    api_core.godot_method_bind_ptrcall(bind_hingejoint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_flag(self,  int flag,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &flag
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_hingejoint_set_flag,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_param(self,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_hingejoint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
