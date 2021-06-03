
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
cdef class SliderJoint(classes.Joint.Joint):
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

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sliderjoint__get_lower_limit_angular,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_upper_limit_angular(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sliderjoint__get_upper_limit_angular,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_lower_limit_angular(self,  float lower_limit_angular):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &lower_limit_angular
    api_core.godot_method_bind_ptrcall(bind_sliderjoint__set_lower_limit_angular,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_upper_limit_angular(self,  float upper_limit_angular):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &upper_limit_angular
    api_core.godot_method_bind_ptrcall(bind_sliderjoint__set_upper_limit_angular,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_param(self,  int param):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &param
    api_core.godot_method_bind_ptrcall(bind_sliderjoint_get_param,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_param(self,  int param,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &param
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_sliderjoint_set_param,self.godot_owner,args,NULL)
    hello('hallo2')
