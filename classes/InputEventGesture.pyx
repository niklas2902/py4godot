from classes.InputEventWithModifiers cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventgesture_get_position
cdef godot_method_bind *bind_inputeventgesture_set_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventgesture_get_position = api_core.godot_method_bind_get_method('InputEventGesture', 'get_position')
  bind_inputeventgesture_set_position = api_core.godot_method_bind_get_method('InputEventGesture', 'set_position')

############################Generated class###################################
cdef class InputEventGesture(InputEventWithModifiers):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventGesture")())
##################################Generated Properties#########################################
  @property
  def position(self): 
    return self.get_position()
  @position.setter 
  def position(self,value): 
    self.set_position(value)

##################################Generated Methods#########################################
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventgesture_get_position,self.godot_owner,[NULL,],&ret)
  def  set_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventgesture_set_position,self.godot_owner,[NULL,],NULL)
