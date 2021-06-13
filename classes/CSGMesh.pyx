
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
cimport classes.Material
cimport classes.Mesh
cimport classes.CSGPrimitive 

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
cdef class CSGMesh(classes.CSGPrimitive.CSGPrimitive):
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

    api_core.godot_method_bind_ptrcall(bind_csgmesh__mesh_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgmesh_get_material,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgmesh_get_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgmesh_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mesh(self,  classes.Mesh.Mesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_csgmesh_set_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
