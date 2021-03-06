from classes.BaseButton cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_texturebutton_get_click_mask
cdef godot_method_bind *bind_texturebutton_get_disabled_texture
cdef godot_method_bind *bind_texturebutton_get_expand
cdef godot_method_bind *bind_texturebutton_get_focused_texture
cdef godot_method_bind *bind_texturebutton_get_hover_texture
cdef godot_method_bind *bind_texturebutton_get_normal_texture
cdef godot_method_bind *bind_texturebutton_get_pressed_texture
cdef godot_method_bind *bind_texturebutton_get_stretch_mode
cdef godot_method_bind *bind_texturebutton_set_click_mask
cdef godot_method_bind *bind_texturebutton_set_disabled_texture
cdef godot_method_bind *bind_texturebutton_set_expand
cdef godot_method_bind *bind_texturebutton_set_focused_texture
cdef godot_method_bind *bind_texturebutton_set_hover_texture
cdef godot_method_bind *bind_texturebutton_set_normal_texture
cdef godot_method_bind *bind_texturebutton_set_pressed_texture
cdef godot_method_bind *bind_texturebutton_set_stretch_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_texturebutton_get_click_mask = api_core.godot_method_bind_get_method('TextureButton', 'get_click_mask')
  bind_texturebutton_get_disabled_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_disabled_texture')
  bind_texturebutton_get_expand = api_core.godot_method_bind_get_method('TextureButton', 'get_expand')
  bind_texturebutton_get_focused_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_focused_texture')
  bind_texturebutton_get_hover_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_hover_texture')
  bind_texturebutton_get_normal_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_normal_texture')
  bind_texturebutton_get_pressed_texture = api_core.godot_method_bind_get_method('TextureButton', 'get_pressed_texture')
  bind_texturebutton_get_stretch_mode = api_core.godot_method_bind_get_method('TextureButton', 'get_stretch_mode')
  bind_texturebutton_set_click_mask = api_core.godot_method_bind_get_method('TextureButton', 'set_click_mask')
  bind_texturebutton_set_disabled_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_disabled_texture')
  bind_texturebutton_set_expand = api_core.godot_method_bind_get_method('TextureButton', 'set_expand')
  bind_texturebutton_set_focused_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_focused_texture')
  bind_texturebutton_set_hover_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_hover_texture')
  bind_texturebutton_set_normal_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_normal_texture')
  bind_texturebutton_set_pressed_texture = api_core.godot_method_bind_get_method('TextureButton', 'set_pressed_texture')
  bind_texturebutton_set_stretch_mode = api_core.godot_method_bind_get_method('TextureButton', 'set_stretch_mode')

############################Generated class###################################
cdef class TextureButton(BaseButton):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TextureButton")())
##################################Generated Properties#########################################
  @property
  def expand(self): 
    return self.get_expand()
  @expand.setter 
  def expand(self,value): 
    self.set_expand(value)
  @property
  def stretch_mode(self): 
    return self.get_stretch_mode()
  @stretch_mode.setter 
  def stretch_mode(self,value): 
    self.set_stretch_mode(value)
  @property
  def texture_click_mask(self): 
    return self.get_texture_click_mask()
  @texture_click_mask.setter 
  def texture_click_mask(self,value): 
    self.set_texture_click_mask(value)
  @property
  def texture_disabled(self): 
    return self.get_texture_disabled()
  @texture_disabled.setter 
  def texture_disabled(self,value): 
    self.set_texture_disabled(value)
  @property
  def texture_focused(self): 
    return self.get_texture_focused()
  @texture_focused.setter 
  def texture_focused(self,value): 
    self.set_texture_focused(value)
  @property
  def texture_hover(self): 
    return self.get_texture_hover()
  @texture_hover.setter 
  def texture_hover(self,value): 
    self.set_texture_hover(value)
  @property
  def texture_normal(self): 
    return self.get_texture_normal()
  @texture_normal.setter 
  def texture_normal(self,value): 
    self.set_texture_normal(value)
  @property
  def texture_pressed(self): 
    return self.get_texture_pressed()
  @texture_pressed.setter 
  def texture_pressed(self,value): 
    self.set_texture_pressed(value)

##################################Generated Methods#########################################
  def  get_click_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef BitMap ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_click_mask,self.godot_owner,[NULL,],&ret)
  def  get_disabled_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_disabled_texture,self.godot_owner,[NULL,],&ret)
  def  get_expand(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_expand,self.godot_owner,[NULL,],&ret)
  def  get_focused_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_focused_texture,self.godot_owner,[NULL,],&ret)
  def  get_hover_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_hover_texture,self.godot_owner,[NULL,],&ret)
  def  get_normal_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_normal_texture,self.godot_owner,[NULL,],&ret)
  def  get_pressed_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_pressed_texture,self.godot_owner,[NULL,],&ret)
  def  get_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef TextureButton::StretchMode ret
    api_core.godot_method_bind_ptrcall(bind_texturebutton_get_stretch_mode,self.godot_owner,[NULL,],&ret)
  def  set_click_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_click_mask,self.godot_owner,[NULL,],NULL)
  def  set_disabled_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_disabled_texture,self.godot_owner,[NULL,],NULL)
  def  set_expand(self, p_expand):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_expand,self.godot_owner,[NULL,],NULL)
  def  set_focused_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_focused_texture,self.godot_owner,[NULL,],NULL)
  def  set_hover_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_hover_texture,self.godot_owner,[NULL,],NULL)
  def  set_normal_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_normal_texture,self.godot_owner,[NULL,],NULL)
  def  set_pressed_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_pressed_texture,self.godot_owner,[NULL,],NULL)
  def  set_stretch_mode(self, p_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturebutton_set_stretch_mode,self.godot_owner,[NULL,],NULL)
