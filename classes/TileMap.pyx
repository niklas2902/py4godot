
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
cimport classes.TileSet
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tilemap__clear_quadrants
cdef godot_method_bind *bind_tilemap__get_old_cell_size
cdef godot_method_bind *bind_tilemap__get_tile_data
cdef godot_method_bind *bind_tilemap__recreate_quadrants
cdef godot_method_bind *bind_tilemap__set_celld
cdef godot_method_bind *bind_tilemap__set_old_cell_size
cdef godot_method_bind *bind_tilemap__set_tile_data
cdef godot_method_bind *bind_tilemap_clear
cdef godot_method_bind *bind_tilemap_fix_invalid_tiles
cdef godot_method_bind *bind_tilemap_get_cell
cdef godot_method_bind *bind_tilemap_get_cell_autotile_coord
cdef godot_method_bind *bind_tilemap_get_cell_size
cdef godot_method_bind *bind_tilemap_get_cellv
cdef godot_method_bind *bind_tilemap_get_clip_uv
cdef godot_method_bind *bind_tilemap_get_collision_bounce
cdef godot_method_bind *bind_tilemap_get_collision_friction
cdef godot_method_bind *bind_tilemap_get_collision_layer
cdef godot_method_bind *bind_tilemap_get_collision_layer_bit
cdef godot_method_bind *bind_tilemap_get_collision_mask
cdef godot_method_bind *bind_tilemap_get_collision_mask_bit
cdef godot_method_bind *bind_tilemap_get_collision_use_kinematic
cdef godot_method_bind *bind_tilemap_get_collision_use_parent
cdef godot_method_bind *bind_tilemap_get_custom_transform
cdef godot_method_bind *bind_tilemap_get_half_offset
cdef godot_method_bind *bind_tilemap_get_mode
cdef godot_method_bind *bind_tilemap_get_occluder_light_mask
cdef godot_method_bind *bind_tilemap_get_quadrant_size
cdef godot_method_bind *bind_tilemap_get_tile_origin
cdef godot_method_bind *bind_tilemap_get_tileset
cdef godot_method_bind *bind_tilemap_get_used_cells
cdef godot_method_bind *bind_tilemap_get_used_cells_by_id
cdef godot_method_bind *bind_tilemap_get_used_rect
cdef godot_method_bind *bind_tilemap_is_cell_transposed
cdef godot_method_bind *bind_tilemap_is_cell_x_flipped
cdef godot_method_bind *bind_tilemap_is_cell_y_flipped
cdef godot_method_bind *bind_tilemap_is_centered_textures_enabled
cdef godot_method_bind *bind_tilemap_is_compatibility_mode_enabled
cdef godot_method_bind *bind_tilemap_is_y_sort_mode_enabled
cdef godot_method_bind *bind_tilemap_map_to_world
cdef godot_method_bind *bind_tilemap_set_cell
cdef godot_method_bind *bind_tilemap_set_cell_size
cdef godot_method_bind *bind_tilemap_set_cellv
cdef godot_method_bind *bind_tilemap_set_centered_textures
cdef godot_method_bind *bind_tilemap_set_clip_uv
cdef godot_method_bind *bind_tilemap_set_collision_bounce
cdef godot_method_bind *bind_tilemap_set_collision_friction
cdef godot_method_bind *bind_tilemap_set_collision_layer
cdef godot_method_bind *bind_tilemap_set_collision_layer_bit
cdef godot_method_bind *bind_tilemap_set_collision_mask
cdef godot_method_bind *bind_tilemap_set_collision_mask_bit
cdef godot_method_bind *bind_tilemap_set_collision_use_kinematic
cdef godot_method_bind *bind_tilemap_set_collision_use_parent
cdef godot_method_bind *bind_tilemap_set_compatibility_mode
cdef godot_method_bind *bind_tilemap_set_custom_transform
cdef godot_method_bind *bind_tilemap_set_half_offset
cdef godot_method_bind *bind_tilemap_set_mode
cdef godot_method_bind *bind_tilemap_set_occluder_light_mask
cdef godot_method_bind *bind_tilemap_set_quadrant_size
cdef godot_method_bind *bind_tilemap_set_tile_origin
cdef godot_method_bind *bind_tilemap_set_tileset
cdef godot_method_bind *bind_tilemap_set_y_sort_mode
cdef godot_method_bind *bind_tilemap_update_bitmask_area
cdef godot_method_bind *bind_tilemap_update_bitmask_region
cdef godot_method_bind *bind_tilemap_update_dirty_quadrants
cdef godot_method_bind *bind_tilemap_world_to_map
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tilemap__clear_quadrants = api_core.godot_method_bind_get_method('TileMap', '_clear_quadrants')
  bind_tilemap__get_old_cell_size = api_core.godot_method_bind_get_method('TileMap', '_get_old_cell_size')
  bind_tilemap__get_tile_data = api_core.godot_method_bind_get_method('TileMap', '_get_tile_data')
  bind_tilemap__recreate_quadrants = api_core.godot_method_bind_get_method('TileMap', '_recreate_quadrants')
  bind_tilemap__set_celld = api_core.godot_method_bind_get_method('TileMap', '_set_celld')
  bind_tilemap__set_old_cell_size = api_core.godot_method_bind_get_method('TileMap', '_set_old_cell_size')
  bind_tilemap__set_tile_data = api_core.godot_method_bind_get_method('TileMap', '_set_tile_data')
  bind_tilemap_clear = api_core.godot_method_bind_get_method('TileMap', 'clear')
  bind_tilemap_fix_invalid_tiles = api_core.godot_method_bind_get_method('TileMap', 'fix_invalid_tiles')
  bind_tilemap_get_cell = api_core.godot_method_bind_get_method('TileMap', 'get_cell')
  bind_tilemap_get_cell_autotile_coord = api_core.godot_method_bind_get_method('TileMap', 'get_cell_autotile_coord')
  bind_tilemap_get_cell_size = api_core.godot_method_bind_get_method('TileMap', 'get_cell_size')
  bind_tilemap_get_cellv = api_core.godot_method_bind_get_method('TileMap', 'get_cellv')
  bind_tilemap_get_clip_uv = api_core.godot_method_bind_get_method('TileMap', 'get_clip_uv')
  bind_tilemap_get_collision_bounce = api_core.godot_method_bind_get_method('TileMap', 'get_collision_bounce')
  bind_tilemap_get_collision_friction = api_core.godot_method_bind_get_method('TileMap', 'get_collision_friction')
  bind_tilemap_get_collision_layer = api_core.godot_method_bind_get_method('TileMap', 'get_collision_layer')
  bind_tilemap_get_collision_layer_bit = api_core.godot_method_bind_get_method('TileMap', 'get_collision_layer_bit')
  bind_tilemap_get_collision_mask = api_core.godot_method_bind_get_method('TileMap', 'get_collision_mask')
  bind_tilemap_get_collision_mask_bit = api_core.godot_method_bind_get_method('TileMap', 'get_collision_mask_bit')
  bind_tilemap_get_collision_use_kinematic = api_core.godot_method_bind_get_method('TileMap', 'get_collision_use_kinematic')
  bind_tilemap_get_collision_use_parent = api_core.godot_method_bind_get_method('TileMap', 'get_collision_use_parent')
  bind_tilemap_get_custom_transform = api_core.godot_method_bind_get_method('TileMap', 'get_custom_transform')
  bind_tilemap_get_half_offset = api_core.godot_method_bind_get_method('TileMap', 'get_half_offset')
  bind_tilemap_get_mode = api_core.godot_method_bind_get_method('TileMap', 'get_mode')
  bind_tilemap_get_occluder_light_mask = api_core.godot_method_bind_get_method('TileMap', 'get_occluder_light_mask')
  bind_tilemap_get_quadrant_size = api_core.godot_method_bind_get_method('TileMap', 'get_quadrant_size')
  bind_tilemap_get_tile_origin = api_core.godot_method_bind_get_method('TileMap', 'get_tile_origin')
  bind_tilemap_get_tileset = api_core.godot_method_bind_get_method('TileMap', 'get_tileset')
  bind_tilemap_get_used_cells = api_core.godot_method_bind_get_method('TileMap', 'get_used_cells')
  bind_tilemap_get_used_cells_by_id = api_core.godot_method_bind_get_method('TileMap', 'get_used_cells_by_id')
  bind_tilemap_get_used_rect = api_core.godot_method_bind_get_method('TileMap', 'get_used_rect')
  bind_tilemap_is_cell_transposed = api_core.godot_method_bind_get_method('TileMap', 'is_cell_transposed')
  bind_tilemap_is_cell_x_flipped = api_core.godot_method_bind_get_method('TileMap', 'is_cell_x_flipped')
  bind_tilemap_is_cell_y_flipped = api_core.godot_method_bind_get_method('TileMap', 'is_cell_y_flipped')
  bind_tilemap_is_centered_textures_enabled = api_core.godot_method_bind_get_method('TileMap', 'is_centered_textures_enabled')
  bind_tilemap_is_compatibility_mode_enabled = api_core.godot_method_bind_get_method('TileMap', 'is_compatibility_mode_enabled')
  bind_tilemap_is_y_sort_mode_enabled = api_core.godot_method_bind_get_method('TileMap', 'is_y_sort_mode_enabled')
  bind_tilemap_map_to_world = api_core.godot_method_bind_get_method('TileMap', 'map_to_world')
  bind_tilemap_set_cell = api_core.godot_method_bind_get_method('TileMap', 'set_cell')
  bind_tilemap_set_cell_size = api_core.godot_method_bind_get_method('TileMap', 'set_cell_size')
  bind_tilemap_set_cellv = api_core.godot_method_bind_get_method('TileMap', 'set_cellv')
  bind_tilemap_set_centered_textures = api_core.godot_method_bind_get_method('TileMap', 'set_centered_textures')
  bind_tilemap_set_clip_uv = api_core.godot_method_bind_get_method('TileMap', 'set_clip_uv')
  bind_tilemap_set_collision_bounce = api_core.godot_method_bind_get_method('TileMap', 'set_collision_bounce')
  bind_tilemap_set_collision_friction = api_core.godot_method_bind_get_method('TileMap', 'set_collision_friction')
  bind_tilemap_set_collision_layer = api_core.godot_method_bind_get_method('TileMap', 'set_collision_layer')
  bind_tilemap_set_collision_layer_bit = api_core.godot_method_bind_get_method('TileMap', 'set_collision_layer_bit')
  bind_tilemap_set_collision_mask = api_core.godot_method_bind_get_method('TileMap', 'set_collision_mask')
  bind_tilemap_set_collision_mask_bit = api_core.godot_method_bind_get_method('TileMap', 'set_collision_mask_bit')
  bind_tilemap_set_collision_use_kinematic = api_core.godot_method_bind_get_method('TileMap', 'set_collision_use_kinematic')
  bind_tilemap_set_collision_use_parent = api_core.godot_method_bind_get_method('TileMap', 'set_collision_use_parent')
  bind_tilemap_set_compatibility_mode = api_core.godot_method_bind_get_method('TileMap', 'set_compatibility_mode')
  bind_tilemap_set_custom_transform = api_core.godot_method_bind_get_method('TileMap', 'set_custom_transform')
  bind_tilemap_set_half_offset = api_core.godot_method_bind_get_method('TileMap', 'set_half_offset')
  bind_tilemap_set_mode = api_core.godot_method_bind_get_method('TileMap', 'set_mode')
  bind_tilemap_set_occluder_light_mask = api_core.godot_method_bind_get_method('TileMap', 'set_occluder_light_mask')
  bind_tilemap_set_quadrant_size = api_core.godot_method_bind_get_method('TileMap', 'set_quadrant_size')
  bind_tilemap_set_tile_origin = api_core.godot_method_bind_get_method('TileMap', 'set_tile_origin')
  bind_tilemap_set_tileset = api_core.godot_method_bind_get_method('TileMap', 'set_tileset')
  bind_tilemap_set_y_sort_mode = api_core.godot_method_bind_get_method('TileMap', 'set_y_sort_mode')
  bind_tilemap_update_bitmask_area = api_core.godot_method_bind_get_method('TileMap', 'update_bitmask_area')
  bind_tilemap_update_bitmask_region = api_core.godot_method_bind_get_method('TileMap', 'update_bitmask_region')
  bind_tilemap_update_dirty_quadrants = api_core.godot_method_bind_get_method('TileMap', 'update_dirty_quadrants')
  bind_tilemap_world_to_map = api_core.godot_method_bind_get_method('TileMap', 'world_to_map')

