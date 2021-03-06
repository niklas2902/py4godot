from classes.GeometryInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spritebase3d__im_update
cdef godot_method_bind *bind_spritebase3d__queue_update
cdef godot_method_bind *bind_spritebase3d_generate_triangle_mesh
cdef godot_method_bind *bind_spritebase3d_get_alpha_cut_mode
cdef godot_method_bind *bind_spritebase3d_get_axis
cdef godot_method_bind *bind_spritebase3d_get_billboard_mode
cdef godot_method_bind *bind_spritebase3d_get_draw_flag
cdef godot_method_bind *bind_spritebase3d_get_item_rect
cdef godot_method_bind *bind_spritebase3d_get_modulate
cdef godot_method_bind *bind_spritebase3d_get_offset
cdef godot_method_bind *bind_spritebase3d_get_opacity
cdef godot_method_bind *bind_spritebase3d_get_pixel_size
cdef godot_method_bind *bind_spritebase3d_is_centered
cdef godot_method_bind *bind_spritebase3d_is_flipped_h
cdef godot_method_bind *bind_spritebase3d_is_flipped_v
cdef godot_method_bind *bind_spritebase3d_set_alpha_cut_mode
cdef godot_method_bind *bind_spritebase3d_set_axis
cdef godot_method_bind *bind_spritebase3d_set_billboard_mode
cdef godot_method_bind *bind_spritebase3d_set_centered
cdef godot_method_bind *bind_spritebase3d_set_draw_flag
cdef godot_method_bind *bind_spritebase3d_set_flip_h
cdef godot_method_bind *bind_spritebase3d_set_flip_v
cdef godot_method_bind *bind_spritebase3d_set_modulate
cdef godot_method_bind *bind_spritebase3d_set_offset
cdef godot_method_bind *bind_spritebase3d_set_opacity
cdef godot_method_bind *bind_spritebase3d_set_pixel_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spritebase3d__im_update = api_core.godot_method_bind_get_method('SpriteBase3D', '_im_update')
  bind_spritebase3d__queue_update = api_core.godot_method_bind_get_method('SpriteBase3D', '_queue_update')
  bind_spritebase3d_generate_triangle_mesh = api_core.godot_method_bind_get_method('SpriteBase3D', 'generate_triangle_mesh')
  bind_spritebase3d_get_alpha_cut_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_alpha_cut_mode')
  bind_spritebase3d_get_axis = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_axis')
  bind_spritebase3d_get_billboard_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_billboard_mode')
  bind_spritebase3d_get_draw_flag = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_draw_flag')
  bind_spritebase3d_get_item_rect = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_item_rect')
  bind_spritebase3d_get_modulate = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_modulate')
  bind_spritebase3d_get_offset = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_offset')
  bind_spritebase3d_get_opacity = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_opacity')
  bind_spritebase3d_get_pixel_size = api_core.godot_method_bind_get_method('SpriteBase3D', 'get_pixel_size')
  bind_spritebase3d_is_centered = api_core.godot_method_bind_get_method('SpriteBase3D', 'is_centered')
  bind_spritebase3d_is_flipped_h = api_core.godot_method_bind_get_method('SpriteBase3D', 'is_flipped_h')
  bind_spritebase3d_is_flipped_v = api_core.godot_method_bind_get_method('SpriteBase3D', 'is_flipped_v')
  bind_spritebase3d_set_alpha_cut_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_alpha_cut_mode')
  bind_spritebase3d_set_axis = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_axis')
  bind_spritebase3d_set_billboard_mode = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_billboard_mode')
  bind_spritebase3d_set_centered = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_centered')
  bind_spritebase3d_set_draw_flag = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_draw_flag')
  bind_spritebase3d_set_flip_h = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_flip_h')
  bind_spritebase3d_set_flip_v = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_flip_v')
  bind_spritebase3d_set_modulate = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_modulate')
  bind_spritebase3d_set_offset = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_offset')
  bind_spritebase3d_set_opacity = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_opacity')
  bind_spritebase3d_set_pixel_size = api_core.godot_method_bind_get_method('SpriteBase3D', 'set_pixel_size')

