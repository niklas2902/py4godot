from classes.Range cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_textureprogress_get_fill_degrees
cdef godot_method_bind *bind_textureprogress_get_fill_mode
cdef godot_method_bind *bind_textureprogress_get_nine_patch_stretch
cdef godot_method_bind *bind_textureprogress_get_over_texture
cdef godot_method_bind *bind_textureprogress_get_progress_texture
cdef godot_method_bind *bind_textureprogress_get_radial_center_offset
cdef godot_method_bind *bind_textureprogress_get_radial_initial_angle
cdef godot_method_bind *bind_textureprogress_get_stretch_margin
cdef godot_method_bind *bind_textureprogress_get_tint_over
cdef godot_method_bind *bind_textureprogress_get_tint_progress
cdef godot_method_bind *bind_textureprogress_get_tint_under
cdef godot_method_bind *bind_textureprogress_get_under_texture
cdef godot_method_bind *bind_textureprogress_set_fill_degrees
cdef godot_method_bind *bind_textureprogress_set_fill_mode
cdef godot_method_bind *bind_textureprogress_set_nine_patch_stretch
cdef godot_method_bind *bind_textureprogress_set_over_texture
cdef godot_method_bind *bind_textureprogress_set_progress_texture
cdef godot_method_bind *bind_textureprogress_set_radial_center_offset
cdef godot_method_bind *bind_textureprogress_set_radial_initial_angle
cdef godot_method_bind *bind_textureprogress_set_stretch_margin
cdef godot_method_bind *bind_textureprogress_set_tint_over
cdef godot_method_bind *bind_textureprogress_set_tint_progress
cdef godot_method_bind *bind_textureprogress_set_tint_under
cdef godot_method_bind *bind_textureprogress_set_under_texture
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_textureprogress_get_fill_degrees = api_core.godot_method_bind_get_method('TextureProgress', 'get_fill_degrees')
  bind_textureprogress_get_fill_mode = api_core.godot_method_bind_get_method('TextureProgress', 'get_fill_mode')
  bind_textureprogress_get_nine_patch_stretch = api_core.godot_method_bind_get_method('TextureProgress', 'get_nine_patch_stretch')
  bind_textureprogress_get_over_texture = api_core.godot_method_bind_get_method('TextureProgress', 'get_over_texture')
  bind_textureprogress_get_progress_texture = api_core.godot_method_bind_get_method('TextureProgress', 'get_progress_texture')
  bind_textureprogress_get_radial_center_offset = api_core.godot_method_bind_get_method('TextureProgress', 'get_radial_center_offset')
  bind_textureprogress_get_radial_initial_angle = api_core.godot_method_bind_get_method('TextureProgress', 'get_radial_initial_angle')
  bind_textureprogress_get_stretch_margin = api_core.godot_method_bind_get_method('TextureProgress', 'get_stretch_margin')
  bind_textureprogress_get_tint_over = api_core.godot_method_bind_get_method('TextureProgress', 'get_tint_over')
  bind_textureprogress_get_tint_progress = api_core.godot_method_bind_get_method('TextureProgress', 'get_tint_progress')
  bind_textureprogress_get_tint_under = api_core.godot_method_bind_get_method('TextureProgress', 'get_tint_under')
  bind_textureprogress_get_under_texture = api_core.godot_method_bind_get_method('TextureProgress', 'get_under_texture')
  bind_textureprogress_set_fill_degrees = api_core.godot_method_bind_get_method('TextureProgress', 'set_fill_degrees')
  bind_textureprogress_set_fill_mode = api_core.godot_method_bind_get_method('TextureProgress', 'set_fill_mode')
  bind_textureprogress_set_nine_patch_stretch = api_core.godot_method_bind_get_method('TextureProgress', 'set_nine_patch_stretch')
  bind_textureprogress_set_over_texture = api_core.godot_method_bind_get_method('TextureProgress', 'set_over_texture')
  bind_textureprogress_set_progress_texture = api_core.godot_method_bind_get_method('TextureProgress', 'set_progress_texture')
  bind_textureprogress_set_radial_center_offset = api_core.godot_method_bind_get_method('TextureProgress', 'set_radial_center_offset')
  bind_textureprogress_set_radial_initial_angle = api_core.godot_method_bind_get_method('TextureProgress', 'set_radial_initial_angle')
  bind_textureprogress_set_stretch_margin = api_core.godot_method_bind_get_method('TextureProgress', 'set_stretch_margin')
  bind_textureprogress_set_tint_over = api_core.godot_method_bind_get_method('TextureProgress', 'set_tint_over')
  bind_textureprogress_set_tint_progress = api_core.godot_method_bind_get_method('TextureProgress', 'set_tint_progress')
  bind_textureprogress_set_tint_under = api_core.godot_method_bind_get_method('TextureProgress', 'set_tint_under')
  bind_textureprogress_set_under_texture = api_core.godot_method_bind_get_method('TextureProgress', 'set_under_texture')

