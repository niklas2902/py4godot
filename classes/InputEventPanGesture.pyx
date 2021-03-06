from classes.InputEventGesture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventpangesture_get_delta
cdef godot_method_bind *bind_inputeventpangesture_set_delta
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventpangesture_get_delta = api_core.godot_method_bind_get_method('InputEventPanGesture', 'get_delta')
  bind_inputeventpangesture_set_delta = api_core.godot_method_bind_get_method('InputEventPanGesture', 'set_delta')

############################Generated class###################################
cdef class InputEventPanGesture(InputEventGesture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventPanGesture")())
##################################Generated Properties#########################################
  @property
  def delta(self): 
    return self.get_delta()
  @delta.setter 
  def delta(self,value): 
    self.set_delta(value)

##################################Generated Methods#########################################
  def  get_delta(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventpangesture_get_delta,self.godot_owner,[NULL,],&ret)
  def  set_delta(self, delta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventpangesture_set_delta,self.godot_owner,[NULL,],NULL)
