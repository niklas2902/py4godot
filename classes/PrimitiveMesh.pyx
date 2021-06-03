
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
cimport classes.Material
cimport classes.Mesh 

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
cdef class PrimitiveMesh(classes.Mesh.Mesh):
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

    api_core.godot_method_bind_ptrcall(bind_primitivemesh__update,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_custom_aabb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_aabb* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_custom_aabb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return AABB.new_static(dereference(ret))

  def  get_flip_faces(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_flip_faces,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_material,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_mesh_arrays(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_primitivemesh_get_mesh_arrays,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  set_custom_aabb(self,  AABB aabb):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &aabb._native
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_set_custom_aabb,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_faces(self,  bool flip_faces):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip_faces
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_set_flip_faces,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_primitivemesh_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
