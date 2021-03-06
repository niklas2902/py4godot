from classes.InputEventWithModifiers cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_inputeventkey_get_scancode
cdef godot_method_bind *bind_inputeventkey_get_scancode_with_modifiers
cdef godot_method_bind *bind_inputeventkey_get_unicode
cdef godot_method_bind *bind_inputeventkey_set_echo
cdef godot_method_bind *bind_inputeventkey_set_pressed
cdef godot_method_bind *bind_inputeventkey_set_scancode
cdef godot_method_bind *bind_inputeventkey_set_unicode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_inputeventkey_get_scancode = api_core.godot_method_bind_get_method('InputEventKey', 'get_scancode')
  bind_inputeventkey_get_scancode_with_modifiers = api_core.godot_method_bind_get_method('InputEventKey', 'get_scancode_with_modifiers')
  bind_inputeventkey_get_unicode = api_core.godot_method_bind_get_method('InputEventKey', 'get_unicode')
  bind_inputeventkey_set_echo = api_core.godot_method_bind_get_method('InputEventKey', 'set_echo')
  bind_inputeventkey_set_pressed = api_core.godot_method_bind_get_method('InputEventKey', 'set_pressed')
  bind_inputeventkey_set_scancode = api_core.godot_method_bind_get_method('InputEventKey', 'set_scancode')
  bind_inputeventkey_set_unicode = api_core.godot_method_bind_get_method('InputEventKey', 'set_unicode')

############################Generated class###################################
cdef class InputEventKey(InputEventWithModifiers):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InputEventKey")())
##################################Generated Properties#########################################
  @property
  def echo(self): 
    return self.get_echo()
  @echo.setter 
  def echo(self,value): 
    self.set_echo(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def scancode(self): 
    return self.get_scancode()
  @scancode.setter 
  def scancode(self,value): 
    self.set_scancode(value)
  @property
  def unicode(self): 
    return self.get_unicode()
  @unicode.setter 
  def unicode(self,value): 
    self.set_unicode(value)

##################################Generated Methods#########################################
  def  get_scancode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_get_scancode,self.godot_owner,[NULL,],&ret)
  def  get_scancode_with_modifiers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_get_scancode_with_modifiers,self.godot_owner,[NULL,],&ret)
  def  get_unicode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_get_unicode,self.godot_owner,[NULL,],&ret)
  def  set_echo(self, echo):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_echo,self.godot_owner,[NULL,],NULL)
  def  set_pressed(self, pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_pressed,self.godot_owner,[NULL,],NULL)
  def  set_scancode(self, scancode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_scancode,self.godot_owner,[NULL,],NULL)
  def  set_unicode(self, unicode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_inputeventkey_set_unicode,self.godot_owner,[NULL,],NULL)
