from classes.Control cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_ninepatchrect_get_h_axis_stretch_mode
cdef godot_method_bind *bind_ninepatchrect_get_patch_margin
cdef godot_method_bind *bind_ninepatchrect_get_region_rect
cdef godot_method_bind *bind_ninepatchrect_get_texture
cdef godot_method_bind *bind_ninepatchrect_get_v_axis_stretch_mode
cdef godot_method_bind *bind_ninepatchrect_is_draw_center_enabled
cdef godot_method_bind *bind_ninepatchrect_set_draw_center
cdef godot_method_bind *bind_ninepatchrect_set_h_axis_stretch_mode
cdef godot_method_bind *bind_ninepatchrect_set_patch_margin
cdef godot_method_bind *bind_ninepatchrect_set_region_rect
cdef godot_method_bind *bind_ninepatchrect_set_texture
cdef godot_method_bind *bind_ninepatchrect_set_v_axis_stretch_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_ninepatchrect_get_h_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'get_h_axis_stretch_mode')
  bind_ninepatchrect_get_patch_margin = api_core.godot_method_bind_get_method('NinePatchRect', 'get_patch_margin')
  bind_ninepatchrect_get_region_rect = api_core.godot_method_bind_get_method('NinePatchRect', 'get_region_rect')
  bind_ninepatchrect_get_texture = api_core.godot_method_bind_get_method('NinePatchRect', 'get_texture')
  bind_ninepatchrect_get_v_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'get_v_axis_stretch_mode')
  bind_ninepatchrect_is_draw_center_enabled = api_core.godot_method_bind_get_method('NinePatchRect', 'is_draw_center_enabled')
  bind_ninepatchrect_set_draw_center = api_core.godot_method_bind_get_method('NinePatchRect', 'set_draw_center')
  bind_ninepatchrect_set_h_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'set_h_axis_stretch_mode')
  bind_ninepatchrect_set_patch_margin = api_core.godot_method_bind_get_method('NinePatchRect', 'set_patch_margin')
  bind_ninepatchrect_set_region_rect = api_core.godot_method_bind_get_method('NinePatchRect', 'set_region_rect')
  bind_ninepatchrect_set_texture = api_core.godot_method_bind_get_method('NinePatchRect', 'set_texture')
  bind_ninepatchrect_set_v_axis_stretch_mode = api_core.godot_method_bind_get_method('NinePatchRect', 'set_v_axis_stretch_mode')

############################Generated class###################################
cdef class NinePatchRect(Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NinePatchRect")())
##################################Generated Properties#########################################
  @property
  def axis_stretch_horizontal(self): 
    return self.get_axis_stretch_horizontal()
  @axis_stretch_horizontal.setter 
  def axis_stretch_horizontal(self,value): 
    self.set_axis_stretch_horizontal(value)
  @property
  def axis_stretch_vertical(self): 
    return self.get_axis_stretch_vertical()
  @axis_stretch_vertical.setter 
  def axis_stretch_vertical(self,value): 
    self.set_axis_stretch_vertical(value)
  @property
  def draw_center(self): 
    return self.get_draw_center()
  @draw_center.setter 
  def draw_center(self,value): 
    self.set_draw_center(value)
  @property
  def patch_margin_bottom(self): 
    return self.get_patch_margin_bottom()
  @patch_margin_bottom.setter 
  def patch_margin_bottom(self,value): 
    self.set_patch_margin_bottom(value)
  @property
  def patch_margin_left(self): 
    return self.get_patch_margin_left()
  @patch_margin_left.setter 
  def patch_margin_left(self,value): 
    self.set_patch_margin_left(value)
  @property
  def patch_margin_right(self): 
    return self.get_patch_margin_right()
  @patch_margin_right.setter 
  def patch_margin_right(self,value): 
    self.set_patch_margin_right(value)
  @property
  def patch_margin_top(self): 
    return self.get_patch_margin_top()
  @patch_margin_top.setter 
  def patch_margin_top(self,value): 
    self.set_patch_margin_top(value)
  @property
  def region_rect(self): 
    return self.get_region_rect()
  @region_rect.setter 
  def region_rect(self,value): 
    self.set_region_rect(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)

##################################Generated Methods#########################################
  def  get_h_axis_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NinePatchRect::AxisStretchMode ret
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_h_axis_stretch_mode,self.godot_owner,[NULL,],&ret)
  def  get_patch_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_patch_margin,self.godot_owner,[NULL,],&ret)
  def  get_region_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_region_rect,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_v_axis_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NinePatchRect::AxisStretchMode ret
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_get_v_axis_stretch_mode,self.godot_owner,[NULL,],&ret)
  def  is_draw_center_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_is_draw_center_enabled,self.godot_owner,[NULL,],&ret)
  def  set_draw_center(self, draw_center):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_draw_center,self.godot_owner,[NULL,],NULL)
  def  set_h_axis_stretch_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_h_axis_stretch_mode,self.godot_owner,[NULL,],NULL)
  def  set_patch_margin(self, marginvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_patch_margin,self.godot_owner,[NULL,],NULL)
  def  set_region_rect(self, rect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_region_rect,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_v_axis_stretch_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ninepatchrect_set_v_axis_stretch_mode,self.godot_owner,[NULL,],NULL)
