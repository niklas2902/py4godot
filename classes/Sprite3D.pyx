
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
cimport classes.SpriteBase3D 

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
cdef class Sprite3D(classes.SpriteBase3D.SpriteBase3D):
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

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_frame,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_frame_coords(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_frame_coords,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_hframes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_hframes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_region_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_region_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_vframes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite3d_get_vframes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_region(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_sprite3d_is_region,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_frame(self,  int frame):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &frame
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_frame,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frame_coords(self,  Vector2 coords):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &coords._native
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_frame_coords,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hframes(self,  int hframes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hframes
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_hframes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_region,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region_rect(self,  Rect2 rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rect._native
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_region_rect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vframes(self,  int vframes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vframes
    api_core.godot_method_bind_ptrcall(bind_sprite3d_set_vframes,self.godot_owner,args,NULL)
    hello('hallo2')
