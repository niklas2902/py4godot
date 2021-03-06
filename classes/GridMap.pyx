from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gridmap__update_octants_callback
cdef godot_method_bind *bind_gridmap_clear
cdef godot_method_bind *bind_gridmap_clear_baked_meshes
cdef godot_method_bind *bind_gridmap_get_bake_mesh_instance
cdef godot_method_bind *bind_gridmap_get_bake_meshes
cdef godot_method_bind *bind_gridmap_get_cell_item
cdef godot_method_bind *bind_gridmap_get_cell_item_orientation
cdef godot_method_bind *bind_gridmap_get_cell_scale
cdef godot_method_bind *bind_gridmap_get_cell_size
cdef godot_method_bind *bind_gridmap_get_center_x
cdef godot_method_bind *bind_gridmap_get_center_y
cdef godot_method_bind *bind_gridmap_get_center_z
cdef godot_method_bind *bind_gridmap_get_collision_layer
cdef godot_method_bind *bind_gridmap_get_collision_layer_bit
cdef godot_method_bind *bind_gridmap_get_collision_mask
cdef godot_method_bind *bind_gridmap_get_collision_mask_bit
cdef godot_method_bind *bind_gridmap_get_mesh_library
cdef godot_method_bind *bind_gridmap_get_meshes
cdef godot_method_bind *bind_gridmap_get_octant_size
cdef godot_method_bind *bind_gridmap_get_used_cells
cdef godot_method_bind *bind_gridmap_make_baked_meshes
cdef godot_method_bind *bind_gridmap_map_to_world
cdef godot_method_bind *bind_gridmap_resource_changed
cdef godot_method_bind *bind_gridmap_set_cell_item
cdef godot_method_bind *bind_gridmap_set_cell_scale
cdef godot_method_bind *bind_gridmap_set_cell_size
cdef godot_method_bind *bind_gridmap_set_center_x
cdef godot_method_bind *bind_gridmap_set_center_y
cdef godot_method_bind *bind_gridmap_set_center_z
cdef godot_method_bind *bind_gridmap_set_clip
cdef godot_method_bind *bind_gridmap_set_collision_layer
cdef godot_method_bind *bind_gridmap_set_collision_layer_bit
cdef godot_method_bind *bind_gridmap_set_collision_mask
cdef godot_method_bind *bind_gridmap_set_collision_mask_bit
cdef godot_method_bind *bind_gridmap_set_mesh_library
cdef godot_method_bind *bind_gridmap_set_octant_size
cdef godot_method_bind *bind_gridmap_world_to_map
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gridmap__update_octants_callback = api_core.godot_method_bind_get_method('GridMap', '_update_octants_callback')
  bind_gridmap_clear = api_core.godot_method_bind_get_method('GridMap', 'clear')
  bind_gridmap_clear_baked_meshes = api_core.godot_method_bind_get_method('GridMap', 'clear_baked_meshes')
  bind_gridmap_get_bake_mesh_instance = api_core.godot_method_bind_get_method('GridMap', 'get_bake_mesh_instance')
  bind_gridmap_get_bake_meshes = api_core.godot_method_bind_get_method('GridMap', 'get_bake_meshes')
  bind_gridmap_get_cell_item = api_core.godot_method_bind_get_method('GridMap', 'get_cell_item')
  bind_gridmap_get_cell_item_orientation = api_core.godot_method_bind_get_method('GridMap', 'get_cell_item_orientation')
  bind_gridmap_get_cell_scale = api_core.godot_method_bind_get_method('GridMap', 'get_cell_scale')
  bind_gridmap_get_cell_size = api_core.godot_method_bind_get_method('GridMap', 'get_cell_size')
  bind_gridmap_get_center_x = api_core.godot_method_bind_get_method('GridMap', 'get_center_x')
  bind_gridmap_get_center_y = api_core.godot_method_bind_get_method('GridMap', 'get_center_y')
  bind_gridmap_get_center_z = api_core.godot_method_bind_get_method('GridMap', 'get_center_z')
  bind_gridmap_get_collision_layer = api_core.godot_method_bind_get_method('GridMap', 'get_collision_layer')
  bind_gridmap_get_collision_layer_bit = api_core.godot_method_bind_get_method('GridMap', 'get_collision_layer_bit')
  bind_gridmap_get_collision_mask = api_core.godot_method_bind_get_method('GridMap', 'get_collision_mask')
  bind_gridmap_get_collision_mask_bit = api_core.godot_method_bind_get_method('GridMap', 'get_collision_mask_bit')
  bind_gridmap_get_mesh_library = api_core.godot_method_bind_get_method('GridMap', 'get_mesh_library')
  bind_gridmap_get_meshes = api_core.godot_method_bind_get_method('GridMap', 'get_meshes')
  bind_gridmap_get_octant_size = api_core.godot_method_bind_get_method('GridMap', 'get_octant_size')
  bind_gridmap_get_used_cells = api_core.godot_method_bind_get_method('GridMap', 'get_used_cells')
  bind_gridmap_make_baked_meshes = api_core.godot_method_bind_get_method('GridMap', 'make_baked_meshes')
  bind_gridmap_map_to_world = api_core.godot_method_bind_get_method('GridMap', 'map_to_world')
  bind_gridmap_resource_changed = api_core.godot_method_bind_get_method('GridMap', 'resource_changed')
  bind_gridmap_set_cell_item = api_core.godot_method_bind_get_method('GridMap', 'set_cell_item')
  bind_gridmap_set_cell_scale = api_core.godot_method_bind_get_method('GridMap', 'set_cell_scale')
  bind_gridmap_set_cell_size = api_core.godot_method_bind_get_method('GridMap', 'set_cell_size')
  bind_gridmap_set_center_x = api_core.godot_method_bind_get_method('GridMap', 'set_center_x')
  bind_gridmap_set_center_y = api_core.godot_method_bind_get_method('GridMap', 'set_center_y')
  bind_gridmap_set_center_z = api_core.godot_method_bind_get_method('GridMap', 'set_center_z')
  bind_gridmap_set_clip = api_core.godot_method_bind_get_method('GridMap', 'set_clip')
  bind_gridmap_set_collision_layer = api_core.godot_method_bind_get_method('GridMap', 'set_collision_layer')
  bind_gridmap_set_collision_layer_bit = api_core.godot_method_bind_get_method('GridMap', 'set_collision_layer_bit')
  bind_gridmap_set_collision_mask = api_core.godot_method_bind_get_method('GridMap', 'set_collision_mask')
  bind_gridmap_set_collision_mask_bit = api_core.godot_method_bind_get_method('GridMap', 'set_collision_mask_bit')
  bind_gridmap_set_mesh_library = api_core.godot_method_bind_get_method('GridMap', 'set_mesh_library')
  bind_gridmap_set_octant_size = api_core.godot_method_bind_get_method('GridMap', 'set_octant_size')
  bind_gridmap_world_to_map = api_core.godot_method_bind_get_method('GridMap', 'world_to_map')

