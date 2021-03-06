from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_meshinstance2d_get_mesh
cdef godot_method_bind *bind_meshinstance2d_get_normal_map
cdef godot_method_bind *bind_meshinstance2d_get_texture
cdef godot_method_bind *bind_meshinstance2d_set_mesh
cdef godot_method_bind *bind_meshinstance2d_set_normal_map
cdef godot_method_bind *bind_meshinstance2d_set_texture
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_meshinstance2d_get_mesh = api_core.godot_method_bind_get_method('MeshInstance2D', 'get_mesh')
  bind_meshinstance2d_get_normal_map = api_core.godot_method_bind_get_method('MeshInstance2D', 'get_normal_map')
  bind_meshinstance2d_get_texture = api_core.godot_method_bind_get_method('MeshInstance2D', 'get_texture')
  bind_meshinstance2d_set_mesh = api_core.godot_method_bind_get_method('MeshInstance2D', 'set_mesh')
  bind_meshinstance2d_set_normal_map = api_core.godot_method_bind_get_method('MeshInstance2D', 'set_normal_map')
  bind_meshinstance2d_set_texture = api_core.godot_method_bind_get_method('MeshInstance2D', 'set_texture')

############################Generated class###################################
cdef class MeshInstance2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshInstance2D")())
##################################Generated Properties#########################################
  @property
  def mesh(self): 
    return self.get_mesh()
  @mesh.setter 
  def mesh(self,value): 
    self.set_mesh(value)
  @property
  def normal_map(self): 
    return self.get_normal_map()
  @normal_map.setter 
  def normal_map(self,value): 
    self.set_normal_map(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)

##################################Generated Methods#########################################
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance2d_get_mesh,self.godot_owner,[NULL,],&ret)
  def  get_normal_map(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance2d_get_normal_map,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance2d_get_texture,self.godot_owner,[NULL,],&ret)
  def  set_mesh(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance2d_set_mesh,self.godot_owner,[NULL,],NULL)
  def  set_normal_map(self, normal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance2d_set_normal_map,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance2d_set_texture,self.godot_owner,[NULL,],NULL)
