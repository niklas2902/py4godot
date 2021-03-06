from classes.InputEventGesture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventmagnifygesture_get_factor
cdef godot_method_bind *bind_inputeventmagnifygesture_set_factor
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventmagnifygesture_get_factor = api_core.godot_method_bind_get_method('InputEventMagnifyGesture', 'get_factor')
  bind_inputeventmagnifygesture_set_factor = api_core.godot_method_bind_get_method('InputEventMagnifyGesture', 'set_factor')

############################Generated class###################################
cdef class InputEventMagnifyGesture(InputEventGesture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventMagnifyGesture")())
##################################Generated Properties#########################################
  @property
  def factor(self): 
    return self.get_factor()
  @factor.setter 
  def factor(self,value): 
    self.set_factor(value)

##################################Generated Methods#########################################
  def  get_factor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmagnifygesture_get_factor,self.godot_owner,[NULL,],&ret)
  def  set_factor(self, factor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmagnifygesture_set_factor,self.godot_owner,[NULL,],NULL)
