
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
cimport classes.Texture 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_largetexture__get_data
cdef godot_method_bind *bind_largetexture__set_data
cdef godot_method_bind *bind_largetexture_add_piece
cdef godot_method_bind *bind_largetexture_clear
cdef godot_method_bind *bind_largetexture_get_piece_count
cdef godot_method_bind *bind_largetexture_get_piece_offset
cdef godot_method_bind *bind_largetexture_get_piece_texture
cdef godot_method_bind *bind_largetexture_set_piece_offset
cdef godot_method_bind *bind_largetexture_set_piece_texture
cdef godot_method_bind *bind_largetexture_set_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_largetexture__get_data = api_core.godot_method_bind_get_method('LargeTexture', '_get_data')
  bind_largetexture__set_data = api_core.godot_method_bind_get_method('LargeTexture', '_set_data')
  bind_largetexture_add_piece = api_core.godot_method_bind_get_method('LargeTexture', 'add_piece')
  bind_largetexture_clear = api_core.godot_method_bind_get_method('LargeTexture', 'clear')
  bind_largetexture_get_piece_count = api_core.godot_method_bind_get_method('LargeTexture', 'get_piece_count')
  bind_largetexture_get_piece_offset = api_core.godot_method_bind_get_method('LargeTexture', 'get_piece_offset')
  bind_largetexture_get_piece_texture = api_core.godot_method_bind_get_method('LargeTexture', 'get_piece_texture')
  bind_largetexture_set_piece_offset = api_core.godot_method_bind_get_method('LargeTexture', 'set_piece_offset')
  bind_largetexture_set_piece_texture = api_core.godot_method_bind_get_method('LargeTexture', 'set_piece_texture')
  bind_largetexture_set_size = api_core.godot_method_bind_get_method('LargeTexture', 'set_size')

############################Generated class###################################
cdef class LargeTexture(classes.Texture.Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LargeTexture")())
##################################Generated Properties#########################################
  @property
  def _data(self): 
    return self.get__data()
  @_data.setter 
  def _data(self,value): 
    self.set__data(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_largetexture__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_data(self,  Array data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_largetexture__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_piece(self,  Vector2 ofs,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &ofs._native
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_largetexture_add_piece,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_largetexture_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_piece_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_largetexture_get_piece_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_piece_offset(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_largetexture_get_piece_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_piece_texture(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_largetexture_get_piece_texture,self.godot_owner,args,&ret)
    hello('hallo2')
  def  set_piece_offset(self,  int idx,  Vector2 ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &ofs._native
    api_core.godot_method_bind_ptrcall(bind_largetexture_set_piece_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_piece_texture(self,  int idx,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_largetexture_set_piece_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_largetexture_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
