from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class Mesh(Resource):
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
    cdef Shape ret
    api_core.godot_method_bind_ptrcall(bind_mesh_create_convex_shape,self.godot_owner,[NULL,],&ret)
  def  create_outline(self, margin):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_mesh_create_outline,self.godot_owner,[NULL,],&ret)
  def  create_trimesh_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Shape ret
    api_core.godot_method_bind_ptrcall(bind_mesh_create_trimesh_shape,self.godot_owner,[NULL,],&ret)
  def  generate_triangle_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef TriangleMesh ret
    api_core.godot_method_bind_ptrcall(bind_mesh_generate_triangle_mesh,self.godot_owner,[NULL,],&ret)
  def  get_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_mesh_get_aabb,self.godot_owner,[NULL,],&ret)
  def  get_faces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector3Array ret
    api_core.godot_method_bind_ptrcall(bind_mesh_get_faces,self.godot_owner,[NULL,],&ret)
  def  get_lightmap_size_hint(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_mesh_get_lightmap_size_hint,self.godot_owner,[NULL,],&ret)
  def  get_surface_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_mesh_get_surface_count,self.godot_owner,[NULL,],&ret)
  def  set_lightmap_size_hint(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mesh_set_lightmap_size_hint,self.godot_owner,[NULL,],NULL)
  def  surface_get_arrays(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_get_arrays,self.godot_owner,[NULL,],&ret)
  def  surface_get_blend_shape_arrays(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_get_blend_shape_arrays,self.godot_owner,[NULL,],&ret)
  def  surface_get_material(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_get_material,self.godot_owner,[NULL,],&ret)
  def  surface_set_material(self, surf_idxmaterial):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_mesh_surface_set_material,self.godot_owner,[NULL,],NULL)
