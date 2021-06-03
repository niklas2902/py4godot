
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
cimport classes.ArrayMesh
cimport classes.ArrayMesh
cimport classes.Material
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_meshdatatool_clear
cdef godot_method_bind *bind_meshdatatool_commit_to_surface
cdef godot_method_bind *bind_meshdatatool_create_from_surface
cdef godot_method_bind *bind_meshdatatool_get_edge_count
cdef godot_method_bind *bind_meshdatatool_get_edge_faces
cdef godot_method_bind *bind_meshdatatool_get_edge_meta
cdef godot_method_bind *bind_meshdatatool_get_edge_vertex
cdef godot_method_bind *bind_meshdatatool_get_face_count
cdef godot_method_bind *bind_meshdatatool_get_face_edge
cdef godot_method_bind *bind_meshdatatool_get_face_meta
cdef godot_method_bind *bind_meshdatatool_get_face_normal
cdef godot_method_bind *bind_meshdatatool_get_face_vertex
cdef godot_method_bind *bind_meshdatatool_get_format
cdef godot_method_bind *bind_meshdatatool_get_material
cdef godot_method_bind *bind_meshdatatool_get_vertex
cdef godot_method_bind *bind_meshdatatool_get_vertex_bones
cdef godot_method_bind *bind_meshdatatool_get_vertex_color
cdef godot_method_bind *bind_meshdatatool_get_vertex_count
cdef godot_method_bind *bind_meshdatatool_get_vertex_edges
cdef godot_method_bind *bind_meshdatatool_get_vertex_faces
cdef godot_method_bind *bind_meshdatatool_get_vertex_meta
cdef godot_method_bind *bind_meshdatatool_get_vertex_normal
cdef godot_method_bind *bind_meshdatatool_get_vertex_tangent
cdef godot_method_bind *bind_meshdatatool_get_vertex_uv
cdef godot_method_bind *bind_meshdatatool_get_vertex_uv2
cdef godot_method_bind *bind_meshdatatool_get_vertex_weights
cdef godot_method_bind *bind_meshdatatool_set_edge_meta
cdef godot_method_bind *bind_meshdatatool_set_face_meta
cdef godot_method_bind *bind_meshdatatool_set_material
cdef godot_method_bind *bind_meshdatatool_set_vertex
cdef godot_method_bind *bind_meshdatatool_set_vertex_bones
cdef godot_method_bind *bind_meshdatatool_set_vertex_color
cdef godot_method_bind *bind_meshdatatool_set_vertex_meta
cdef godot_method_bind *bind_meshdatatool_set_vertex_normal
cdef godot_method_bind *bind_meshdatatool_set_vertex_tangent
cdef godot_method_bind *bind_meshdatatool_set_vertex_uv
cdef godot_method_bind *bind_meshdatatool_set_vertex_uv2
cdef godot_method_bind *bind_meshdatatool_set_vertex_weights
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_meshdatatool_clear = api_core.godot_method_bind_get_method('MeshDataTool', 'clear')
  bind_meshdatatool_commit_to_surface = api_core.godot_method_bind_get_method('MeshDataTool', 'commit_to_surface')
  bind_meshdatatool_create_from_surface = api_core.godot_method_bind_get_method('MeshDataTool', 'create_from_surface')
  bind_meshdatatool_get_edge_count = api_core.godot_method_bind_get_method('MeshDataTool', 'get_edge_count')
  bind_meshdatatool_get_edge_faces = api_core.godot_method_bind_get_method('MeshDataTool', 'get_edge_faces')
  bind_meshdatatool_get_edge_meta = api_core.godot_method_bind_get_method('MeshDataTool', 'get_edge_meta')
  bind_meshdatatool_get_edge_vertex = api_core.godot_method_bind_get_method('MeshDataTool', 'get_edge_vertex')
  bind_meshdatatool_get_face_count = api_core.godot_method_bind_get_method('MeshDataTool', 'get_face_count')
  bind_meshdatatool_get_face_edge = api_core.godot_method_bind_get_method('MeshDataTool', 'get_face_edge')
  bind_meshdatatool_get_face_meta = api_core.godot_method_bind_get_method('MeshDataTool', 'get_face_meta')
  bind_meshdatatool_get_face_normal = api_core.godot_method_bind_get_method('MeshDataTool', 'get_face_normal')
  bind_meshdatatool_get_face_vertex = api_core.godot_method_bind_get_method('MeshDataTool', 'get_face_vertex')
  bind_meshdatatool_get_format = api_core.godot_method_bind_get_method('MeshDataTool', 'get_format')
  bind_meshdatatool_get_material = api_core.godot_method_bind_get_method('MeshDataTool', 'get_material')
  bind_meshdatatool_get_vertex = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex')
  bind_meshdatatool_get_vertex_bones = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_bones')
  bind_meshdatatool_get_vertex_color = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_color')
  bind_meshdatatool_get_vertex_count = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_count')
  bind_meshdatatool_get_vertex_edges = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_edges')
  bind_meshdatatool_get_vertex_faces = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_faces')
  bind_meshdatatool_get_vertex_meta = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_meta')
  bind_meshdatatool_get_vertex_normal = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_normal')
  bind_meshdatatool_get_vertex_tangent = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_tangent')
  bind_meshdatatool_get_vertex_uv = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_uv')
  bind_meshdatatool_get_vertex_uv2 = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_uv2')
  bind_meshdatatool_get_vertex_weights = api_core.godot_method_bind_get_method('MeshDataTool', 'get_vertex_weights')
  bind_meshdatatool_set_edge_meta = api_core.godot_method_bind_get_method('MeshDataTool', 'set_edge_meta')
  bind_meshdatatool_set_face_meta = api_core.godot_method_bind_get_method('MeshDataTool', 'set_face_meta')
  bind_meshdatatool_set_material = api_core.godot_method_bind_get_method('MeshDataTool', 'set_material')
  bind_meshdatatool_set_vertex = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex')
  bind_meshdatatool_set_vertex_bones = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_bones')
  bind_meshdatatool_set_vertex_color = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_color')
  bind_meshdatatool_set_vertex_meta = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_meta')
  bind_meshdatatool_set_vertex_normal = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_normal')
  bind_meshdatatool_set_vertex_tangent = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_tangent')
  bind_meshdatatool_set_vertex_uv = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_uv')
  bind_meshdatatool_set_vertex_uv2 = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_uv2')
  bind_meshdatatool_set_vertex_weights = api_core.godot_method_bind_get_method('MeshDataTool', 'set_vertex_weights')

