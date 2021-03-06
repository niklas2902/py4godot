from classes.InputEventMouse cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventmousemotion_get_pressure
cdef godot_method_bind *bind_inputeventmousemotion_get_relative
cdef godot_method_bind *bind_inputeventmousemotion_get_speed
cdef godot_method_bind *bind_inputeventmousemotion_get_tilt
cdef godot_method_bind *bind_inputeventmousemotion_set_pressure
cdef godot_method_bind *bind_inputeventmousemotion_set_relative
cdef godot_method_bind *bind_inputeventmousemotion_set_speed
cdef godot_method_bind *bind_inputeventmousemotion_set_tilt
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventmousemotion_get_pressure = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_pressure')
  bind_inputeventmousemotion_get_relative = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_relative')
  bind_inputeventmousemotion_get_speed = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_speed')
  bind_inputeventmousemotion_get_tilt = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'get_tilt')
  bind_inputeventmousemotion_set_pressure = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_pressure')
  bind_inputeventmousemotion_set_relative = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_relative')
  bind_inputeventmousemotion_set_speed = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_speed')
  bind_inputeventmousemotion_set_tilt = api_core.godot_method_bind_get_method('InputEventMouseMotion', 'set_tilt')

############################Generated class###################################
cdef class InputEventMouseMotion(InputEventMouse):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventMouseMotion")())
##################################Generated Properties#########################################
  @property
  def pressure(self): 
    return self.get_pressure()
  @pressure.setter 
  def pressure(self,value): 
    self.set_pressure(value)
  @property
  def relative(self): 
    return self.get_relative()
  @relative.setter 
  def relative(self,value): 
    self.set_relative(value)
  @property
  def speed(self): 
    return self.get_speed()
  @speed.setter 
  def speed(self,value): 
    self.set_speed(value)
  @property
  def tilt(self): 
    return self.get_tilt()
  @tilt.setter 
  def tilt(self,value): 
    self.set_tilt(value)

##################################Generated Methods#########################################
  def  get_pressure(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_pressure,self.godot_owner,[NULL,],&ret)
  def  get_relative(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_relative,self.godot_owner,[NULL,],&ret)
  def  get_speed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_speed,self.godot_owner,[NULL,],&ret)
  def  get_tilt(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_get_tilt,self.godot_owner,[NULL,],&ret)
  def  set_pressure(self, pressure):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_pressure,self.godot_owner,[NULL,],NULL)
  def  set_relative(self, relative):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_relative,self.godot_owner,[NULL,],NULL)
  def  set_speed(self, speed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_speed,self.godot_owner,[NULL,],NULL)
  def  set_tilt(self, tilt):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousemotion_set_tilt,self.godot_owner,[NULL,],NULL)
