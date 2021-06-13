
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
cimport classes.ArrayMesh
cimport classes.Mesh
cimport classes.Mesh
cimport classes.Material
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_surfacetool_add_bones
cdef godot_method_bind *bind_surfacetool_add_color
cdef godot_method_bind *bind_surfacetool_add_index
cdef godot_method_bind *bind_surfacetool_add_normal
cdef godot_method_bind *bind_surfacetool_add_smooth_group
cdef godot_method_bind *bind_surfacetool_add_tangent
cdef godot_method_bind *bind_surfacetool_add_triangle_fan
cdef godot_method_bind *bind_surfacetool_add_uv
cdef godot_method_bind *bind_surfacetool_add_uv2
cdef godot_method_bind *bind_surfacetool_add_vertex
cdef godot_method_bind *bind_surfacetool_add_weights
cdef godot_method_bind *bind_surfacetool_append_from
cdef godot_method_bind *bind_surfacetool_begin
cdef godot_method_bind *bind_surfacetool_clear
cdef godot_method_bind *bind_surfacetool_commit
cdef godot_method_bind *bind_surfacetool_commit_to_arrays
cdef godot_method_bind *bind_surfacetool_create_from
cdef godot_method_bind *bind_surfacetool_create_from_blend_shape
cdef godot_method_bind *bind_surfacetool_deindex
cdef godot_method_bind *bind_surfacetool_generate_normals
cdef godot_method_bind *bind_surfacetool_generate_tangents
cdef godot_method_bind *bind_surfacetool_index
cdef godot_method_bind *bind_surfacetool_set_material
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_surfacetool_add_bones = api_core.godot_method_bind_get_method('SurfaceTool', 'add_bones')
  bind_surfacetool_add_color = api_core.godot_method_bind_get_method('SurfaceTool', 'add_color')
  bind_surfacetool_add_index = api_core.godot_method_bind_get_method('SurfaceTool', 'add_index')
  bind_surfacetool_add_normal = api_core.godot_method_bind_get_method('SurfaceTool', 'add_normal')
  bind_surfacetool_add_smooth_group = api_core.godot_method_bind_get_method('SurfaceTool', 'add_smooth_group')
  bind_surfacetool_add_tangent = api_core.godot_method_bind_get_method('SurfaceTool', 'add_tangent')
  bind_surfacetool_add_triangle_fan = api_core.godot_method_bind_get_method('SurfaceTool', 'add_triangle_fan')
  bind_surfacetool_add_uv = api_core.godot_method_bind_get_method('SurfaceTool', 'add_uv')
  bind_surfacetool_add_uv2 = api_core.godot_method_bind_get_method('SurfaceTool', 'add_uv2')
  bind_surfacetool_add_vertex = api_core.godot_method_bind_get_method('SurfaceTool', 'add_vertex')
  bind_surfacetool_add_weights = api_core.godot_method_bind_get_method('SurfaceTool', 'add_weights')
  bind_surfacetool_append_from = api_core.godot_method_bind_get_method('SurfaceTool', 'append_from')
  bind_surfacetool_begin = api_core.godot_method_bind_get_method('SurfaceTool', 'begin')
  bind_surfacetool_clear = api_core.godot_method_bind_get_method('SurfaceTool', 'clear')
  bind_surfacetool_commit = api_core.godot_method_bind_get_method('SurfaceTool', 'commit')
  bind_surfacetool_commit_to_arrays = api_core.godot_method_bind_get_method('SurfaceTool', 'commit_to_arrays')
  bind_surfacetool_create_from = api_core.godot_method_bind_get_method('SurfaceTool', 'create_from')
  bind_surfacetool_create_from_blend_shape = api_core.godot_method_bind_get_method('SurfaceTool', 'create_from_blend_shape')
  bind_surfacetool_deindex = api_core.godot_method_bind_get_method('SurfaceTool', 'deindex')
  bind_surfacetool_generate_normals = api_core.godot_method_bind_get_method('SurfaceTool', 'generate_normals')
  bind_surfacetool_generate_tangents = api_core.godot_method_bind_get_method('SurfaceTool', 'generate_tangents')
  bind_surfacetool_index = api_core.godot_method_bind_get_method('SurfaceTool', 'index')
  bind_surfacetool_set_material = api_core.godot_method_bind_get_method('SurfaceTool', 'set_material')

############################Generated class###################################
cdef class SurfaceTool(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SurfaceTool")())
##################################Generated Methods#########################################
  def  add_bones(self,  PoolIntArray bones):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bones._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_bones,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_color(self,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &color._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_index(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_normal(self,  Vector3 normal):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &normal._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_normal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_smooth_group(self,  bool smooth):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &smooth
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_smooth_group,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_tangent(self,  Plane tangent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &tangent._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_tangent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_triangle_fan(self,  PoolVector3Array vertices,  PoolVector2Array uvs,  PoolColorArray colors,  PoolVector2Array uv2s,  PoolVector3Array normals,  Array tangents):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[6]

    args[0] = &vertices._native
    args[1] = &uvs._native
    args[2] = &colors._native
    args[3] = &uv2s._native
    args[4] = &normals._native
    args[5] = &tangents._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_triangle_fan,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_uv(self,  Vector2 uv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &uv._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_uv,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_uv2(self,  Vector2 uv2):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &uv2._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_uv2,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_vertex(self,  Vector3 vertex):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vertex._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_vertex,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_weights(self,  PoolRealArray weights):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &weights._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_add_weights,self.godot_owner,args,NULL)
    hello('hallo2')
  def  append_from(self,  classes.Mesh.Mesh existing,  int surface,  Transform transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = existing.godot_owner
    args[1] = &surface
    args[2] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_append_from,self.godot_owner,args,NULL)
    hello('hallo2')
  def  begin(self,  int primitive):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &primitive
    api_core.godot_method_bind_ptrcall(bind_surfacetool_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_surfacetool_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  commit(self,  classes.ArrayMesh.ArrayMesh existing,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = existing.godot_owner
    args[1] = &flags
    api_core.godot_method_bind_ptrcall(bind_surfacetool_commit,self.godot_owner,args,&ret)
    hello('hallo2')
  def  commit_to_arrays(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_surfacetool_commit_to_arrays,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  create_from(self,  classes.Mesh.Mesh existing,  int surface):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = existing.godot_owner
    args[1] = &surface
    api_core.godot_method_bind_ptrcall(bind_surfacetool_create_from,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_from_blend_shape(self,  classes.Mesh.Mesh existing,  int surface,  String blend_shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = existing.godot_owner
    args[1] = &surface
    args[2] = &blend_shape._native
    api_core.godot_method_bind_ptrcall(bind_surfacetool_create_from_blend_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  deindex(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_surfacetool_deindex,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  generate_normals(self,  bool flip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip
    api_core.godot_method_bind_ptrcall(bind_surfacetool_generate_normals,self.godot_owner,args,NULL)
    hello('hallo2')
  def  generate_tangents(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_surfacetool_generate_tangents,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  index(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_surfacetool_index,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_surfacetool_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
