from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputevent_accumulate
cdef godot_method_bind *bind_inputevent_as_text
cdef godot_method_bind *bind_inputevent_get_action_strength
cdef godot_method_bind *bind_inputevent_get_device
cdef godot_method_bind *bind_inputevent_is_action
cdef godot_method_bind *bind_inputevent_is_action_pressed
cdef godot_method_bind *bind_inputevent_is_action_released
cdef godot_method_bind *bind_inputevent_is_action_type
cdef godot_method_bind *bind_inputevent_is_echo
cdef godot_method_bind *bind_inputevent_is_pressed
cdef godot_method_bind *bind_inputevent_set_device
cdef godot_method_bind *bind_inputevent_shortcut_match
cdef godot_method_bind *bind_inputevent_xformed_by
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputevent_accumulate = api_core.godot_method_bind_get_method('InputEvent', 'accumulate')
  bind_inputevent_as_text = api_core.godot_method_bind_get_method('InputEvent', 'as_text')
  bind_inputevent_get_action_strength = api_core.godot_method_bind_get_method('InputEvent', 'get_action_strength')
  bind_inputevent_get_device = api_core.godot_method_bind_get_method('InputEvent', 'get_device')
  bind_inputevent_is_action = api_core.godot_method_bind_get_method('InputEvent', 'is_action')
  bind_inputevent_is_action_pressed = api_core.godot_method_bind_get_method('InputEvent', 'is_action_pressed')
  bind_inputevent_is_action_released = api_core.godot_method_bind_get_method('InputEvent', 'is_action_released')
  bind_inputevent_is_action_type = api_core.godot_method_bind_get_method('InputEvent', 'is_action_type')
  bind_inputevent_is_echo = api_core.godot_method_bind_get_method('InputEvent', 'is_echo')
  bind_inputevent_is_pressed = api_core.godot_method_bind_get_method('InputEvent', 'is_pressed')
  bind_inputevent_set_device = api_core.godot_method_bind_get_method('InputEvent', 'set_device')
  bind_inputevent_shortcut_match = api_core.godot_method_bind_get_method('InputEvent', 'shortcut_match')
  bind_inputevent_xformed_by = api_core.godot_method_bind_get_method('InputEvent', 'xformed_by')

############################Generated class###################################
cdef class InputEvent(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEvent")())
##################################Generated Properties#########################################
  @property
  def device(self): 
    return self.get_device()
  @device.setter 
  def device(self,value): 
    self.set_device(value)

##################################Generated Methods#########################################
  def  accumulate(self, with_event):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_accumulate,self.godot_owner,[NULL,],&ret)
  def  as_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_as_text,self.godot_owner,[NULL,],&ret)
  def  get_action_strength(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_get_action_strength,self.godot_owner,[NULL,],&ret)
  def  get_device(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_get_device,self.godot_owner,[NULL,],&ret)
  def  is_action(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action,self.godot_owner,[NULL,],&ret)
  def  is_action_pressed(self, actionallow_echo):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action_pressed,self.godot_owner,[NULL,],&ret)
  def  is_action_released(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action_released,self.godot_owner,[NULL,],&ret)
  def  is_action_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_action_type,self.godot_owner,[NULL,],&ret)
  def  is_echo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_echo,self.godot_owner,[NULL,],&ret)
  def  is_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_is_pressed,self.godot_owner,[NULL,],&ret)
  def  set_device(self, device):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputevent_set_device,self.godot_owner,[NULL,],NULL)
  def  shortcut_match(self, event):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_shortcut_match,self.godot_owner,[NULL,],&ret)
  def  xformed_by(self, xformlocal_ofs):
    cdef godot_object *_owner = self.godot_owner
    cdef InputEvent ret
    api_core.godot_method_bind_ptrcall(bind_inputevent_xformed_by,self.godot_owner,[NULL,],&ret)