############################Generated class###################################
cdef class TextureProgress(Range):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TextureProgress")())
##################################Generated Properties#########################################
  @property
  def fill_mode(self): 
    return self.get_fill_mode()
  @fill_mode.setter 
  def fill_mode(self,value): 
    self.set_fill_mode(value)
  @property
  def nine_patch_stretch(self): 
    return self.get_nine_patch_stretch()
  @nine_patch_stretch.setter 
  def nine_patch_stretch(self,value): 
    self.set_nine_patch_stretch(value)
  @property
  def radial_center_offset(self): 
    return self.get_radial_center_offset()
  @radial_center_offset.setter 
  def radial_center_offset(self,value): 
    self.set_radial_center_offset(value)
  @property
  def radial_fill_degrees(self): 
    return self.get_radial_fill_degrees()
  @radial_fill_degrees.setter 
  def radial_fill_degrees(self,value): 
    self.set_radial_fill_degrees(value)
  @property
  def radial_initial_angle(self): 
    return self.get_radial_initial_angle()
  @radial_initial_angle.setter 
  def radial_initial_angle(self,value): 
    self.set_radial_initial_angle(value)
  @property
  def stretch_margin_bottom(self): 
    return self.get_stretch_margin_bottom()
  @stretch_margin_bottom.setter 
  def stretch_margin_bottom(self,value): 
    self.set_stretch_margin_bottom(value)
  @property
  def stretch_margin_left(self): 
    return self.get_stretch_margin_left()
  @stretch_margin_left.setter 
  def stretch_margin_left(self,value): 
    self.set_stretch_margin_left(value)
  @property
  def stretch_margin_right(self): 
    return self.get_stretch_margin_right()
  @stretch_margin_right.setter 
  def stretch_margin_right(self,value): 
    self.set_stretch_margin_right(value)
  @property
  def stretch_margin_top(self): 
    return self.get_stretch_margin_top()
  @stretch_margin_top.setter 
  def stretch_margin_top(self,value): 
    self.set_stretch_margin_top(value)
  @property
  def texture_over(self): 
    return self.get_texture_over()
  @texture_over.setter 
  def texture_over(self,value): 
    self.set_texture_over(value)
  @property
  def texture_progress(self): 
    return self.get_texture_progress()
  @texture_progress.setter 
  def texture_progress(self,value): 
    self.set_texture_progress(value)
  @property
  def texture_under(self): 
    return self.get_texture_under()
  @texture_under.setter 
  def texture_under(self,value): 
    self.set_texture_under(value)
  @property
  def tint_over(self): 
    return self.get_tint_over()
  @tint_over.setter 
  def tint_over(self,value): 
    self.set_tint_over(value)
  @property
  def tint_progress(self): 
    return self.get_tint_progress()
  @tint_progress.setter 
  def tint_progress(self,value): 
    self.set_tint_progress(value)
  @property
  def tint_under(self): 
    return self.get_tint_under()
  @tint_under.setter 
  def tint_under(self,value): 
    self.set_tint_under(value)

##################################Generated Methods#########################################
  def  get_fill_degrees(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_fill_degrees,self.godot_owner,[NULL,],&ret)
  def  get_fill_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_fill_mode,self.godot_owner,[NULL,],&ret)
  def  get_nine_patch_stretch(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_nine_patch_stretch,self.godot_owner,[NULL,],&ret)
  def  get_over_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_over_texture,self.godot_owner,[NULL,],&ret)
  def  get_progress_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_progress_texture,self.godot_owner,[NULL,],&ret)
  def  get_radial_center_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_radial_center_offset,self.godot_owner,[NULL,],&ret)
  def  get_radial_initial_angle(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_radial_initial_angle,self.godot_owner,[NULL,],&ret)
  def  get_stretch_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_stretch_margin,self.godot_owner,[NULL,],&ret)
  def  get_tint_over(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_tint_over,self.godot_owner,[NULL,],&ret)
  def  get_tint_progress(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_tint_progress,self.godot_owner,[NULL,],&ret)
  def  get_tint_under(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_tint_under,self.godot_owner,[NULL,],&ret)
  def  get_under_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_textureprogress_get_under_texture,self.godot_owner,[NULL,],&ret)
  def  set_fill_degrees(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_fill_degrees,self.godot_owner,[NULL,],NULL)
  def  set_fill_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_fill_mode,self.godot_owner,[NULL,],NULL)
  def  set_nine_patch_stretch(self, stretch):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_nine_patch_stretch,self.godot_owner,[NULL,],NULL)
  def  set_over_texture(self, tex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_over_texture,self.godot_owner,[NULL,],NULL)
  def  set_progress_texture(self, tex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_progress_texture,self.godot_owner,[NULL,],NULL)
  def  set_radial_center_offset(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_radial_center_offset,self.godot_owner,[NULL,],NULL)
  def  set_radial_initial_angle(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_radial_initial_angle,self.godot_owner,[NULL,],NULL)
  def  set_stretch_margin(self, marginvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_stretch_margin,self.godot_owner,[NULL,],NULL)
  def  set_tint_over(self, tint):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_tint_over,self.godot_owner,[NULL,],NULL)
  def  set_tint_progress(self, tint):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_tint_progress,self.godot_owner,[NULL,],NULL)
  def  set_tint_under(self, tint):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_tint_under,self.godot_owner,[NULL,],NULL)
  def  set_under_texture(self, tex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_textureprogress_set_under_texture,self.godot_owner,[NULL,],NULL)
