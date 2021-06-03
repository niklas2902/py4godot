
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_mesh_create_convex_shape
cdef godot_method_bind *bind_mesh_create_outline
cdef godot_method_bind *bind_mesh_create_trimesh_shape
cdef godot_method_bind *bind_mesh_generate_triangle_mesh
cdef godot_method_bind *bind_mesh_get_aabb
cdef godot_method_bind *bind_mesh_get_faces
cdef godot_method_bind *bind_mesh_get_lightmap_size_hint
cdef godot_method_bind *bind_mesh_get_surface_count
cdef godot_method_bind *bind_mesh_set_lightmap_size_hint
cdef godot_method_bind *bind_mesh_surface_get_arrays
cdef godot_method_bind *bind_mesh_surface_get_blend_shape_arrays
cdef godot_method_bind *bind_mesh_surface_get_material
cdef godot_method_bind *bind_mesh_surface_set_material
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_mesh_create_convex_shape = api_core.godot_method_bind_get_method('Mesh', 'create_convex_shape')
  bind_mesh_create_outline = api_core.godot_method_bind_get_method('Mesh', 'create_outline')
  bind_mesh_create_trimesh_shape = api_core.godot_method_bind_get_method('Mesh', 'create_trimesh_shape')
  bind_mesh_generate_triangle_mesh = api_core.godot_method_bind_get_method('Mesh', 'generate_triangle_mesh')
  bind_mesh_get_aabb = api_core.godot_method_bind_get_method('Mesh', 'get_aabb')
  bind_mesh_get_faces = api_core.godot_method_bind_get_method('Mesh', 'get_faces')
  bind_mesh_get_lightmap_size_hint = api_core.godot_method_bind_get_method('Mesh', 'get_lightmap_size_hint')
  bind_mesh_get_surface_count = api_core.godot_method_bind_get_method('Mesh', 'get_surface_count')
  bind_mesh_set_lightmap_size_hint = api_core.godot_method_bind_get_method('Mesh', 'set_lightmap_size_hint')
  bind_mesh_surface_get_arrays = api_core.godot_method_bind_get_method('Mesh', 'surface_get_arrays')
  bind_mesh_surface_get_blend_shape_arrays = api_core.godot_method_bind_get_method('Mesh', 'surface_get_blend_shape_arrays')
  bind_mesh_surface_get_material = api_core.godot_method_bind_get_method('Mesh', 'surface_get_material')
  bind_mesh_surface_set_material = api_core.godot_method_bind_get_method('Mesh', 'surface_set_material')

############################Generated class###################################
cdef class Mesh(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Mesh")())
##################################Generated Properties#########################################
  @property
  def lightmap_size_hint(self): 
    return self.get_lightmap_size_hint()
  @lightmap_size_hint.setter 
  def lightmap_size_hint(self,value): 
    self.set_lightmap_size_hint(value)

##################################Generated Methods#########################################
  def  create_convex_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mesh_create_convex_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  create_outline(self,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_mesh_create_outline,self.godot_owner,args,&ret)
    hello('hallo2')
  def  create_trimesh_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mesh_create_trimesh_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  generate_triangle_mesh(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mesh_generate_triangle_mesh,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_aabb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_aabb* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mesh_get_aabb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return AABB.new_static(dereference(ret))

  def  get_faces(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mesh_get_faces,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_lightmap_size_hint(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mesh_get_lightmap_size_hint,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_surface_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_mesh_get_surface_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_lightmap_size_hint(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_mesh_set_lightmap_size_hint,self.godot_owner,args,NULL)
    hello('hallo2')
  def  surface_get_arrays(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_get_arrays,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  surface_get_blend_shape_arrays(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_get_blend_shape_arrays,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  surface_get_material(self,  int surf_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &surf_idx
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_get_material,self.godot_owner,args,&ret)
    hello('hallo2')
  def  surface_set_material(self,  int surf_idx,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &surf_idx
    args[1] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
