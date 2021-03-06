from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_touchscreenbutton__input
cdef godot_method_bind *bind_touchscreenbutton_get_action
cdef godot_method_bind *bind_touchscreenbutton_get_bitmask
cdef godot_method_bind *bind_touchscreenbutton_get_shape
cdef godot_method_bind *bind_touchscreenbutton_get_texture
cdef godot_method_bind *bind_touchscreenbutton_get_texture_pressed
cdef godot_method_bind *bind_touchscreenbutton_get_visibility_mode
cdef godot_method_bind *bind_touchscreenbutton_is_passby_press_enabled
cdef godot_method_bind *bind_touchscreenbutton_is_pressed
cdef godot_method_bind *bind_touchscreenbutton_is_shape_centered
cdef godot_method_bind *bind_touchscreenbutton_is_shape_visible
cdef godot_method_bind *bind_touchscreenbutton_set_action
cdef godot_method_bind *bind_touchscreenbutton_set_bitmask
cdef godot_method_bind *bind_touchscreenbutton_set_passby_press
cdef godot_method_bind *bind_touchscreenbutton_set_shape
cdef godot_method_bind *bind_touchscreenbutton_set_shape_centered
cdef godot_method_bind *bind_touchscreenbutton_set_shape_visible
cdef godot_method_bind *bind_touchscreenbutton_set_texture
cdef godot_method_bind *bind_touchscreenbutton_set_texture_pressed
cdef godot_method_bind *bind_touchscreenbutton_set_visibility_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_touchscreenbutton__input = api_core.godot_method_bind_get_method('TouchScreenButton', '_input')
  bind_touchscreenbutton_get_action = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_action')
  bind_touchscreenbutton_get_bitmask = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_bitmask')
  bind_touchscreenbutton_get_shape = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_shape')
  bind_touchscreenbutton_get_texture = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_texture')
  bind_touchscreenbutton_get_texture_pressed = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_texture_pressed')
  bind_touchscreenbutton_get_visibility_mode = api_core.godot_method_bind_get_method('TouchScreenButton', 'get_visibility_mode')
  bind_touchscreenbutton_is_passby_press_enabled = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_passby_press_enabled')
  bind_touchscreenbutton_is_pressed = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_pressed')
  bind_touchscreenbutton_is_shape_centered = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_shape_centered')
  bind_touchscreenbutton_is_shape_visible = api_core.godot_method_bind_get_method('TouchScreenButton', 'is_shape_visible')
  bind_touchscreenbutton_set_action = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_action')
  bind_touchscreenbutton_set_bitmask = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_bitmask')
  bind_touchscreenbutton_set_passby_press = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_passby_press')
  bind_touchscreenbutton_set_shape = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_shape')
  bind_touchscreenbutton_set_shape_centered = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_shape_centered')
  bind_touchscreenbutton_set_shape_visible = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_shape_visible')
  bind_touchscreenbutton_set_texture = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_texture')
  bind_touchscreenbutton_set_texture_pressed = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_texture_pressed')
  bind_touchscreenbutton_set_visibility_mode = api_core.godot_method_bind_get_method('TouchScreenButton', 'set_visibility_mode')

############################Generated class###################################
cdef class TouchScreenButton(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TouchScreenButton")())
##################################Generated Properties#########################################
  @property
  def action(self): 
    return self.get_action()
  @action.setter 
  def action(self,value): 
    self.set_action(value)
  @property
  def bitmask(self): 
    return self.get_bitmask()
  @bitmask.setter 
  def bitmask(self,value): 
    self.set_bitmask(value)
  @property
  def normal(self): 
    return self.get_normal()
  @normal.setter 
  def normal(self,value): 
    self.set_normal(value)
  @property
  def passby_press(self): 
    return self.get_passby_press()
  @passby_press.setter 
  def passby_press(self,value): 
    self.set_passby_press(value)
  @property
  def pressed(self): 
    return self.get_pressed()
  @pressed.setter 
  def pressed(self,value): 
    self.set_pressed(value)
  @property
  def shape(self): 
    return self.get_shape()
  @shape.setter 
  def shape(self,value): 
    self.set_shape(value)
  @property
  def shape_centered(self): 
    return self.get_shape_centered()
  @shape_centered.setter 
  def shape_centered(self,value): 
    self.set_shape_centered(value)
  @property
  def shape_visible(self): 
    return self.get_shape_visible()
  @shape_visible.setter 
  def shape_visible(self,value): 
    self.set_shape_visible(value)
  @property
  def visibility_mode(self): 
    return self.get_visibility_mode()
  @visibility_mode.setter 
  def visibility_mode(self,value): 
    self.set_visibility_mode(value)

##################################Generated Methods#########################################
  def  _input(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton__input,self.godot_owner,[NULL,],NULL)
  def  get_action(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_action,self.godot_owner,[NULL,],&ret)
  def  get_bitmask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BitMap ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_bitmask,self.godot_owner,[NULL,],&ret)
  def  get_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Shape2D ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_shape,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_texture_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_texture_pressed,self.godot_owner,[NULL,],&ret)
  def  get_visibility_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef TouchScreenButton::VisibilityMode ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_get_visibility_mode,self.godot_owner,[NULL,],&ret)
  def  is_passby_press_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_passby_press_enabled,self.godot_owner,[NULL,],&ret)
  def  is_pressed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_pressed,self.godot_owner,[NULL,],&ret)
  def  is_shape_centered(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_shape_centered,self.godot_owner,[NULL,],&ret)
  def  is_shape_visible(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_is_shape_visible,self.godot_owner,[NULL,],&ret)
  def  set_action(self, action):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_action,self.godot_owner,[NULL,],NULL)
  def  set_bitmask(self, bitmask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_bitmask,self.godot_owner,[NULL,],NULL)
  def  set_passby_press(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_passby_press,self.godot_owner,[NULL,],NULL)
  def  set_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_shape,self.godot_owner,[NULL,],NULL)
  def  set_shape_centered(self, bool):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_shape_centered,self.godot_owner,[NULL,],NULL)
  def  set_shape_visible(self, bool):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_shape_visible,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_texture_pressed(self, texture_pressed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_texture_pressed,self.godot_owner,[NULL,],NULL)
  def  set_visibility_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_touchscreenbutton_set_visibility_mode,self.godot_owner,[NULL,],NULL)