############################Generated class###################################
cdef class SpriteBase3D(GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpriteBase3D")())
##################################Generated Properties#########################################
  @property
  def alpha_cut(self): 
    return self.get_alpha_cut()
  @alpha_cut.setter 
  def alpha_cut(self,value): 
    self.set_alpha_cut(value)
  @property
  def axis(self): 
    return self.get_axis()
  @axis.setter 
  def axis(self,value): 
    self.set_axis(value)
  @property
  def billboard(self): 
    return self.get_billboard()
  @billboard.setter 
  def billboard(self,value): 
    self.set_billboard(value)
  @property
  def centered(self): 
    return self.get_centered()
  @centered.setter 
  def centered(self,value): 
    self.set_centered(value)
  @property
  def double_sided(self): 
    return self.get_double_sided()
  @double_sided.setter 
  def double_sided(self,value): 
    self.set_double_sided(value)
  @property
  def flip_h(self): 
    return self.get_flip_h()
  @flip_h.setter 
  def flip_h(self,value): 
    self.set_flip_h(value)
  @property
  def flip_v(self): 
    return self.get_flip_v()
  @flip_v.setter 
  def flip_v(self,value): 
    self.set_flip_v(value)
  @property
  def modulate(self): 
    return self.get_modulate()
  @modulate.setter 
  def modulate(self,value): 
    self.set_modulate(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def opacity(self): 
    return self.get_opacity()
  @opacity.setter 
  def opacity(self,value): 
    self.set_opacity(value)
  @property
  def pixel_size(self): 
    return self.get_pixel_size()
  @pixel_size.setter 
  def pixel_size(self,value): 
    self.set_pixel_size(value)
  @property
  def shaded(self): 
    return self.get_shaded()
  @shaded.setter 
  def shaded(self,value): 
    self.set_shaded(value)
  @property
  def transparent(self): 
    return self.get_transparent()
  @transparent.setter 
  def transparent(self,value): 
    self.set_transparent(value)

##################################Generated Methods#########################################
  def  _im_update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d__im_update,self.godot_owner,[NULL,],NULL)
  def  _queue_update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d__queue_update,self.godot_owner,[NULL,],NULL)
  def  generate_triangle_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef TriangleMesh ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_generate_triangle_mesh,self.godot_owner,[NULL,],&ret)
  def  get_alpha_cut_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpriteBase3D::AlphaCutMode ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_alpha_cut_mode,self.godot_owner,[NULL,],&ret)
  def  get_axis(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3::Axis ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_axis,self.godot_owner,[NULL,],&ret)
  def  get_billboard_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef SpatialMaterial::BillboardMode ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_billboard_mode,self.godot_owner,[NULL,],&ret)
  def  get_draw_flag(self, flag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_draw_flag,self.godot_owner,[NULL,],&ret)
  def  get_item_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_item_rect,self.godot_owner,[NULL,],&ret)
  def  get_modulate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_modulate,self.godot_owner,[NULL,],&ret)
  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_offset,self.godot_owner,[NULL,],&ret)
  def  get_opacity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_opacity,self.godot_owner,[NULL,],&ret)
  def  get_pixel_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_get_pixel_size,self.godot_owner,[NULL,],&ret)
  def  is_centered(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_is_centered,self.godot_owner,[NULL,],&ret)
  def  is_flipped_h(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_is_flipped_h,self.godot_owner,[NULL,],&ret)
  def  is_flipped_v(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_is_flipped_v,self.godot_owner,[NULL,],&ret)
  def  set_alpha_cut_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_alpha_cut_mode,self.godot_owner,[NULL,],NULL)
  def  set_axis(self, axis):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_axis,self.godot_owner,[NULL,],NULL)
  def  set_billboard_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_billboard_mode,self.godot_owner,[NULL,],NULL)
  def  set_centered(self, centered):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_centered,self.godot_owner,[NULL,],NULL)
  def  set_draw_flag(self, flagenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_draw_flag,self.godot_owner,[NULL,],NULL)
  def  set_flip_h(self, flip_h):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_flip_h,self.godot_owner,[NULL,],NULL)
  def  set_flip_v(self, flip_v):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_flip_v,self.godot_owner,[NULL,],NULL)
  def  set_modulate(self, modulate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_modulate,self.godot_owner,[NULL,],NULL)
  def  set_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_offset,self.godot_owner,[NULL,],NULL)
  def  set_opacity(self, opacity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_opacity,self.godot_owner,[NULL,],NULL)
  def  set_pixel_size(self, pixel_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spritebase3d_set_pixel_size,self.godot_owner,[NULL,],NULL)
