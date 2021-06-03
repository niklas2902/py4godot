
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
cdef class ConeTwistJoint(classes.Joint.Joint):
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

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__get_swing_span,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_twist_span(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__get_twist_span,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_swing_span(self,  float swing_span):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &swing_span
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__set_swing_span,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_twist_span(self,  float twist_span):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &twist_span
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint__set_twist_span,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_param(self,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &param
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_param(self,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_conetwistjoint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
