from classes.GeometryInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class MeshInstance(GeometryInstance):
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
    api_core.godot_method_bind_ptrcall(bind_meshinstance__mesh_changed,self.godot_owner,[NULL,],NULL)
  def  create_convex_collision(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_create_convex_collision,self.godot_owner,[NULL,],NULL)
  def  create_debug_tangents(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_create_debug_tangents,self.godot_owner,[NULL,],NULL)
  def  create_trimesh_collision(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_create_trimesh_collision,self.godot_owner,[NULL,],NULL)
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_mesh,self.godot_owner,[NULL,],&ret)
  def  get_skeleton_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_skeleton_path,self.godot_owner,[NULL,],&ret)
  def  get_skin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Skin ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_skin,self.godot_owner,[NULL,],&ret)
  def  get_surface_material(self, surface):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_surface_material,self.godot_owner,[NULL,],&ret)
  def  get_surface_material_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_meshinstance_get_surface_material_count,self.godot_owner,[NULL,],&ret)
  def  set_mesh(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_mesh,self.godot_owner,[NULL,],NULL)
  def  set_skeleton_path(self, skeleton_path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_skeleton_path,self.godot_owner,[NULL,],NULL)
  def  set_skin(self, skin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_skin,self.godot_owner,[NULL,],NULL)
  def  set_surface_material(self, surfacematerial):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_meshinstance_set_surface_material,self.godot_owner,[NULL,],NULL)