############################Generated class###################################
cdef class TileMap(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TileMap")())
##################################Generated Properties#########################################
  @property
  def cell_clip_uv(self): 
    return self.get_cell_clip_uv()
  @cell_clip_uv.setter 
  def cell_clip_uv(self,value): 
    self.set_cell_clip_uv(value)
  @property
  def cell_custom_transform(self): 
    return self.get_cell_custom_transform()
  @cell_custom_transform.setter 
  def cell_custom_transform(self,value): 
    self.set_cell_custom_transform(value)
  @property
  def cell_half_offset(self): 
    return self.get_cell_half_offset()
  @cell_half_offset.setter 
  def cell_half_offset(self,value): 
    self.set_cell_half_offset(value)
  @property
  def cell_quadrant_size(self): 
    return self.get_cell_quadrant_size()
  @cell_quadrant_size.setter 
  def cell_quadrant_size(self,value): 
    self.set_cell_quadrant_size(value)
  @property
  def cell_size(self): 
    return self.get_cell_size()
  @cell_size.setter 
  def cell_size(self,value): 
    self.set_cell_size(value)
  @property
  def cell_tile_origin(self): 
    return self.get_cell_tile_origin()
  @cell_tile_origin.setter 
  def cell_tile_origin(self,value): 
    self.set_cell_tile_origin(value)
  @property
  def cell_y_sort(self): 
    return self.get_cell_y_sort()
  @cell_y_sort.setter 
  def cell_y_sort(self,value): 
    self.set_cell_y_sort(value)
  @property
  def centered_textures(self): 
    return self.get_centered_textures()
  @centered_textures.setter 
  def centered_textures(self,value): 
    self.set_centered_textures(value)
  @property
  def collision_bounce(self): 
    return self.get_collision_bounce()
  @collision_bounce.setter 
  def collision_bounce(self,value): 
    self.set_collision_bounce(value)
  @property
  def collision_friction(self): 
    return self.get_collision_friction()
  @collision_friction.setter 
  def collision_friction(self,value): 
    self.set_collision_friction(value)
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
  def collision_use_kinematic(self): 
    return self.get_collision_use_kinematic()
  @collision_use_kinematic.setter 
  def collision_use_kinematic(self,value): 
    self.set_collision_use_kinematic(value)
  @property
  def collision_use_parent(self): 
    return self.get_collision_use_parent()
  @collision_use_parent.setter 
  def collision_use_parent(self,value): 
    self.set_collision_use_parent(value)
  @property
  def compatibility_mode(self): 
    return self.get_compatibility_mode()
  @compatibility_mode.setter 
  def compatibility_mode(self,value): 
    self.set_compatibility_mode(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def occluder_light_mask(self): 
    return self.get_occluder_light_mask()
  @occluder_light_mask.setter 
  def occluder_light_mask(self,value): 
    self.set_occluder_light_mask(value)
  @property
  def tile_set(self): 
    return self.get_tile_set()
  @tile_set.setter 
  def tile_set(self,value): 
    self.set_tile_set(value)

##################################Generated Methods#########################################
  def  _clear_quadrants(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tilemap__clear_quadrants,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _get_old_cell_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap__get_old_cell_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _get_tile_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap__get_tile_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  _recreate_quadrants(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tilemap__recreate_quadrants,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _set_celld(self,  Vector2 position,  Dictionary data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &position._native
    args[1] = &data._native
    api_core.godot_method_bind_ptrcall(bind_tilemap__set_celld,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_old_cell_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_tilemap__set_old_cell_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_tile_data(self,  PoolIntArray arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_tilemap__set_tile_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tilemap_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  fix_invalid_tiles(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tilemap_fix_invalid_tiles,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_cell(self,  int x,  int y):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &x
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_tilemap_get_cell,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_cell_autotile_coord(self,  int x,  int y):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &x
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_tilemap_get_cell_autotile_coord,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_cell_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_cell_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_cellv(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_tilemap_get_cellv,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_clip_uv(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_clip_uv,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_bounce(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_bounce,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_friction(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_friction,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_layer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_layer_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_layer_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_use_kinematic(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_use_kinematic,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_use_parent(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_collision_use_parent,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_custom_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_custom_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  get_half_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TileMap_HalfOffset* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_half_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TileMap_Mode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_occluder_light_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_occluder_light_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_quadrant_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_quadrant_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tile_origin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TileMap_TileOrigin* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_tile_origin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tileset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_tileset,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_used_cells(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_used_cells,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_used_cells_by_id(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tilemap_get_used_cells_by_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_used_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_get_used_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  is_cell_transposed(self,  int x,  int y):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &x
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_tilemap_is_cell_transposed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_cell_x_flipped(self,  int x,  int y):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &x
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_tilemap_is_cell_x_flipped,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_cell_y_flipped(self,  int x,  int y):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &x
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_tilemap_is_cell_y_flipped,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_centered_textures_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_is_centered_textures_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_compatibility_mode_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_is_compatibility_mode_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_y_sort_mode_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tilemap_is_y_sort_mode_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  map_to_world(self,  Vector2 map_position,  bool ignore_half_ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &map_position._native
    args[1] = &ignore_half_ofs
    api_core.godot_method_bind_ptrcall(bind_tilemap_map_to_world,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_cell(self,  int x,  int y,  int tile,  bool flip_x,  bool flip_y,  bool transpose,  Vector2 autotile_coord):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[7]

    args[0] = &x
    args[1] = &y
    args[2] = &tile
    args[3] = &flip_x
    args[4] = &flip_y
    args[5] = &transpose
    args[6] = &autotile_coord._native
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_cell,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cell_size(self,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size._native
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_cell_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cellv(self,  Vector2 position,  int tile,  bool flip_x,  bool flip_y,  bool transpose):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &position._native
    args[1] = &tile
    args[2] = &flip_x
    args[3] = &flip_y
    args[4] = &transpose
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_cellv,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_centered_textures(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_centered_textures,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_clip_uv(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_clip_uv,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_bounce(self,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_bounce,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_friction(self,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_friction,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_layer_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_use_kinematic(self,  bool use_kinematic):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &use_kinematic
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_use_kinematic,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_use_parent(self,  bool use_parent):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &use_parent
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_collision_use_parent,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_compatibility_mode(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_compatibility_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_transform(self,  Transform2D custom_transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &custom_transform._native
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_custom_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_half_offset(self,  int half_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &half_offset
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_half_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_occluder_light_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_occluder_light_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_quadrant_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_quadrant_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tile_origin(self,  int origin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &origin
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_tile_origin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tileset(self,  classes.TileSet.TileSet tileset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = tileset.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_tileset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_y_sort_mode(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_tilemap_set_y_sort_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_bitmask_area(self,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_tilemap_update_bitmask_area,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_bitmask_region(self,  Vector2 start,  Vector2 end):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &start._native
    args[1] = &end._native
    api_core.godot_method_bind_ptrcall(bind_tilemap_update_bitmask_region,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_dirty_quadrants(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tilemap_update_dirty_quadrants,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  world_to_map(self,  Vector2 world_position):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &world_position._native
    api_core.godot_method_bind_ptrcall(bind_tilemap_world_to_map,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

