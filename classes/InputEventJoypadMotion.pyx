from classes.InputEvent cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventjoypadmotion_get_axis
cdef godot_method_bind *bind_inputeventjoypadmotion_get_axis_value
cdef godot_method_bind *bind_inputeventjoypadmotion_set_axis
cdef godot_method_bind *bind_inputeventjoypadmotion_set_axis_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventjoypadmotion_get_axis = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'get_axis')
  bind_inputeventjoypadmotion_get_axis_value = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'get_axis_value')
  bind_inputeventjoypadmotion_set_axis = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'set_axis')
  bind_inputeventjoypadmotion_set_axis_value = api_core.godot_method_bind_get_method('InputEventJoypadMotion', 'set_axis_value')

############################Generated class###################################
cdef class InputEventJoypadMotion(InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventJoypadMotion")())
##################################Generated Properties#########################################
  @property
  def axis(self): 
    return self.get_axis()
  @axis.setter 
  def axis(self,value): 
    self.set_axis(value)
  @property
  def axis_value(self): 
    return self.get_axis_value()
  @axis_value.setter 
  def axis_value(self,value): 
    self.set_axis_value(value)

##################################Generated Methods#########################################
  def  get_axis(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_get_axis,self.godot_owner,[NULL,],&ret)
  def  get_axis_value(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_get_axis_value,self.godot_owner,[NULL,],&ret)
  def  set_axis(self, axis):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_set_axis,self.godot_owner,[NULL,],NULL)
  def  set_axis_value(self, axis_value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadmotion_set_axis_value,self.godot_owner,[NULL,],NULL)
