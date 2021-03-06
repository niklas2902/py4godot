from classes.InputEvent cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventscreendrag_get_index
cdef godot_method_bind *bind_inputeventscreendrag_get_position
cdef godot_method_bind *bind_inputeventscreendrag_get_relative
cdef godot_method_bind *bind_inputeventscreendrag_get_speed
cdef godot_method_bind *bind_inputeventscreendrag_set_index
cdef godot_method_bind *bind_inputeventscreendrag_set_position
cdef godot_method_bind *bind_inputeventscreendrag_set_relative
cdef godot_method_bind *bind_inputeventscreendrag_set_speed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventscreendrag_get_index = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_index')
  bind_inputeventscreendrag_get_position = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_position')
  bind_inputeventscreendrag_get_relative = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_relative')
  bind_inputeventscreendrag_get_speed = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'get_speed')
  bind_inputeventscreendrag_set_index = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_index')
  bind_inputeventscreendrag_set_position = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_position')
  bind_inputeventscreendrag_set_relative = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_relative')
  bind_inputeventscreendrag_set_speed = api_core.godot_method_bind_get_method('InputEventScreenDrag', 'set_speed')

############################Generated class###################################
cdef class InputEventScreenDrag(InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventScreenDrag")())
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

##################################Generated Methods#########################################
  def  get_index(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_index,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_position,self.godot_owner,[NULL,],&ret)
  def  get_relative(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_relative,self.godot_owner,[NULL,],&ret)
  def  get_speed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_get_speed,self.godot_owner,[NULL,],&ret)
  def  set_index(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_index,self.godot_owner,[NULL,],NULL)
  def  set_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_position,self.godot_owner,[NULL,],NULL)
  def  set_relative(self, relative):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_relative,self.godot_owner,[NULL,],NULL)
  def  set_speed(self, speed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventscreendrag_set_speed,self.godot_owner,[NULL,],NULL)
