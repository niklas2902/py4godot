
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
cimport classes.BitmapFont
cimport classes.Font 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_bitmapfont__get_chars
cdef godot_method_bind *bind_bitmapfont__get_kernings
cdef godot_method_bind *bind_bitmapfont__get_textures
cdef godot_method_bind *bind_bitmapfont__set_chars
cdef godot_method_bind *bind_bitmapfont__set_kernings
cdef godot_method_bind *bind_bitmapfont__set_textures
cdef godot_method_bind *bind_bitmapfont_add_char
cdef godot_method_bind *bind_bitmapfont_add_kerning_pair
cdef godot_method_bind *bind_bitmapfont_add_texture
cdef godot_method_bind *bind_bitmapfont_clear
cdef godot_method_bind *bind_bitmapfont_create_from_fnt
cdef godot_method_bind *bind_bitmapfont_get_char_size
cdef godot_method_bind *bind_bitmapfont_get_fallback
cdef godot_method_bind *bind_bitmapfont_get_kerning_pair
cdef godot_method_bind *bind_bitmapfont_get_texture
cdef godot_method_bind *bind_bitmapfont_get_texture_count
cdef godot_method_bind *bind_bitmapfont_set_ascent
cdef godot_method_bind *bind_bitmapfont_set_distance_field_hint
cdef godot_method_bind *bind_bitmapfont_set_fallback
cdef godot_method_bind *bind_bitmapfont_set_height
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_bitmapfont__get_chars = api_core.godot_method_bind_get_method('BitmapFont', '_get_chars')
  bind_bitmapfont__get_kernings = api_core.godot_method_bind_get_method('BitmapFont', '_get_kernings')
  bind_bitmapfont__get_textures = api_core.godot_method_bind_get_method('BitmapFont', '_get_textures')
  bind_bitmapfont__set_chars = api_core.godot_method_bind_get_method('BitmapFont', '_set_chars')
  bind_bitmapfont__set_kernings = api_core.godot_method_bind_get_method('BitmapFont', '_set_kernings')
  bind_bitmapfont__set_textures = api_core.godot_method_bind_get_method('BitmapFont', '_set_textures')
  bind_bitmapfont_add_char = api_core.godot_method_bind_get_method('BitmapFont', 'add_char')
  bind_bitmapfont_add_kerning_pair = api_core.godot_method_bind_get_method('BitmapFont', 'add_kerning_pair')
  bind_bitmapfont_add_texture = api_core.godot_method_bind_get_method('BitmapFont', 'add_texture')
  bind_bitmapfont_clear = api_core.godot_method_bind_get_method('BitmapFont', 'clear')
  bind_bitmapfont_create_from_fnt = api_core.godot_method_bind_get_method('BitmapFont', 'create_from_fnt')
  bind_bitmapfont_get_char_size = api_core.godot_method_bind_get_method('BitmapFont', 'get_char_size')
  bind_bitmapfont_get_fallback = api_core.godot_method_bind_get_method('BitmapFont', 'get_fallback')
  bind_bitmapfont_get_kerning_pair = api_core.godot_method_bind_get_method('BitmapFont', 'get_kerning_pair')
  bind_bitmapfont_get_texture = api_core.godot_method_bind_get_method('BitmapFont', 'get_texture')
  bind_bitmapfont_get_texture_count = api_core.godot_method_bind_get_method('BitmapFont', 'get_texture_count')
  bind_bitmapfont_set_ascent = api_core.godot_method_bind_get_method('BitmapFont', 'set_ascent')
  bind_bitmapfont_set_distance_field_hint = api_core.godot_method_bind_get_method('BitmapFont', 'set_distance_field_hint')
  bind_bitmapfont_set_fallback = api_core.godot_method_bind_get_method('BitmapFont', 'set_fallback')
  bind_bitmapfont_set_height = api_core.godot_method_bind_get_method('BitmapFont', 'set_height')

############################Generated class###################################
cdef class BitmapFont(classes.Font.Font):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("BitmapFont")())
##################################Generated Properties#########################################
  @property
  def ascent(self): 
    return self.get_ascent()
  @ascent.setter 
  def ascent(self,value): 
    self.set_ascent(value)
  @property
  def chars(self): 
    return self.get_chars()
  @chars.setter 
  def chars(self,value): 
    self.set_chars(value)
  @property
  def distance_field(self): 
    return self.get_distance_field()
  @distance_field.setter 
  def distance_field(self,value): 
    self.set_distance_field(value)
  @property
  def fallback(self): 
    return self.get_fallback()
  @fallback.setter 
  def fallback(self,value): 
    self.set_fallback(value)
  @property
  def height(self): 
    return self.get_height()
  @height.setter 
  def height(self,value): 
    self.set_height(value)
  @property
  def kernings(self): 
    return self.get_kernings()
  @kernings.setter 
  def kernings(self,value): 
    self.set_kernings(value)
  @property
  def textures(self): 
    return self.get_textures()
  @textures.setter 
  def textures(self,value): 
    self.set_textures(value)

##################################Generated Methods#########################################
  def  _get_chars(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmapfont__get_chars,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _get_kernings(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmapfont__get_kernings,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _get_textures(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmapfont__get_textures,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_chars(self,  PoolIntArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_bitmapfont__set_chars,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_kernings(self,  PoolIntArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_bitmapfont__set_kernings,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_textures(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_bitmapfont__set_textures,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_char(self,  int character,  int texture,  Rect2 rect,  Vector2 align,  float advance):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &character
    args[1] = &texture
    args[2] = &rect._native
    args[3] = &align._native
    args[4] = &advance
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_add_char,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_kerning_pair(self,  int char_a,  int char_b,  int kerning):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &char_a
    args[1] = &char_b
    args[2] = &kerning
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_add_kerning_pair,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_add_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_bitmapfont_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_from_fnt(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_create_from_fnt,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_char_size(self,  int char,  int next):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &char
    args[1] = &next
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_get_char_size,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_fallback(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmapfont_get_fallback,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_kerning_pair(self,  int char_a,  int char_b):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &char_a
    args[1] = &char_b
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_get_kerning_pair,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_texture(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_get_texture,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_texture_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_bitmapfont_get_texture_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_ascent(self,  float px):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &px
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_set_ascent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_distance_field_hint(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_set_distance_field_hint,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fallback(self,  classes.BitmapFont.BitmapFont fallback):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = fallback.godot_owner
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_set_fallback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_height(self,  float px):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &px
    api_core.godot_method_bind_ptrcall(bind_bitmapfont_set_height,self.godot_owner,args,NULL)
    hello('hallo2')
