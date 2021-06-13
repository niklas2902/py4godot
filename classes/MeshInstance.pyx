
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
cimport classes.Mesh
cimport classes.Skin
cimport classes.Material
cimport classes.GeometryInstance 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_meshinstance__mesh_changed
cdef godot_method_bind *bind_meshinstance_create_convex_collision
cdef godot_method_bind *bind_meshinstance_create_debug_tangents
cdef godot_method_bind *bind_meshinstance_create_trimesh_collision
cdef godot_method_bind *bind_meshinstance_get_mesh
cdef godot_method_bind *bind_meshinstance_get_skeleton_path
cdef godot_method_bind *bind_meshinstance_get_skin
cdef godot_method_bind *bind_meshinstance_get_surface_material
cdef godot_method_bind *bind_meshinstance_get_surface_material_count
cdef godot_method_bind *bind_meshinstance_set_mesh
cdef godot_method_bind *bind_meshinstance_set_skeleton_path
cdef godot_method_bind *bind_meshinstance_set_skin
cdef godot_method_bind *bind_meshinstance_set_surface_material
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_meshinstance__mesh_changed = api_core.godot_method_bind_get_method('MeshInstance', '_mesh_changed')
  bind_meshinstance_create_convex_collision = api_core.godot_method_bind_get_method('MeshInstance', 'create_convex_collision')
  bind_meshinstance_create_debug_tangents = api_core.godot_method_bind_get_method('MeshInstance', 'create_debug_tangents')
  bind_meshinstance_create_trimesh_collision = api_core.godot_method_bind_get_method('MeshInstance', 'create_trimesh_collision')
  bind_meshinstance_get_mesh = api_core.godot_method_bind_get_method('MeshInstance', 'get_mesh')
  bind_meshinstance_get_skeleton_path = api_core.godot_method_bind_get_method('MeshInstance', 'get_skeleton_path')
  bind_meshinstance_get_skin = api_core.godot_method_bind_get_method('MeshInstance', 'get_skin')
  bind_meshinstance_get_surface_material = api_core.godot_method_bind_get_method('MeshInstance', 'get_surface_material')
  bind_meshinstance_get_surface_material_count = api_core.godot_method_bind_get_method('MeshInstance', 'get_surface_material_count')
  bind_meshinstance_set_mesh = api_core.godot_method_bind_get_method('MeshInstance', 'set_mesh')
  bind_meshinstance_set_skeleton_path = api_core.godot_method_bind_get_method('MeshInstance', 'set_skeleton_path')
  bind_meshinstance_set_skin = api_core.godot_method_bind_get_method('MeshInstance', 'set_skin')
  bind_meshinstance_set_surface_material = api_core.godot_method_bind_get_method('MeshInstance', 'set_surface_material')

############################Generated class###################################
cdef class MeshInstance(classes.GeometryInstance.GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshInstance")())
##################################Generated Properties#########################################
  @property
  def mesh(self): 
    return self.get_mesh()
  @mesh.setter 
  def mesh(self,value): 
    self.set_mesh(value)
  @property
  def skeleton(self): 
    return self.get_skeleton()
  @skeleton.setter 
  def skeleton(self,value): 
    self.set_skeleton(value)
  @property
  def skin(self): 
    return self.get_skin()
  @skin.setter 
  def skin(self,value): 
    self.set_skin(value)

##################################Generated Methods#########################################
  def  _mesh_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_meshinstance__mesh_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_convex_collision(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_meshinstance_create_convex_collision,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_debug_tangents(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_meshinstance_create_debug_tangents,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_trimesh_collision(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_meshinstance_create_trimesh_collision,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_skeleton_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_skeleton_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_skin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_skin,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_surface_material(self,  int surface):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &surface
    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_surface_material,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_surface_material_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_surface_material_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_mesh(self,  classes.Mesh.Mesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_skeleton_path(self,  NodePath skeleton_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &skeleton_path._native
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_skeleton_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_skin(self,  classes.Skin.Skin skin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = skin.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_skin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_surface_material(self,  int surface,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &surface
    args[1] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_surface_material,self.godot_owner,args,NULL)
    hello('hallo2')
