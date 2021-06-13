
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Texture
cimport classes.Texture
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_sprite__texture_changed
cdef godot_method_bind *bind_sprite_get_frame
cdef godot_method_bind *bind_sprite_get_frame_coords
cdef godot_method_bind *bind_sprite_get_hframes
cdef godot_method_bind *bind_sprite_get_normal_map
cdef godot_method_bind *bind_sprite_get_offset
cdef godot_method_bind *bind_sprite_get_rect
cdef godot_method_bind *bind_sprite_get_region_rect
cdef godot_method_bind *bind_sprite_get_texture
cdef godot_method_bind *bind_sprite_get_vframes
cdef godot_method_bind *bind_sprite_is_centered
cdef godot_method_bind *bind_sprite_is_flipped_h
cdef godot_method_bind *bind_sprite_is_flipped_v
cdef godot_method_bind *bind_sprite_is_pixel_opaque
cdef godot_method_bind *bind_sprite_is_region
cdef godot_method_bind *bind_sprite_is_region_filter_clip_enabled
cdef godot_method_bind *bind_sprite_set_centered
cdef godot_method_bind *bind_sprite_set_flip_h
cdef godot_method_bind *bind_sprite_set_flip_v
cdef godot_method_bind *bind_sprite_set_frame
cdef godot_method_bind *bind_sprite_set_frame_coords
cdef godot_method_bind *bind_sprite_set_hframes
cdef godot_method_bind *bind_sprite_set_normal_map
cdef godot_method_bind *bind_sprite_set_offset
cdef godot_method_bind *bind_sprite_set_region
cdef godot_method_bind *bind_sprite_set_region_filter_clip
cdef godot_method_bind *bind_sprite_set_region_rect
cdef godot_method_bind *bind_sprite_set_texture
cdef godot_method_bind *bind_sprite_set_vframes
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_sprite__texture_changed = api_core.godot_method_bind_get_method('Sprite', '_texture_changed')
  bind_sprite_get_frame = api_core.godot_method_bind_get_method('Sprite', 'get_frame')
  bind_sprite_get_frame_coords = api_core.godot_method_bind_get_method('Sprite', 'get_frame_coords')
  bind_sprite_get_hframes = api_core.godot_method_bind_get_method('Sprite', 'get_hframes')
  bind_sprite_get_normal_map = api_core.godot_method_bind_get_method('Sprite', 'get_normal_map')
  bind_sprite_get_offset = api_core.godot_method_bind_get_method('Sprite', 'get_offset')
  bind_sprite_get_rect = api_core.godot_method_bind_get_method('Sprite', 'get_rect')
  bind_sprite_get_region_rect = api_core.godot_method_bind_get_method('Sprite', 'get_region_rect')
  bind_sprite_get_texture = api_core.godot_method_bind_get_method('Sprite', 'get_texture')
  bind_sprite_get_vframes = api_core.godot_method_bind_get_method('Sprite', 'get_vframes')
  bind_sprite_is_centered = api_core.godot_method_bind_get_method('Sprite', 'is_centered')
  bind_sprite_is_flipped_h = api_core.godot_method_bind_get_method('Sprite', 'is_flipped_h')
  bind_sprite_is_flipped_v = api_core.godot_method_bind_get_method('Sprite', 'is_flipped_v')
  bind_sprite_is_pixel_opaque = api_core.godot_method_bind_get_method('Sprite', 'is_pixel_opaque')
  bind_sprite_is_region = api_core.godot_method_bind_get_method('Sprite', 'is_region')
  bind_sprite_is_region_filter_clip_enabled = api_core.godot_method_bind_get_method('Sprite', 'is_region_filter_clip_enabled')
  bind_sprite_set_centered = api_core.godot_method_bind_get_method('Sprite', 'set_centered')
  bind_sprite_set_flip_h = api_core.godot_method_bind_get_method('Sprite', 'set_flip_h')
  bind_sprite_set_flip_v = api_core.godot_method_bind_get_method('Sprite', 'set_flip_v')
  bind_sprite_set_frame = api_core.godot_method_bind_get_method('Sprite', 'set_frame')
  bind_sprite_set_frame_coords = api_core.godot_method_bind_get_method('Sprite', 'set_frame_coords')
  bind_sprite_set_hframes = api_core.godot_method_bind_get_method('Sprite', 'set_hframes')
  bind_sprite_set_normal_map = api_core.godot_method_bind_get_method('Sprite', 'set_normal_map')
  bind_sprite_set_offset = api_core.godot_method_bind_get_method('Sprite', 'set_offset')
  bind_sprite_set_region = api_core.godot_method_bind_get_method('Sprite', 'set_region')
  bind_sprite_set_region_filter_clip = api_core.godot_method_bind_get_method('Sprite', 'set_region_filter_clip')
  bind_sprite_set_region_rect = api_core.godot_method_bind_get_method('Sprite', 'set_region_rect')
  bind_sprite_set_texture = api_core.godot_method_bind_get_method('Sprite', 'set_texture')
  bind_sprite_set_vframes = api_core.godot_method_bind_get_method('Sprite', 'set_vframes')

############################Generated class###################################
cdef class Sprite(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Sprite")())
##################################Generated Properties#########################################
  @property
  def centered(self): 
    return self.get_centered()
  @centered.setter 
  def centered(self,value): 
    self.set_centered(value)
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
  def normal_map(self): 
    return self.get_normal_map()
  @normal_map.setter 
  def normal_map(self,value): 
    self.set_normal_map(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def region_enabled(self): 
    return self.get_region_enabled()
  @region_enabled.setter 
  def region_enabled(self,value): 
    self.set_region_enabled(value)
  @property
  def region_filter_clip(self): 
    return self.get_region_filter_clip()
  @region_filter_clip.setter 
  def region_filter_clip(self,value): 
    self.set_region_filter_clip(value)
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
  def  _texture_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_sprite__texture_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_frame(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_frame,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_frame_coords(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_frame_coords,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_hframes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_hframes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_normal_map(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_normal_map,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_region_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_region_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_vframes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_get_vframes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_centered(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_is_centered,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_h(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_is_flipped_h,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_v(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_is_flipped_v,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_pixel_opaque(self,  Vector2 pos):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &pos._native
    api_core.godot_method_bind_ptrcall(bind_sprite_is_pixel_opaque,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_region(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_is_region,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_region_filter_clip_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite_is_region_filter_clip_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_centered(self,  bool centered):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &centered
    api_core.godot_method_bind_ptrcall(bind_sprite_set_centered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_h(self,  bool flip_h):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip_h
    api_core.godot_method_bind_ptrcall(bind_sprite_set_flip_h,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_v(self,  bool flip_v):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip_v
    api_core.godot_method_bind_ptrcall(bind_sprite_set_flip_v,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frame(self,  int frame):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &frame
    api_core.godot_method_bind_ptrcall(bind_sprite_set_frame,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frame_coords(self,  Vector2 coords):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &coords._native
    api_core.godot_method_bind_ptrcall(bind_sprite_set_frame_coords,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hframes(self,  int hframes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hframes
    api_core.godot_method_bind_ptrcall(bind_sprite_set_hframes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal_map(self,  classes.Texture.Texture normal_map):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = normal_map.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite_set_normal_map,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_sprite_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_sprite_set_region,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region_filter_clip(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_sprite_set_region_filter_clip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region_rect(self,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_sprite_set_region_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vframes(self,  int vframes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vframes
    api_core.godot_method_bind_ptrcall(bind_sprite_set_vframes,self.godot_owner,args,NULL)
    hello('hallo2')
