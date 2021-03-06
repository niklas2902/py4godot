from classes.InputEvent cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventscreentouch_get_index
cdef godot_method_bind *bind_inputeventscreentouch_get_position
cdef godot_method_bind *bind_inputeventscreentouch_set_index
cdef godot_method_bind *bind_inputeventscreentouch_set_position
cdef godot_method_bind *bind_inputeventscreentouch_set_pressed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventscreentouch_get_index = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'get_index')
  bind_inputeventscreentouch_get_position = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'get_position')
  bind_inputeventscreentouch_set_index = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'set_index')
  bind_inputeventscreentouch_set_position = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'set_position')
  bind_inputeventscreentouch_set_pressed = api_core.godot_method_bind_get_method('InputEventScreenTouch', 'set_pressed')

############################Generated class###################################
cdef class InputEventScreenTouch(InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventScreenTouch")())
##################################Generated Properties#########################################
  @property
  def index(self): 
    return self.get_index()
  @index.setter 
  def index(self,value): 
    self.set_index(value)
  @property
  def position(self): 
    return self.get_position()
  @position.setter 
  def position(self,value): 
    self.set_position(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)

##################################Generated Methods#########################################
  def  get_index(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_get_index,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_get_position,self.godot_owner,[NULL,],&ret)
  def  set_index(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_set_index,self.godot_owner,[NULL,],NULL)
  def  set_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_set_position,self.godot_owner,[NULL,],NULL)
  def  set_pressed(self, pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventscreentouch_set_pressed,self.godot_owner,[NULL,],NULL)
