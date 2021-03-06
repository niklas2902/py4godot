from classes.Mesh cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arraymesh_add_blend_shape
cdef godot_method_bind *bind_arraymesh_add_surface_from_arrays
cdef godot_method_bind *bind_arraymesh_clear_blend_shapes
cdef godot_method_bind *bind_arraymesh_get_blend_shape_count
cdef godot_method_bind *bind_arraymesh_get_blend_shape_mode
cdef godot_method_bind *bind_arraymesh_get_blend_shape_name
cdef godot_method_bind *bind_arraymesh_get_custom_aabb
cdef godot_method_bind *bind_arraymesh_lightmap_unwrap
cdef godot_method_bind *bind_arraymesh_regen_normalmaps
cdef godot_method_bind *bind_arraymesh_set_blend_shape_mode
cdef godot_method_bind *bind_arraymesh_set_custom_aabb
cdef godot_method_bind *bind_arraymesh_surface_find_by_name
cdef godot_method_bind *bind_arraymesh_surface_get_array_index_len
cdef godot_method_bind *bind_arraymesh_surface_get_array_len
cdef godot_method_bind *bind_arraymesh_surface_get_format
cdef godot_method_bind *bind_arraymesh_surface_get_name
cdef godot_method_bind *bind_arraymesh_surface_get_primitive_type
cdef godot_method_bind *bind_arraymesh_surface_remove
cdef godot_method_bind *bind_arraymesh_surface_set_name
cdef godot_method_bind *bind_arraymesh_surface_update_region
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arraymesh_add_blend_shape = api_core.godot_method_bind_get_method('ArrayMesh', 'add_blend_shape')
  bind_arraymesh_add_surface_from_arrays = api_core.godot_method_bind_get_method('ArrayMesh', 'add_surface_from_arrays')
  bind_arraymesh_clear_blend_shapes = api_core.godot_method_bind_get_method('ArrayMesh', 'clear_blend_shapes')
  bind_arraymesh_get_blend_shape_count = api_core.godot_method_bind_get_method('ArrayMesh', 'get_blend_shape_count')
  bind_arraymesh_get_blend_shape_mode = api_core.godot_method_bind_get_method('ArrayMesh', 'get_blend_shape_mode')
  bind_arraymesh_get_blend_shape_name = api_core.godot_method_bind_get_method('ArrayMesh', 'get_blend_shape_name')
  bind_arraymesh_get_custom_aabb = api_core.godot_method_bind_get_method('ArrayMesh', 'get_custom_aabb')
  bind_arraymesh_lightmap_unwrap = api_core.godot_method_bind_get_method('ArrayMesh', 'lightmap_unwrap')
  bind_arraymesh_regen_normalmaps = api_core.godot_method_bind_get_method('ArrayMesh', 'regen_normalmaps')
  bind_arraymesh_set_blend_shape_mode = api_core.godot_method_bind_get_method('ArrayMesh', 'set_blend_shape_mode')
  bind_arraymesh_set_custom_aabb = api_core.godot_method_bind_get_method('ArrayMesh', 'set_custom_aabb')
  bind_arraymesh_surface_find_by_name = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_find_by_name')
  bind_arraymesh_surface_get_array_index_len = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_array_index_len')
  bind_arraymesh_surface_get_array_len = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_array_len')
  bind_arraymesh_surface_get_format = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_format')
  bind_arraymesh_surface_get_name = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_name')
  bind_arraymesh_surface_get_primitive_type = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_get_primitive_type')
  bind_arraymesh_surface_remove = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_remove')
  bind_arraymesh_surface_set_name = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_set_name')
  bind_arraymesh_surface_update_region = api_core.godot_method_bind_get_method('ArrayMesh', 'surface_update_region')

############################Generated class###################################
cdef class ArrayMesh(Mesh):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ArrayMesh")())
##################################Generated Properties#########################################
  @property
  def blend_shape_mode(self): 
    return self.get_blend_shape_mode()
  @blend_shape_mode.setter 
  def blend_shape_mode(self,value): 
    self.set_blend_shape_mode(value)
  @property
  def custom_aabb(self): 
    return self.get_custom_aabb()
  @custom_aabb.setter 
  def custom_aabb(self,value): 
    self.set_custom_aabb(value)

##################################Generated Methods#########################################
  def  add_blend_shape(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_add_blend_shape,self.godot_owner,[NULL,],NULL)
  def  add_surface_from_arrays(self, primitivearraysblend_shapescompress_flags):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_add_surface_from_arrays,self.godot_owner,[NULL,],NULL)
  def  clear_blend_shapes(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_clear_blend_shapes,self.godot_owner,[NULL,],NULL)
  def  get_blend_shape_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_blend_shape_count,self.godot_owner,[NULL,],&ret)
  def  get_blend_shape_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh::BlendShapeMode ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_blend_shape_mode,self.godot_owner,[NULL,],&ret)
  def  get_blend_shape_name(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_blend_shape_name,self.godot_owner,[NULL,],&ret)
  def  get_custom_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_get_custom_aabb,self.godot_owner,[NULL,],&ret)
  def  lightmap_unwrap(self, transformtexel_size):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_lightmap_unwrap,self.godot_owner,[NULL,],&ret)
  def  regen_normalmaps(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_regen_normalmaps,self.godot_owner,[NULL,],NULL)
  def  set_blend_shape_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_set_blend_shape_mode,self.godot_owner,[NULL,],NULL)
  def  set_custom_aabb(self, aabb):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_set_custom_aabb,self.godot_owner,[NULL,],NULL)
  def  surface_find_by_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_find_by_name,self.godot_owner,[NULL,],&ret)
  def  surface_get_array_index_len(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_array_index_len,self.godot_owner,[NULL,],&ret)
  def  surface_get_array_len(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_array_len,self.godot_owner,[NULL,],&ret)
  def  surface_get_format(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_format,self.godot_owner,[NULL,],&ret)
  def  surface_get_name(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_name,self.godot_owner,[NULL,],&ret)
  def  surface_get_primitive_type(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh::PrimitiveType ret
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_get_primitive_type,self.godot_owner,[NULL,],&ret)
  def  surface_remove(self, surf_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_remove,self.godot_owner,[NULL,],NULL)
  def  surface_set_name(self, surf_idxname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_set_name,self.godot_owner,[NULL,],NULL)
  def  surface_update_region(self, surf_idxoffsetdata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arraymesh_surface_update_region,self.godot_owner,[NULL,],NULL)
