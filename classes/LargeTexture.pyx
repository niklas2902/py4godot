from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class LargeTexture(Texture):
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
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_largetexture__get_data,self.godot_owner,[NULL,],&ret)
  def  _set_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_largetexture__set_data,self.godot_owner,[NULL,],NULL)
  def  add_piece(self, ofstexture):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_largetexture_add_piece,self.godot_owner,[NULL,],&ret)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_largetexture_clear,self.godot_owner,[NULL,],NULL)
  def  get_piece_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_largetexture_get_piece_count,self.godot_owner,[NULL,],&ret)
  def  get_piece_offset(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_largetexture_get_piece_offset,self.godot_owner,[NULL,],&ret)
  def  get_piece_texture(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_largetexture_get_piece_texture,self.godot_owner,[NULL,],&ret)
  def  set_piece_offset(self, idxofs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_largetexture_set_piece_offset,self.godot_owner,[NULL,],NULL)
  def  set_piece_texture(self, idxtexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_largetexture_set_piece_texture,self.godot_owner,[NULL,],NULL)
  def  set_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_largetexture_set_size,self.godot_owner,[NULL,],NULL)
