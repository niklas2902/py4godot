from classes.InputEvent cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventjoypadbutton_get_button_index
cdef godot_method_bind *bind_inputeventjoypadbutton_get_pressure
cdef godot_method_bind *bind_inputeventjoypadbutton_set_button_index
cdef godot_method_bind *bind_inputeventjoypadbutton_set_pressed
cdef godot_method_bind *bind_inputeventjoypadbutton_set_pressure
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventjoypadbutton_get_button_index = api_core.godot_method_bind_get_method('InputEventJoypadButton', 'get_button_index')
  bind_inputeventjoypadbutton_get_pressure = api_core.godot_method_bind_get_method('InputEventJoypadButton', 'get_pressure')
  bind_inputeventjoypadbutton_set_button_index = api_core.godot_method_bind_get_method('InputEventJoypadButton', 'set_button_index')
  bind_inputeventjoypadbutton_set_pressed = api_core.godot_method_bind_get_method('InputEventJoypadButton', 'set_pressed')
  bind_inputeventjoypadbutton_set_pressure = api_core.godot_method_bind_get_method('InputEventJoypadButton', 'set_pressure')

############################Generated class###################################
cdef class InputEventJoypadButton(InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventJoypadButton")())
##################################Generated Properties#########################################
  @property
  def button_index(self): 
    return self.get_button_index()
  @button_index.setter 
  def button_index(self,value): 
    self.set_button_index(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def pressure(self): 
    return self.get_pressure()
  @pressure.setter 
  def pressure(self,value): 
    self.set_pressure(value)

##################################Generated Methods#########################################
  def  get_button_index(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadbutton_get_button_index,self.godot_owner,[NULL,],&ret)
  def  get_pressure(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadbutton_get_pressure,self.godot_owner,[NULL,],&ret)
  def  set_button_index(self, button_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadbutton_set_button_index,self.godot_owner,[NULL,],NULL)
  def  set_pressed(self, pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadbutton_set_pressed,self.godot_owner,[NULL,],NULL)
  def  set_pressure(self, pressure):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventjoypadbutton_set_pressure,self.godot_owner,[NULL,],NULL)
