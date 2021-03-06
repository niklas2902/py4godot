from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class MeshDataTool(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MeshDataTool")())
##################################Generated Methods#########################################
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_clear,self.godot_owner,[NULL,],NULL)
  def  commit_to_surface(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_commit_to_surface,self.godot_owner,[NULL,],&ret)
  def  create_from_surface(self, meshsurface):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_create_from_surface,self.godot_owner,[NULL,],&ret)
  def  get_edge_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_count,self.godot_owner,[NULL,],&ret)
  def  get_edge_faces(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_faces,self.godot_owner,[NULL,],&ret)
  def  get_edge_meta(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_meta,self.godot_owner,[NULL,],&ret)
  def  get_edge_vertex(self, idxvertex):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_edge_vertex,self.godot_owner,[NULL,],&ret)
  def  get_face_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_count,self.godot_owner,[NULL,],&ret)
  def  get_face_edge(self, idxedge):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_edge,self.godot_owner,[NULL,],&ret)
  def  get_face_meta(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_meta,self.godot_owner,[NULL,],&ret)
  def  get_face_normal(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_normal,self.godot_owner,[NULL,],&ret)
  def  get_face_vertex(self, idxvertex):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_face_vertex,self.godot_owner,[NULL,],&ret)
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_format,self.godot_owner,[NULL,],&ret)
  def  get_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_material,self.godot_owner,[NULL,],&ret)
  def  get_vertex(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex,self.godot_owner,[NULL,],&ret)
  def  get_vertex_bones(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_bones,self.godot_owner,[NULL,],&ret)
  def  get_vertex_color(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_color,self.godot_owner,[NULL,],&ret)
  def  get_vertex_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_count,self.godot_owner,[NULL,],&ret)
  def  get_vertex_edges(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_edges,self.godot_owner,[NULL,],&ret)
  def  get_vertex_faces(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_faces,self.godot_owner,[NULL,],&ret)
  def  get_vertex_meta(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_meta,self.godot_owner,[NULL,],&ret)
  def  get_vertex_normal(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_normal,self.godot_owner,[NULL,],&ret)
  def  get_vertex_tangent(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Plane ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_tangent,self.godot_owner,[NULL,],&ret)
  def  get_vertex_uv(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_uv,self.godot_owner,[NULL,],&ret)
  def  get_vertex_uv2(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_uv2,self.godot_owner,[NULL,],&ret)
  def  get_vertex_weights(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolRealArray ret
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_get_vertex_weights,self.godot_owner,[NULL,],&ret)
  def  set_edge_meta(self, idxmeta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_edge_meta,self.godot_owner,[NULL,],NULL)
  def  set_face_meta(self, idxmeta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_face_meta,self.godot_owner,[NULL,],NULL)
  def  set_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_material,self.godot_owner,[NULL,],NULL)
  def  set_vertex(self, idxvertex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex,self.godot_owner,[NULL,],NULL)
  def  set_vertex_bones(self, idxbones):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_bones,self.godot_owner,[NULL,],NULL)
  def  set_vertex_color(self, idxcolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_color,self.godot_owner,[NULL,],NULL)
  def  set_vertex_meta(self, idxmeta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_meta,self.godot_owner,[NULL,],NULL)
  def  set_vertex_normal(self, idxnormal):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_normal,self.godot_owner,[NULL,],NULL)
  def  set_vertex_tangent(self, idxtangent):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_tangent,self.godot_owner,[NULL,],NULL)
  def  set_vertex_uv(self, idxuv):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_uv,self.godot_owner,[NULL,],NULL)
  def  set_vertex_uv2(self, idxuv2):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_uv2,self.godot_owner,[NULL,],NULL)
  def  set_vertex_weights(self, idxweights):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshdatatool_set_vertex_weights,self.godot_owner,[NULL,],NULL)