############################Generated class###################################
cdef class MeshDataTool(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshDataTool")())
##################################Generated Methods#########################################
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_meshdatatool_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  commit_to_surface(self,  classes.ArrayMesh.ArrayMesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_commit_to_surface,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  create_from_surface(self,  classes.ArrayMesh.ArrayMesh mesh,  int surface):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = mesh.godot_owner
    args[1] = &surface
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_create_from_surface,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_edge_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_edge_faces(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_faces,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_edge_meta(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_meta,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_edge_vertex(self,  int idx,  int vertex):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &idx
    args[1] = &vertex
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_vertex,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_face_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_face_edge(self,  int idx,  int edge):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &idx
    args[1] = &edge
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_edge,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_face_meta(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_meta,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_face_normal(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_normal,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_face_vertex(self,  int idx,  int vertex):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &idx
    args[1] = &vertex
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_vertex,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_material,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_vertex(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_vertex_bones(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_bones,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_vertex_color(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_color,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  get_vertex_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_vertex_edges(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_edges,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_vertex_faces(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_faces,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_vertex_meta(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_meta,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_vertex_normal(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_normal,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_vertex_tangent(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_plane* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_tangent,self.godot_owner,args,&ret)
    hello('hallo2')
    return Plane.new_static(dereference(ret))

  def  get_vertex_uv(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_uv,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_vertex_uv2(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_uv2,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_vertex_weights(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_weights,self.godot_owner,args,&ret)
    hello('hallo2')
  def  set_edge_meta(self,  int idx,  Variant meta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &meta._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_edge_meta,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_face_meta(self,  int idx,  Variant meta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &meta._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_face_meta,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex(self,  int idx,  Vector3 vertex):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &vertex._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_bones(self,  int idx,  PoolIntArray bones):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &bones._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_bones,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_color(self,  int idx,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &color._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_color,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_meta(self,  int idx,  Variant meta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &meta._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_meta,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_normal(self,  int idx,  Vector3 normal):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &normal._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_normal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_tangent(self,  int idx,  Plane tangent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &tangent._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_tangent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_uv(self,  int idx,  Vector2 uv):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &uv._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_uv,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_uv2(self,  int idx,  Vector2 uv2):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &uv2._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_uv2,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertex_weights(self,  int idx,  PoolRealArray weights):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &weights._native
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_weights,self.godot_owner,args,NULL)
    hello('hallo2')
