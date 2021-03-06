from classes.InputEvent cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventaction_get_action
cdef godot_method_bind *bind_inputeventaction_get_strength
cdef godot_method_bind *bind_inputeventaction_set_action
cdef godot_method_bind *bind_inputeventaction_set_pressed
cdef godot_method_bind *bind_inputeventaction_set_strength
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventaction_get_action = api_core.godot_method_bind_get_method('InputEventAction', 'get_action')
  bind_inputeventaction_get_strength = api_core.godot_method_bind_get_method('InputEventAction', 'get_strength')
  bind_inputeventaction_set_action = api_core.godot_method_bind_get_method('InputEventAction', 'set_action')
  bind_inputeventaction_set_pressed = api_core.godot_method_bind_get_method('InputEventAction', 'set_pressed')
  bind_inputeventaction_set_strength = api_core.godot_method_bind_get_method('InputEventAction', 'set_strength')

############################Generated class###################################
cdef class InputEventAction(InputEvent):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventAction")())
##################################Generated Properties#########################################
  @property
  def action(self): 
    return self.get_action()
  @action.setter 
  def action(self,value): 
    self.set_action(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def strength(self): 
    return self.get_strength()
  @strength.setter 
  def strength(self,value): 
    self.set_strength(value)

##################################Generated Methods#########################################
  def  get_action(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_get_action,self.godot_owner,[NULL,],&ret)
  def  get_strength(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_get_strength,self.godot_owner,[NULL,],&ret)
  def  set_action(self, action):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_set_action,self.godot_owner,[NULL,],NULL)
  def  set_pressed(self, pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_set_pressed,self.godot_owner,[NULL,],NULL)
  def  set_strength(self, strength):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventaction_set_strength,self.godot_owner,[NULL,],NULL)
