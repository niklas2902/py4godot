from classes.Mesh cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_primitivemesh__update
cdef godot_method_bind *bind_primitivemesh_get_custom_aabb
cdef godot_method_bind *bind_primitivemesh_get_flip_faces
cdef godot_method_bind *bind_primitivemesh_get_material
cdef godot_method_bind *bind_primitivemesh_get_mesh_arrays
cdef godot_method_bind *bind_primitivemesh_set_custom_aabb
cdef godot_method_bind *bind_primitivemesh_set_flip_faces
cdef godot_method_bind *bind_primitivemesh_set_material
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_primitivemesh__update = api_core.godot_method_bind_get_method('PrimitiveMesh', '_update')
  bind_primitivemesh_get_custom_aabb = api_core.godot_method_bind_get_method('PrimitiveMesh', 'get_custom_aabb')
  bind_primitivemesh_get_flip_faces = api_core.godot_method_bind_get_method('PrimitiveMesh', 'get_flip_faces')
  bind_primitivemesh_get_material = api_core.godot_method_bind_get_method('PrimitiveMesh', 'get_material')
  bind_primitivemesh_get_mesh_arrays = api_core.godot_method_bind_get_method('PrimitiveMesh', 'get_mesh_arrays')
  bind_primitivemesh_set_custom_aabb = api_core.godot_method_bind_get_method('PrimitiveMesh', 'set_custom_aabb')
  bind_primitivemesh_set_flip_faces = api_core.godot_method_bind_get_method('PrimitiveMesh', 'set_flip_faces')
  bind_primitivemesh_set_material = api_core.godot_method_bind_get_method('PrimitiveMesh', 'set_material')

############################Generated class###################################
cdef class PrimitiveMesh(Mesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PrimitiveMesh")())
##################################Generated Properties#########################################
  @property
  def custom_aabb(self): 
    return self.get_custom_aabb()
  @custom_aabb.setter 
  def custom_aabb(self,value): 
    self.set_custom_aabb(value)
  @property
  def flip_faces(self): 
    return self.get_flip_faces()
  @flip_faces.setter 
  def flip_faces(self,value): 
    self.set_flip_faces(value)
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)

##################################Generated Methods#########################################
  def  _update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_primitivemesh__update,self.godot_owner,[NULL,],NULL)
  def  get_custom_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_custom_aabb,self.godot_owner,[NULL,],&ret)
  def  get_flip_faces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_flip_faces,self.godot_owner,[NULL,],&ret)
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_material,self.godot_owner,[NULL,],&ret)
  def  get_mesh_arrays(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_mesh_arrays,self.godot_owner,[NULL,],&ret)
  def  set_custom_aabb(self, aabb):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_set_custom_aabb,self.godot_owner,[NULL,],NULL)
  def  set_flip_faces(self, flip_faces):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_set_flip_faces,self.godot_owner,[NULL,],NULL)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_set_material,self.godot_owner,[NULL,],NULL)
