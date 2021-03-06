from classes.Font cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_dynamicfont_add_fallback
cdef godot_method_bind *bind_dynamicfont_get_fallback
cdef godot_method_bind *bind_dynamicfont_get_fallback_count
cdef godot_method_bind *bind_dynamicfont_get_font_data
cdef godot_method_bind *bind_dynamicfont_get_outline_color
cdef godot_method_bind *bind_dynamicfont_get_outline_size
cdef godot_method_bind *bind_dynamicfont_get_size
cdef godot_method_bind *bind_dynamicfont_get_spacing
cdef godot_method_bind *bind_dynamicfont_get_use_filter
cdef godot_method_bind *bind_dynamicfont_get_use_mipmaps
cdef godot_method_bind *bind_dynamicfont_remove_fallback
cdef godot_method_bind *bind_dynamicfont_set_fallback
cdef godot_method_bind *bind_dynamicfont_set_font_data
cdef godot_method_bind *bind_dynamicfont_set_outline_color
cdef godot_method_bind *bind_dynamicfont_set_outline_size
cdef godot_method_bind *bind_dynamicfont_set_size
cdef godot_method_bind *bind_dynamicfont_set_spacing
cdef godot_method_bind *bind_dynamicfont_set_use_filter
cdef godot_method_bind *bind_dynamicfont_set_use_mipmaps
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_dynamicfont_add_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'add_fallback')
  bind_dynamicfont_get_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'get_fallback')
  bind_dynamicfont_get_fallback_count = api_core.godot_method_bind_get_method('DynamicFont', 'get_fallback_count')
  bind_dynamicfont_get_font_data = api_core.godot_method_bind_get_method('DynamicFont', 'get_font_data')
  bind_dynamicfont_get_outline_color = api_core.godot_method_bind_get_method('DynamicFont', 'get_outline_color')
  bind_dynamicfont_get_outline_size = api_core.godot_method_bind_get_method('DynamicFont', 'get_outline_size')
  bind_dynamicfont_get_size = api_core.godot_method_bind_get_method('DynamicFont', 'get_size')
  bind_dynamicfont_get_spacing = api_core.godot_method_bind_get_method('DynamicFont', 'get_spacing')
  bind_dynamicfont_get_use_filter = api_core.godot_method_bind_get_method('DynamicFont', 'get_use_filter')
  bind_dynamicfont_get_use_mipmaps = api_core.godot_method_bind_get_method('DynamicFont', 'get_use_mipmaps')
  bind_dynamicfont_remove_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'remove_fallback')
  bind_dynamicfont_set_fallback = api_core.godot_method_bind_get_method('DynamicFont', 'set_fallback')
  bind_dynamicfont_set_font_data = api_core.godot_method_bind_get_method('DynamicFont', 'set_font_data')
  bind_dynamicfont_set_outline_color = api_core.godot_method_bind_get_method('DynamicFont', 'set_outline_color')
  bind_dynamicfont_set_outline_size = api_core.godot_method_bind_get_method('DynamicFont', 'set_outline_size')
  bind_dynamicfont_set_size = api_core.godot_method_bind_get_method('DynamicFont', 'set_size')
  bind_dynamicfont_set_spacing = api_core.godot_method_bind_get_method('DynamicFont', 'set_spacing')
  bind_dynamicfont_set_use_filter = api_core.godot_method_bind_get_method('DynamicFont', 'set_use_filter')
  bind_dynamicfont_set_use_mipmaps = api_core.godot_method_bind_get_method('DynamicFont', 'set_use_mipmaps')

############################Generated class###################################
cdef class DynamicFont(Font):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("DynamicFont")())
##################################Generated Properties#########################################
  @property
  def extra_spacing_bottom(self): 
    return self.get_extra_spacing_bottom()
  @extra_spacing_bottom.setter 
  def extra_spacing_bottom(self,value): 
    self.set_extra_spacing_bottom(value)
  @property
  def extra_spacing_char(self): 
    return self.get_extra_spacing_char()
  @extra_spacing_char.setter 
  def extra_spacing_char(self,value): 
    self.set_extra_spacing_char(value)
  @property
  def extra_spacing_space(self): 
    return self.get_extra_spacing_space()
  @extra_spacing_space.setter 
  def extra_spacing_space(self,value): 
    self.set_extra_spacing_space(value)
  @property
  def extra_spacing_top(self): 
    return self.get_extra_spacing_top()
  @extra_spacing_top.setter 
  def extra_spacing_top(self,value): 
    self.set_extra_spacing_top(value)
  @property
  def font_data(self): 
    return self.get_font_data()
  @font_data.setter 
  def font_data(self,value): 
    self.set_font_data(value)
  @property
  def outline_color(self): 
    return self.get_outline_color()
  @outline_color.setter 
  def outline_color(self,value): 
    self.set_outline_color(value)
  @property
  def outline_size(self): 
    return self.get_outline_size()
  @outline_size.setter 
  def outline_size(self,value): 
    self.set_outline_size(value)
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)
  @property
  def use_filter(self): 
    return self.get_use_filter()
  @use_filter.setter 
  def use_filter(self,value): 
    self.set_use_filter(value)
  @property
  def use_mipmaps(self): 
    return self.get_use_mipmaps()
  @use_mipmaps.setter 
  def use_mipmaps(self,value): 
    self.set_use_mipmaps(value)

##################################Generated Methods#########################################
  def  add_fallback(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_add_fallback,self.godot_owner,[NULL,],NULL)
  def  get_fallback(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef DynamicFontData ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_fallback,self.godot_owner,[NULL,],&ret)
  def  get_fallback_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_fallback_count,self.godot_owner,[NULL,],&ret)
  def  get_font_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef DynamicFontData ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_font_data,self.godot_owner,[NULL,],&ret)
  def  get_outline_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_outline_color,self.godot_owner,[NULL,],&ret)
  def  get_outline_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_outline_size,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_size,self.godot_owner,[NULL,],&ret)
  def  get_spacing(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_spacing,self.godot_owner,[NULL,],&ret)
  def  get_use_filter(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_use_filter,self.godot_owner,[NULL,],&ret)
  def  get_use_mipmaps(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_get_use_mipmaps,self.godot_owner,[NULL,],&ret)
  def  remove_fallback(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_remove_fallback,self.godot_owner,[NULL,],NULL)
  def  set_fallback(self, idxdata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_fallback,self.godot_owner,[NULL,],NULL)
  def  set_font_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_font_data,self.godot_owner,[NULL,],NULL)
  def  set_outline_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_outline_color,self.godot_owner,[NULL,],NULL)
  def  set_outline_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_outline_size,self.godot_owner,[NULL,],NULL)
  def  set_size(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_size,self.godot_owner,[NULL,],NULL)
  def  set_spacing(self, typevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_spacing,self.godot_owner,[NULL,],NULL)
  def  set_use_filter(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_use_filter,self.godot_owner,[NULL,],NULL)
  def  set_use_mipmaps(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dynamicfont_set_use_mipmaps,self.godot_owner,[NULL,],NULL)
