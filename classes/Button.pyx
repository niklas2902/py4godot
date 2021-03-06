from classes.BaseButton cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_button_get_button_icon
cdef godot_method_bind *bind_button_get_clip_text
cdef godot_method_bind *bind_button_get_text
cdef godot_method_bind *bind_button_get_text_align
cdef godot_method_bind *bind_button_is_expand_icon
cdef godot_method_bind *bind_button_is_flat
cdef godot_method_bind *bind_button_set_button_icon
cdef godot_method_bind *bind_button_set_clip_text
cdef godot_method_bind *bind_button_set_expand_icon
cdef godot_method_bind *bind_button_set_flat
cdef godot_method_bind *bind_button_set_text
cdef godot_method_bind *bind_button_set_text_align
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_button_get_button_icon = api_core.godot_method_bind_get_method('Button', 'get_button_icon')
  bind_button_get_clip_text = api_core.godot_method_bind_get_method('Button', 'get_clip_text')
  bind_button_get_text = api_core.godot_method_bind_get_method('Button', 'get_text')
  bind_button_get_text_align = api_core.godot_method_bind_get_method('Button', 'get_text_align')
  bind_button_is_expand_icon = api_core.godot_method_bind_get_method('Button', 'is_expand_icon')
  bind_button_is_flat = api_core.godot_method_bind_get_method('Button', 'is_flat')
  bind_button_set_button_icon = api_core.godot_method_bind_get_method('Button', 'set_button_icon')
  bind_button_set_clip_text = api_core.godot_method_bind_get_method('Button', 'set_clip_text')
  bind_button_set_expand_icon = api_core.godot_method_bind_get_method('Button', 'set_expand_icon')
  bind_button_set_flat = api_core.godot_method_bind_get_method('Button', 'set_flat')
  bind_button_set_text = api_core.godot_method_bind_get_method('Button', 'set_text')
  bind_button_set_text_align = api_core.godot_method_bind_get_method('Button', 'set_text_align')

############################Generated class###################################
cdef class Button(BaseButton):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Button")())
##################################Generated Properties#########################################
  @property
  def align(self): 
    return self.get_align()
  @align.setter 
  def align(self,value): 
    self.set_align(value)
  @property
  def clip_text(self): 
    return self.get_clip_text()
  @clip_text.setter 
  def clip_text(self,value): 
    self.set_clip_text(value)
  @property
  def expand_icon(self): 
    return self.get_expand_icon()
  @expand_icon.setter 
  def expand_icon(self,value): 
    self.set_expand_icon(value)
  @property
  def flat(self): 
    return self.get_flat()
  @flat.setter 
  def flat(self,value): 
    self.set_flat(value)
  @property
  def icon(self): 
    return self.get_icon()
  @icon.setter 
  def icon(self,value): 
    self.set_icon(value)
  @property
  def text(self): 
    return self.get_text()
  @text.setter 
  def text(self,value): 
    self.set_text(value)

##################################Generated Methods#########################################
  def  get_button_icon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_button_get_button_icon,self.godot_owner,[NULL,],&ret)
  def  get_clip_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_button_get_clip_text,self.godot_owner,[NULL,],&ret)
  def  get_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_button_get_text,self.godot_owner,[NULL,],&ret)
  def  get_text_align(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Button::TextAlign ret
    api_core.godot_method_bind_ptrcall(bind_button_get_text_align,self.godot_owner,[NULL,],&ret)
  def  is_expand_icon(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_button_is_expand_icon,self.godot_owner,[NULL,],&ret)
  def  is_flat(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_button_is_flat,self.godot_owner,[NULL,],&ret)
  def  set_button_icon(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_button_set_button_icon,self.godot_owner,[NULL,],NULL)
  def  set_clip_text(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_button_set_clip_text,self.godot_owner,[NULL,],NULL)
  def  set_expand_icon(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_button_set_expand_icon,self.godot_owner,[NULL,],NULL)
  def  set_flat(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_button_set_flat,self.godot_owner,[NULL,],NULL)
  def  set_text(self, text):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_button_set_text,self.godot_owner,[NULL,],NULL)
  def  set_text_align(self, align):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_button_set_text_align,self.godot_owner,[NULL,],NULL)
