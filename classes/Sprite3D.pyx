from classes.SpriteBase3D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_sprite3d_get_frame
cdef godot_method_bind *bind_sprite3d_get_frame_coords
cdef godot_method_bind *bind_sprite3d_get_hframes
cdef godot_method_bind *bind_sprite3d_get_region_rect
cdef godot_method_bind *bind_sprite3d_get_texture
cdef godot_method_bind *bind_sprite3d_get_vframes
cdef godot_method_bind *bind_sprite3d_is_region
cdef godot_method_bind *bind_sprite3d_set_frame
cdef godot_method_bind *bind_sprite3d_set_frame_coords
cdef godot_method_bind *bind_sprite3d_set_hframes
cdef godot_method_bind *bind_sprite3d_set_region
cdef godot_method_bind *bind_sprite3d_set_region_rect
cdef godot_method_bind *bind_sprite3d_set_texture
cdef godot_method_bind *bind_sprite3d_set_vframes
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_sprite3d_get_frame = api_core.godot_method_bind_get_method('Sprite3D', 'get_frame')
  bind_sprite3d_get_frame_coords = api_core.godot_method_bind_get_method('Sprite3D', 'get_frame_coords')
  bind_sprite3d_get_hframes = api_core.godot_method_bind_get_method('Sprite3D', 'get_hframes')
  bind_sprite3d_get_region_rect = api_core.godot_method_bind_get_method('Sprite3D', 'get_region_rect')
  bind_sprite3d_get_texture = api_core.godot_method_bind_get_method('Sprite3D', 'get_texture')
  bind_sprite3d_get_vframes = api_core.godot_method_bind_get_method('Sprite3D', 'get_vframes')
  bind_sprite3d_is_region = api_core.godot_method_bind_get_method('Sprite3D', 'is_region')
  bind_sprite3d_set_frame = api_core.godot_method_bind_get_method('Sprite3D', 'set_frame')
  bind_sprite3d_set_frame_coords = api_core.godot_method_bind_get_method('Sprite3D', 'set_frame_coords')
  bind_sprite3d_set_hframes = api_core.godot_method_bind_get_method('Sprite3D', 'set_hframes')
  bind_sprite3d_set_region = api_core.godot_method_bind_get_method('Sprite3D', 'set_region')
  bind_sprite3d_set_region_rect = api_core.godot_method_bind_get_method('Sprite3D', 'set_region_rect')
  bind_sprite3d_set_texture = api_core.godot_method_bind_get_method('Sprite3D', 'set_texture')
  bind_sprite3d_set_vframes = api_core.godot_method_bind_get_method('Sprite3D', 'set_vframes')

############################Generated class###################################
cdef class Sprite3D(SpriteBase3D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Sprite3D")())
##################################Generated Properties#########################################
  @property
  def frame(self): 
    return self.get_frame()
  @frame.setter 
  def frame(self,value): 
    self.set_frame(value)
  @property
  def frame_coords(self): 
    return self.get_frame_coords()
  @frame_coords.setter 
  def frame_coords(self,value): 
    self.set_frame_coords(value)
  @property
  def hframes(self): 
    return self.get_hframes()
  @hframes.setter 
  def hframes(self,value): 
    self.set_hframes(value)
  @property
  def region_enabled(self): 
    return self.get_region_enabled()
  @region_enabled.setter 
  def region_enabled(self,value): 
    self.set_region_enabled(value)
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
  @property
  def vframes(self): 
    return self.get_vframes()
  @vframes.setter 
  def vframes(self,value): 
    self.set_vframes(value)

##################################Generated Methods#########################################
  def  get_frame(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_frame,self.godot_owner,[NULL,],&ret)
  def  get_frame_coords(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_frame_coords,self.godot_owner,[NULL,],&ret)
  def  get_hframes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_hframes,self.godot_owner,[NULL,],&ret)
  def  get_region_rect(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_region_rect,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_texture,self.godot_owner,[NULL,],&ret)
  def  get_vframes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_vframes,self.godot_owner,[NULL,],&ret)
  def  is_region(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_sprite3d_is_region,self.godot_owner,[NULL,],&ret)
  def  set_frame(self, frame):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_frame,self.godot_owner,[NULL,],NULL)
  def  set_frame_coords(self, coords):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_frame_coords,self.godot_owner,[NULL,],NULL)
  def  set_hframes(self, hframes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_hframes,self.godot_owner,[NULL,],NULL)
  def  set_region(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_region,self.godot_owner,[NULL,],NULL)
  def  set_region_rect(self, rect):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_region_rect,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_texture,self.godot_owner,[NULL,],NULL)
  def  set_vframes(self, vframes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_vframes,self.godot_owner,[NULL,],NULL)
