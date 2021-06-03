
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Texture
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_texturerect__texture_changed
cdef godot_method_bind *bind_texturerect_get_stretch_mode
cdef godot_method_bind *bind_texturerect_get_texture
cdef godot_method_bind *bind_texturerect_has_expand
cdef godot_method_bind *bind_texturerect_is_flipped_h
cdef godot_method_bind *bind_texturerect_is_flipped_v
cdef godot_method_bind *bind_texturerect_set_expand
cdef godot_method_bind *bind_texturerect_set_flip_h
cdef godot_method_bind *bind_texturerect_set_flip_v
cdef godot_method_bind *bind_texturerect_set_stretch_mode
cdef godot_method_bind *bind_texturerect_set_texture
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_texturerect__texture_changed = api_core.godot_method_bind_get_method('TextureRect', '_texture_changed')
  bind_texturerect_get_stretch_mode = api_core.godot_method_bind_get_method('TextureRect', 'get_stretch_mode')
  bind_texturerect_get_texture = api_core.godot_method_bind_get_method('TextureRect', 'get_texture')
  bind_texturerect_has_expand = api_core.godot_method_bind_get_method('TextureRect', 'has_expand')
  bind_texturerect_is_flipped_h = api_core.godot_method_bind_get_method('TextureRect', 'is_flipped_h')
  bind_texturerect_is_flipped_v = api_core.godot_method_bind_get_method('TextureRect', 'is_flipped_v')
  bind_texturerect_set_expand = api_core.godot_method_bind_get_method('TextureRect', 'set_expand')
  bind_texturerect_set_flip_h = api_core.godot_method_bind_get_method('TextureRect', 'set_flip_h')
  bind_texturerect_set_flip_v = api_core.godot_method_bind_get_method('TextureRect', 'set_flip_v')
  bind_texturerect_set_stretch_mode = api_core.godot_method_bind_get_method('TextureRect', 'set_stretch_mode')
  bind_texturerect_set_texture = api_core.godot_method_bind_get_method('TextureRect', 'set_texture')

############################Generated class###################################
cdef class TextureRect(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TextureRect")())
##################################Generated Properties#########################################
  @property
  def expand(self): 
    return self.get_expand()
  @expand.setter 
  def expand(self,value): 
    self.set_expand(value)
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
  def stretch_mode(self): 
    return self.get_stretch_mode()
  @stretch_mode.setter 
  def stretch_mode(self,value): 
    self.set_stretch_mode(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)

##################################Generated Methods#########################################
  def  _texture_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_texturerect__texture_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_stretch_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef StretchMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturerect_get_stretch_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturerect_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  has_expand(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturerect_has_expand,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_h(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturerect_is_flipped_h,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_v(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_texturerect_is_flipped_v,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_expand(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_texturerect_set_expand,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_h(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_texturerect_set_flip_h,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_v(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_texturerect_set_flip_v,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stretch_mode(self,  int stretch_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &stretch_mode
    api_core.godot_method_bind_ptrcall(bind_texturerect_set_stretch_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_texturerect_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