############################Generated class###################################
cdef class GridMap(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GridMap")())
##################################Generated Properties#########################################
  @property
  def cell_center_x(self): 
    return self.get_cell_center_x()
  @cell_center_x.setter 
  def cell_center_x(self,value): 
    self.set_cell_center_x(value)
  @property
  def cell_center_y(self): 
    return self.get_cell_center_y()
  @cell_center_y.setter 
  def cell_center_y(self,value): 
    self.set_cell_center_y(value)
  @property
  def cell_center_z(self): 
    return self.get_cell_center_z()
  @cell_center_z.setter 
  def cell_center_z(self,value): 
    self.set_cell_center_z(value)
  @property
  def cell_octant_size(self): 
    return self.get_cell_octant_size()
  @cell_octant_size.setter 
  def cell_octant_size(self,value): 
    self.set_cell_octant_size(value)
  @property
  def cell_scale(self): 
    return self.get_cell_scale()
  @cell_scale.setter 
  def cell_scale(self,value): 
    self.set_cell_scale(value)
  @property
  def cell_size(self): 
    return self.get_cell_size()
  @cell_size.setter 
  def cell_size(self,value): 
    self.set_cell_size(value)
  @property
  def collision_layer(self): 
    return self.get_collision_layer()
  @collision_layer.setter 
  def collision_layer(self,value): 
    self.set_collision_layer(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def mesh_library(self): 
    return self.get_mesh_library()
  @mesh_library.setter 
  def mesh_library(self,value): 
    self.set_mesh_library(value)

##################################Generated Methods#########################################
  def  _update_octants_callback(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap__update_octants_callback,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_clear,self.godot_owner,[NULL,],NULL)
  def  clear_baked_meshes(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_clear_baked_meshes,self.godot_owner,[NULL,],NULL)
  def  get_bake_mesh_instance(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_bake_mesh_instance,self.godot_owner,[NULL,],&ret)
  def  get_bake_meshes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_bake_meshes,self.godot_owner,[NULL,],&ret)
  def  get_cell_item(self, xyz):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_cell_item,self.godot_owner,[NULL,],&ret)
  def  get_cell_item_orientation(self, xyz):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_cell_item_orientation,self.godot_owner,[NULL,],&ret)
  def  get_cell_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_cell_scale,self.godot_owner,[NULL,],&ret)
  def  get_cell_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_cell_size,self.godot_owner,[NULL,],&ret)
  def  get_center_x(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_center_x,self.godot_owner,[NULL,],&ret)
  def  get_center_y(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_center_y,self.godot_owner,[NULL,],&ret)
  def  get_center_z(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_center_z,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_collision_layer_bit,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_mesh_library(self):
    cdef godot_object *_owner = self.godot_owner
    cdef MeshLibrary ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_mesh_library,self.godot_owner,[NULL,],&ret)
  def  get_meshes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_meshes,self.godot_owner,[NULL,],&ret)
  def  get_octant_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_octant_size,self.godot_owner,[NULL,],&ret)
  def  get_used_cells(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_get_used_cells,self.godot_owner,[NULL,],&ret)
  def  make_baked_meshes(self, gen_lightmap_uvlightmap_uv_texel_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_make_baked_meshes,self.godot_owner,[NULL,],NULL)
  def  map_to_world(self, xyz):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_map_to_world,self.godot_owner,[NULL,],&ret)
  def  resource_changed(self, resource):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_resource_changed,self.godot_owner,[NULL,],NULL)
  def  set_cell_item(self, xyzitemorientation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_cell_item,self.godot_owner,[NULL,],NULL)
  def  set_cell_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_cell_scale,self.godot_owner,[NULL,],NULL)
  def  set_cell_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_cell_size,self.godot_owner,[NULL,],NULL)
  def  set_center_x(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_center_x,self.godot_owner,[NULL,],NULL)
  def  set_center_y(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_center_y,self.godot_owner,[NULL,],NULL)
  def  set_center_z(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_center_z,self.godot_owner,[NULL,],NULL)
  def  set_clip(self, enabledclipaboveflooraxis):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_clip,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer(self, layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_collision_layer_bit,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
  def  set_mesh_library(self, mesh_library):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_mesh_library,self.godot_owner,[NULL,],NULL)
  def  set_octant_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gridmap_set_octant_size,self.godot_owner,[NULL,],NULL)
  def  world_to_map(self, pos):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_gridmap_world_to_map,self.godot_owner,[NULL,],&ret)
