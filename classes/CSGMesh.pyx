from classes.CSGPrimitive cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgmesh__mesh_changed
cdef godot_method_bind *bind_csgmesh_get_material
cdef godot_method_bind *bind_csgmesh_get_mesh
cdef godot_method_bind *bind_csgmesh_set_material
cdef godot_method_bind *bind_csgmesh_set_mesh
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgmesh__mesh_changed = api_core.godot_method_bind_get_method('CSGMesh', '_mesh_changed')
  bind_csgmesh_get_material = api_core.godot_method_bind_get_method('CSGMesh', 'get_material')
  bind_csgmesh_get_mesh = api_core.godot_method_bind_get_method('CSGMesh', 'get_mesh')
  bind_csgmesh_set_material = api_core.godot_method_bind_get_method('CSGMesh', 'set_material')
  bind_csgmesh_set_mesh = api_core.godot_method_bind_get_method('CSGMesh', 'set_mesh')

############################Generated class###################################
cdef class CSGMesh(CSGPrimitive):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGMesh")())
##################################Generated Properties#########################################
  @property
  def material(self): 
    return self.get_material()
  @material.setter 
  def material(self,value): 
    self.set_material(value)
  @property
  def mesh(self): 
    return self.get_mesh()
  @mesh.setter 
  def mesh(self,value): 
    self.set_mesh(value)

##################################Generated Methods#########################################
  def  _mesh_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgmesh__mesh_changed,self.godot_owner,[NULL,],NULL)
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_csgmesh_get_material,self.godot_owner,[NULL,],&ret)
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_csgmesh_get_mesh,self.godot_owner,[NULL,],&ret)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgmesh_set_material,self.godot_owner,[NULL,],NULL)
  def  set_mesh(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgmesh_set_mesh,self.godot_owner,[NULL,],NULL)
