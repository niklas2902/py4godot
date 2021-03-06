from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputmap_action_add_event
cdef godot_method_bind *bind_inputmap_action_erase_event
cdef godot_method_bind *bind_inputmap_action_erase_events
cdef godot_method_bind *bind_inputmap_action_has_event
cdef godot_method_bind *bind_inputmap_action_set_deadzone
cdef godot_method_bind *bind_inputmap_add_action
cdef godot_method_bind *bind_inputmap_erase_action
cdef godot_method_bind *bind_inputmap_event_is_action
cdef godot_method_bind *bind_inputmap_get_action_list
cdef godot_method_bind *bind_inputmap_get_actions
cdef godot_method_bind *bind_inputmap_has_action
cdef godot_method_bind *bind_inputmap_load_from_globals
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputmap_action_add_event = api_core.godot_method_bind_get_method('InputMap', 'action_add_event')
  bind_inputmap_action_erase_event = api_core.godot_method_bind_get_method('InputMap', 'action_erase_event')
  bind_inputmap_action_erase_events = api_core.godot_method_bind_get_method('InputMap', 'action_erase_events')
  bind_inputmap_action_has_event = api_core.godot_method_bind_get_method('InputMap', 'action_has_event')
  bind_inputmap_action_set_deadzone = api_core.godot_method_bind_get_method('InputMap', 'action_set_deadzone')
  bind_inputmap_add_action = api_core.godot_method_bind_get_method('InputMap', 'add_action')
  bind_inputmap_erase_action = api_core.godot_method_bind_get_method('InputMap', 'erase_action')
  bind_inputmap_event_is_action = api_core.godot_method_bind_get_method('InputMap', 'event_is_action')
  bind_inputmap_get_action_list = api_core.godot_method_bind_get_method('InputMap', 'get_action_list')
  bind_inputmap_get_actions = api_core.godot_method_bind_get_method('InputMap', 'get_actions')
  bind_inputmap_has_action = api_core.godot_method_bind_get_method('InputMap', 'has_action')
  bind_inputmap_load_from_globals = api_core.godot_method_bind_get_method('InputMap', 'load_from_globals')

############################Generated class###################################
cdef class InputMap(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputMap")())
##################################Generated Methods#########################################
  def  action_add_event(self, actionevent):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_add_event,self.godot_owner,[NULL,],NULL)
  def  action_erase_event(self, actionevent):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_erase_event,self.godot_owner,[NULL,],NULL)
  def  action_erase_events(self, action):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_erase_events,self.godot_owner,[NULL,],NULL)
  def  action_has_event(self, actionevent):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_has_event,self.godot_owner,[NULL,],&ret)
  def  action_set_deadzone(self, actiondeadzone):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_action_set_deadzone,self.godot_owner,[NULL,],NULL)
  def  add_action(self, actiondeadzone):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_add_action,self.godot_owner,[NULL,],NULL)
  def  erase_action(self, action):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_erase_action,self.godot_owner,[NULL,],NULL)
  def  event_is_action(self, eventaction):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputmap_event_is_action,self.godot_owner,[NULL,],&ret)
  def  get_action_list(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_inputmap_get_action_list,self.godot_owner,[NULL,],&ret)
  def  get_actions(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_inputmap_get_actions,self.godot_owner,[NULL,],&ret)
  def  has_action(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputmap_has_action,self.godot_owner,[NULL,],&ret)
  def  load_from_globals(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputmap_load_from_globals,self.godot_owner,[NULL,],NULL)
