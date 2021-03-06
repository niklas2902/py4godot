from classes.InputEventMouse cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventmousebutton_get_button_index
cdef godot_method_bind *bind_inputeventmousebutton_get_factor
cdef godot_method_bind *bind_inputeventmousebutton_is_doubleclick
cdef godot_method_bind *bind_inputeventmousebutton_set_button_index
cdef godot_method_bind *bind_inputeventmousebutton_set_doubleclick
cdef godot_method_bind *bind_inputeventmousebutton_set_factor
cdef godot_method_bind *bind_inputeventmousebutton_set_pressed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventmousebutton_get_button_index = api_core.godot_method_bind_get_method('InputEventMouseButton', 'get_button_index')
  bind_inputeventmousebutton_get_factor = api_core.godot_method_bind_get_method('InputEventMouseButton', 'get_factor')
  bind_inputeventmousebutton_is_doubleclick = api_core.godot_method_bind_get_method('InputEventMouseButton', 'is_doubleclick')
  bind_inputeventmousebutton_set_button_index = api_core.godot_method_bind_get_method('InputEventMouseButton', 'set_button_index')
  bind_inputeventmousebutton_set_doubleclick = api_core.godot_method_bind_get_method('InputEventMouseButton', 'set_doubleclick')
  bind_inputeventmousebutton_set_factor = api_core.godot_method_bind_get_method('InputEventMouseButton', 'set_factor')
  bind_inputeventmousebutton_set_pressed = api_core.godot_method_bind_get_method('InputEventMouseButton', 'set_pressed')

############################Generated class###################################
cdef class InputEventMouseButton(InputEventMouse):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventMouseButton")())
##################################Generated Properties#########################################
  @property
  def button_index(self): 
    return self.get_button_index()
  @button_index.setter 
  def button_index(self,value): 
    self.set_button_index(value)
  @property
  def doubleclick(self): 
    return self.get_doubleclick()
  @doubleclick.setter 
  def doubleclick(self,value): 
    self.set_doubleclick(value)
  @property
  def factor(self): 
    return self.get_factor()
  @factor.setter 
  def factor(self,value): 
    self.set_factor(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)

##################################Generated Methods#########################################
  def  get_button_index(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmousebutton_get_button_index,self.godot_owner,[NULL,],&ret)
  def  get_factor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmousebutton_get_factor,self.godot_owner,[NULL,],&ret)
  def  is_doubleclick(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_inputeventmousebutton_is_doubleclick,self.godot_owner,[NULL,],&ret)
  def  set_button_index(self, button_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousebutton_set_button_index,self.godot_owner,[NULL,],NULL)
  def  set_doubleclick(self, doubleclick):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousebutton_set_doubleclick,self.godot_owner,[NULL,],NULL)
  def  set_factor(self, factor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousebutton_set_factor,self.godot_owner,[NULL,],NULL)
  def  set_pressed(self, pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventmousebutton_set_pressed,self.godot_owner,[NULL,],NULL)
