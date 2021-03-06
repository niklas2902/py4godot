from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_multimeshinstance2d_get_multimesh
cdef godot_method_bind *bind_multimeshinstance2d_get_normal_map
cdef godot_method_bind *bind_multimeshinstance2d_get_texture
cdef godot_method_bind *bind_multimeshinstance2d_set_multimesh
cdef godot_method_bind *bind_multimeshinstance2d_set_normal_map
cdef godot_method_bind *bind_multimeshinstance2d_set_texture
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_multimeshinstance2d_get_multimesh = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'get_multimesh')
  bind_multimeshinstance2d_get_normal_map = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'get_normal_map')
  bind_multimeshinstance2d_get_texture = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'get_texture')
  bind_multimeshinstance2d_set_multimesh = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'set_multimesh')
  bind_multimeshinstance2d_set_normal_map = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'set_normal_map')
  bind_multimeshinstance2d_set_texture = api_core.godot_method_bind_get_method('MultiMeshInstance2D', 'set_texture')

############################Generated class###################################
cdef class MultiMeshInstance2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MultiMeshInstance2D")())
##################################Generated Properties#########################################
  @property
  def multimesh(self): 
    return self.get_multimesh()
  @multimesh.setter 
  def multimesh(self,value): 
    self.set_multimesh(value)
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
  def  get_multimesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef MultiMesh ret
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_get_multimesh,self.godot_owner,[NULL,],&ret)
  def  get_normal_map(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_get_normal_map,self.godot_owner,[NULL,],&ret)
  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_get_texture,self.godot_owner,[NULL,],&ret)
  def  set_multimesh(self, multimesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_set_multimesh,self.godot_owner,[NULL,],NULL)
  def  set_normal_map(self, normal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_set_normal_map,self.godot_owner,[NULL,],NULL)
  def  set_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multimeshinstance2d_set_texture,self.godot_owner,[NULL,],NULL)
