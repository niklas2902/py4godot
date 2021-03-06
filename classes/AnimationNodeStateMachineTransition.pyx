from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class AnimationNodeStateMachineTransition(Resource):
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
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_advance_condition,self.godot_owner,[NULL,],&ret)
  def  get_priority(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_priority,self.godot_owner,[NULL,],&ret)
  def  get_switch_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationNodeStateMachineTransition::SwitchMode ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_switch_mode,self.godot_owner,[NULL,],&ret)
  def  get_xfade_time(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_get_xfade_time,self.godot_owner,[NULL,],&ret)
  def  has_auto_advance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_has_auto_advance,self.godot_owner,[NULL,],&ret)
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_is_disabled,self.godot_owner,[NULL,],&ret)
  def  set_advance_condition(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_advance_condition,self.godot_owner,[NULL,],NULL)
  def  set_auto_advance(self, auto_advance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_auto_advance,self.godot_owner,[NULL,],NULL)
  def  set_disabled(self, disabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_disabled,self.godot_owner,[NULL,],NULL)
  def  set_priority(self, priority):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_priority,self.godot_owner,[NULL,],NULL)
  def  set_switch_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_switch_mode,self.godot_owner,[NULL,],NULL)
  def  set_xfade_time(self, secs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachinetransition_set_xfade_time,self.godot_owner,[NULL,],NULL)
