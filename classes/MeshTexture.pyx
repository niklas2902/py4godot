from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_meshtexture_get_base_texture
cdef godot_method_bind *bind_meshtexture_get_image_size
cdef godot_method_bind *bind_meshtexture_get_mesh
cdef godot_method_bind *bind_meshtexture_set_base_texture
cdef godot_method_bind *bind_meshtexture_set_image_size
cdef godot_method_bind *bind_meshtexture_set_mesh
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_meshtexture_get_base_texture = api_core.godot_method_bind_get_method('MeshTexture', 'get_base_texture')
  bind_meshtexture_get_image_size = api_core.godot_method_bind_get_method('MeshTexture', 'get_image_size')
  bind_meshtexture_get_mesh = api_core.godot_method_bind_get_method('MeshTexture', 'get_mesh')
  bind_meshtexture_set_base_texture = api_core.godot_method_bind_get_method('MeshTexture', 'set_base_texture')
  bind_meshtexture_set_image_size = api_core.godot_method_bind_get_method('MeshTexture', 'set_image_size')
  bind_meshtexture_set_mesh = api_core.godot_method_bind_get_method('MeshTexture', 'set_mesh')

############################Generated class###################################
cdef class MeshTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshTexture")())
##################################Generated Properties#########################################
  @property
  def base_texture(self): 
    return self.get_base_texture()
  @base_texture.setter 
  def base_texture(self,value): 
    self.set_base_texture(value)
  @property
  def image_size(self): 
    return self.get_image_size()
  @image_size.setter 
  def image_size(self,value): 
    self.set_image_size(value)
  @property
  def mesh(self): 
    return self.get_mesh()
  @mesh.setter 
  def mesh(self,value): 
    self.set_mesh(value)

##################################Generated Methods#########################################
  def  get_base_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_meshtexture_get_base_texture,self.godot_owner,[NULL,],&ret)
  def  get_image_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_meshtexture_get_image_size,self.godot_owner,[NULL,],&ret)
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_meshtexture_get_mesh,self.godot_owner,[NULL,],&ret)
  def  set_base_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshtexture_set_base_texture,self.godot_owner,[NULL,],NULL)
  def  set_image_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshtexture_set_image_size,self.godot_owner,[NULL,],NULL)
  def  set_mesh(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshtexture_set_mesh,self.godot_owner,[NULL,],NULL)
