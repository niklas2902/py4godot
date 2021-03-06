from classes.InputEventWithModifiers cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventmouse_get_button_mask
cdef godot_method_bind *bind_inputeventmouse_get_global_position
cdef godot_method_bind *bind_inputeventmouse_get_position
cdef godot_method_bind *bind_inputeventmouse_set_button_mask
cdef godot_method_bind *bind_inputeventmouse_set_global_position
cdef godot_method_bind *bind_inputeventmouse_set_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventmouse_get_button_mask = api_core.godot_method_bind_get_method('InputEventMouse', 'get_button_mask')
  bind_inputeventmouse_get_global_position = api_core.godot_method_bind_get_method('InputEventMouse', 'get_global_position')
  bind_inputeventmouse_get_position = api_core.godot_method_bind_get_method('InputEventMouse', 'get_position')
  bind_inputeventmouse_set_button_mask = api_core.godot_method_bind_get_method('InputEventMouse', 'set_button_mask')
  bind_inputeventmouse_set_global_position = api_core.godot_method_bind_get_method('InputEventMouse', 'set_global_position')
  bind_inputeventmouse_set_position = api_core.godot_method_bind_get_method('InputEventMouse', 'set_position')

############################Generated class###################################
cdef class InputEventMouse(InputEventWithModifiers):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventMouse")())
##################################Generated Properties#########################################
  @property
  def button_mask(self): 
    return self.get_button_mask()
  @button_mask.setter 
  def button_mask(self,value): 
    self.set_button_mask(value)
  @property
  def global_position(self): 
    return self.get_global_position()
  @global_position.setter 
  def global_position(self,value): 
    self.set_global_position(value)
  @property
  def position(self): 
    return self.get_position()
  @position.setter 
  def position(self,value): 
    self.set_position(value)

##################################Generated Methods#########################################
  def  get_button_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_get_button_mask,self.godot_owner,[NULL,],&ret)
  def  get_global_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_get_global_position,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_get_position,self.godot_owner,[NULL,],&ret)
  def  set_button_mask(self, button_mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_set_button_mask,self.godot_owner,[NULL,],NULL)
  def  set_global_position(self, global_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_set_global_position,self.godot_owner,[NULL,],NULL)
  def  set_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmouse_set_position,self.godot_owner,[NULL,],NULL)
