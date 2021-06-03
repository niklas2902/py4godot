
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodestatemachinetransition_get_advance_condition
cdef godot_method_bind *bind_animationnodestatemachinetransition_get_priority
cdef godot_method_bind *bind_animationnodestatemachinetransition_get_switch_mode
cdef godot_method_bind *bind_animationnodestatemachinetransition_get_xfade_time
cdef godot_method_bind *bind_animationnodestatemachinetransition_has_auto_advance
cdef godot_method_bind *bind_animationnodestatemachinetransition_is_disabled
cdef godot_method_bind *bind_animationnodestatemachinetransition_set_advance_condition
cdef godot_method_bind *bind_animationnodestatemachinetransition_set_auto_advance
cdef godot_method_bind *bind_animationnodestatemachinetransition_set_disabled
cdef godot_method_bind *bind_animationnodestatemachinetransition_set_priority
cdef godot_method_bind *bind_animationnodestatemachinetransition_set_switch_mode
cdef godot_method_bind *bind_animationnodestatemachinetransition_set_xfade_time
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodestatemachinetransition_get_advance_condition = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'get_advance_condition')
  bind_animationnodestatemachinetransition_get_priority = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'get_priority')
  bind_animationnodestatemachinetransition_get_switch_mode = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'get_switch_mode')
  bind_animationnodestatemachinetransition_get_xfade_time = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'get_xfade_time')
  bind_animationnodestatemachinetransition_has_auto_advance = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'has_auto_advance')
  bind_animationnodestatemachinetransition_is_disabled = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'is_disabled')
  bind_animationnodestatemachinetransition_set_advance_condition = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'set_advance_condition')
  bind_animationnodestatemachinetransition_set_auto_advance = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'set_auto_advance')
  bind_animationnodestatemachinetransition_set_disabled = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'set_disabled')
  bind_animationnodestatemachinetransition_set_priority = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'set_priority')
  bind_animationnodestatemachinetransition_set_switch_mode = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'set_switch_mode')
  bind_animationnodestatemachinetransition_set_xfade_time = api_core.godot_method_bind_get_method('AnimationNodeStateMachineTransition', 'set_xfade_time')

############################Generated class###################################
cdef class AnimationNodeStateMachineTransition(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeStateMachineTransition")())
##################################Generated Properties#########################################
  @property
  def advance_condition(self): 
    return self.get_advance_condition()
  @advance_condition.setter 
  def advance_condition(self,value): 
    self.set_advance_condition(value)
  @property
  def auto_advance(self): 
    return self.get_auto_advance()
  @auto_advance.setter 
  def auto_advance(self,value): 
    self.set_auto_advance(value)
  @property
  def disabled(self): 
    return self.get_disabled()
  @disabled.setter 
  def disabled(self,value): 
    self.set_disabled(value)
  @property
  def priority(self): 
    return self.get_priority()
  @priority.setter 
  def priority(self,value): 
    self.set_priority(value)
  @property
  def switch_mode(self): 
    return self.get_switch_mode()
  @switch_mode.setter 
  def switch_mode(self,value): 
    self.set_switch_mode(value)
  @property
  def xfade_time(self): 
    return self.get_xfade_time()
  @xfade_time.setter 
  def xfade_time(self,value): 
    self.set_xfade_time(value)

##################################Generated Methods#########################################
  def  get_advance_condition(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_advance_condition,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_priority,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_switch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef SwitchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_switch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_xfade_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_xfade_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_auto_advance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_has_auto_advance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_is_disabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_advance_condition(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_advance_condition,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_auto_advance(self,  bool auto_advance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &auto_advance
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_auto_advance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disabled(self,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &disabled
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_priority(self,  int priority):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &priority
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_priority,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_switch_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_switch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_xfade_time(self,  float secs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &secs
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_xfade_time,self.godot_owner,args,NULL)
    hello('hallo2')
