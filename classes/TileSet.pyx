from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tileset__forward_atlas_subtile_selection
cdef godot_method_bind *bind_tileset__forward_subtile_selection
cdef godot_method_bind *bind_tileset__is_tile_bound
cdef godot_method_bind *bind_tileset_autotile_clear_bitmask_map
cdef godot_method_bind *bind_tileset_autotile_get_bitmask
cdef godot_method_bind *bind_tileset_autotile_get_bitmask_mode
cdef godot_method_bind *bind_tileset_autotile_get_icon_coordinate
cdef godot_method_bind *bind_tileset_autotile_get_light_occluder
cdef godot_method_bind *bind_tileset_autotile_get_navigation_polygon
cdef godot_method_bind *bind_tileset_autotile_get_size
cdef godot_method_bind *bind_tileset_autotile_get_spacing
cdef godot_method_bind *bind_tileset_autotile_get_subtile_priority
cdef godot_method_bind *bind_tileset_autotile_get_z_index
cdef godot_method_bind *bind_tileset_autotile_set_bitmask
cdef godot_method_bind *bind_tileset_autotile_set_bitmask_mode
cdef godot_method_bind *bind_tileset_autotile_set_icon_coordinate
cdef godot_method_bind *bind_tileset_autotile_set_light_occluder
cdef godot_method_bind *bind_tileset_autotile_set_navigation_polygon
cdef godot_method_bind *bind_tileset_autotile_set_size
cdef godot_method_bind *bind_tileset_autotile_set_spacing
cdef godot_method_bind *bind_tileset_autotile_set_subtile_priority
cdef godot_method_bind *bind_tileset_autotile_set_z_index
cdef godot_method_bind *bind_tileset_clear
cdef godot_method_bind *bind_tileset_create_tile
cdef godot_method_bind *bind_tileset_find_tile_by_name
cdef godot_method_bind *bind_tileset_get_last_unused_tile_id
cdef godot_method_bind *bind_tileset_get_tiles_ids
cdef godot_method_bind *bind_tileset_remove_tile
cdef godot_method_bind *bind_tileset_tile_add_shape
cdef godot_method_bind *bind_tileset_tile_get_light_occluder
cdef godot_method_bind *bind_tileset_tile_get_material
cdef godot_method_bind *bind_tileset_tile_get_modulate
cdef godot_method_bind *bind_tileset_tile_get_name
cdef godot_method_bind *bind_tileset_tile_get_navigation_polygon
cdef godot_method_bind *bind_tileset_tile_get_navigation_polygon_offset
cdef godot_method_bind *bind_tileset_tile_get_normal_map
cdef godot_method_bind *bind_tileset_tile_get_occluder_offset
cdef godot_method_bind *bind_tileset_tile_get_region
cdef godot_method_bind *bind_tileset_tile_get_shape
cdef godot_method_bind *bind_tileset_tile_get_shape_count
cdef godot_method_bind *bind_tileset_tile_get_shape_offset
cdef godot_method_bind *bind_tileset_tile_get_shape_one_way
cdef godot_method_bind *bind_tileset_tile_get_shape_one_way_margin
cdef godot_method_bind *bind_tileset_tile_get_shape_transform
cdef godot_method_bind *bind_tileset_tile_get_shapes
cdef godot_method_bind *bind_tileset_tile_get_texture
cdef godot_method_bind *bind_tileset_tile_get_texture_offset
cdef godot_method_bind *bind_tileset_tile_get_tile_mode
cdef godot_method_bind *bind_tileset_tile_get_z_index
cdef godot_method_bind *bind_tileset_tile_set_light_occluder
cdef godot_method_bind *bind_tileset_tile_set_material
cdef godot_method_bind *bind_tileset_tile_set_modulate
cdef godot_method_bind *bind_tileset_tile_set_name
cdef godot_method_bind *bind_tileset_tile_set_navigation_polygon
cdef godot_method_bind *bind_tileset_tile_set_navigation_polygon_offset
cdef godot_method_bind *bind_tileset_tile_set_normal_map
cdef godot_method_bind *bind_tileset_tile_set_occluder_offset
cdef godot_method_bind *bind_tileset_tile_set_region
cdef godot_method_bind *bind_tileset_tile_set_shape
cdef godot_method_bind *bind_tileset_tile_set_shape_offset
cdef godot_method_bind *bind_tileset_tile_set_shape_one_way
cdef godot_method_bind *bind_tileset_tile_set_shape_one_way_margin
cdef godot_method_bind *bind_tileset_tile_set_shape_transform
cdef godot_method_bind *bind_tileset_tile_set_shapes
cdef godot_method_bind *bind_tileset_tile_set_texture
cdef godot_method_bind *bind_tileset_tile_set_texture_offset
cdef godot_method_bind *bind_tileset_tile_set_tile_mode
cdef godot_method_bind *bind_tileset_tile_set_z_index
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tileset__forward_atlas_subtile_selection = api_core.godot_method_bind_get_method('TileSet', '_forward_atlas_subtile_selection')
  bind_tileset__forward_subtile_selection = api_core.godot_method_bind_get_method('TileSet', '_forward_subtile_selection')
  bind_tileset__is_tile_bound = api_core.godot_method_bind_get_method('TileSet', '_is_tile_bound')
  bind_tileset_autotile_clear_bitmask_map = api_core.godot_method_bind_get_method('TileSet', 'autotile_clear_bitmask_map')
  bind_tileset_autotile_get_bitmask = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_bitmask')
  bind_tileset_autotile_get_bitmask_mode = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_bitmask_mode')
  bind_tileset_autotile_get_icon_coordinate = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_icon_coordinate')
  bind_tileset_autotile_get_light_occluder = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_light_occluder')
  bind_tileset_autotile_get_navigation_polygon = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_navigation_polygon')
  bind_tileset_autotile_get_size = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_size')
  bind_tileset_autotile_get_spacing = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_spacing')
  bind_tileset_autotile_get_subtile_priority = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_subtile_priority')
  bind_tileset_autotile_get_z_index = api_core.godot_method_bind_get_method('TileSet', 'autotile_get_z_index')
  bind_tileset_autotile_set_bitmask = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_bitmask')
  bind_tileset_autotile_set_bitmask_mode = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_bitmask_mode')
  bind_tileset_autotile_set_icon_coordinate = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_icon_coordinate')
  bind_tileset_autotile_set_light_occluder = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_light_occluder')
  bind_tileset_autotile_set_navigation_polygon = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_navigation_polygon')
  bind_tileset_autotile_set_size = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_size')
  bind_tileset_autotile_set_spacing = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_spacing')
  bind_tileset_autotile_set_subtile_priority = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_subtile_priority')
  bind_tileset_autotile_set_z_index = api_core.godot_method_bind_get_method('TileSet', 'autotile_set_z_index')
  bind_tileset_clear = api_core.godot_method_bind_get_method('TileSet', 'clear')
  bind_tileset_create_tile = api_core.godot_method_bind_get_method('TileSet', 'create_tile')
  bind_tileset_find_tile_by_name = api_core.godot_method_bind_get_method('TileSet', 'find_tile_by_name')
  bind_tileset_get_last_unused_tile_id = api_core.godot_method_bind_get_method('TileSet', 'get_last_unused_tile_id')
  bind_tileset_get_tiles_ids = api_core.godot_method_bind_get_method('TileSet', 'get_tiles_ids')
  bind_tileset_remove_tile = api_core.godot_method_bind_get_method('TileSet', 'remove_tile')
  bind_tileset_tile_add_shape = api_core.godot_method_bind_get_method('TileSet', 'tile_add_shape')
  bind_tileset_tile_get_light_occluder = api_core.godot_method_bind_get_method('TileSet', 'tile_get_light_occluder')
  bind_tileset_tile_get_material = api_core.godot_method_bind_get_method('TileSet', 'tile_get_material')
  bind_tileset_tile_get_modulate = api_core.godot_method_bind_get_method('TileSet', 'tile_get_modulate')
  bind_tileset_tile_get_name = api_core.godot_method_bind_get_method('TileSet', 'tile_get_name')
  bind_tileset_tile_get_navigation_polygon = api_core.godot_method_bind_get_method('TileSet', 'tile_get_navigation_polygon')
  bind_tileset_tile_get_navigation_polygon_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_get_navigation_polygon_offset')
  bind_tileset_tile_get_normal_map = api_core.godot_method_bind_get_method('TileSet', 'tile_get_normal_map')
  bind_tileset_tile_get_occluder_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_get_occluder_offset')
  bind_tileset_tile_get_region = api_core.godot_method_bind_get_method('TileSet', 'tile_get_region')
  bind_tileset_tile_get_shape = api_core.godot_method_bind_get_method('TileSet', 'tile_get_shape')
  bind_tileset_tile_get_shape_count = api_core.godot_method_bind_get_method('TileSet', 'tile_get_shape_count')
  bind_tileset_tile_get_shape_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_get_shape_offset')
  bind_tileset_tile_get_shape_one_way = api_core.godot_method_bind_get_method('TileSet', 'tile_get_shape_one_way')
  bind_tileset_tile_get_shape_one_way_margin = api_core.godot_method_bind_get_method('TileSet', 'tile_get_shape_one_way_margin')
  bind_tileset_tile_get_shape_transform = api_core.godot_method_bind_get_method('TileSet', 'tile_get_shape_transform')
  bind_tileset_tile_get_shapes = api_core.godot_method_bind_get_method('TileSet', 'tile_get_shapes')
  bind_tileset_tile_get_texture = api_core.godot_method_bind_get_method('TileSet', 'tile_get_texture')
  bind_tileset_tile_get_texture_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_get_texture_offset')
  bind_tileset_tile_get_tile_mode = api_core.godot_method_bind_get_method('TileSet', 'tile_get_tile_mode')
  bind_tileset_tile_get_z_index = api_core.godot_method_bind_get_method('TileSet', 'tile_get_z_index')
  bind_tileset_tile_set_light_occluder = api_core.godot_method_bind_get_method('TileSet', 'tile_set_light_occluder')
  bind_tileset_tile_set_material = api_core.godot_method_bind_get_method('TileSet', 'tile_set_material')
  bind_tileset_tile_set_modulate = api_core.godot_method_bind_get_method('TileSet', 'tile_set_modulate')
  bind_tileset_tile_set_name = api_core.godot_method_bind_get_method('TileSet', 'tile_set_name')
  bind_tileset_tile_set_navigation_polygon = api_core.godot_method_bind_get_method('TileSet', 'tile_set_navigation_polygon')
  bind_tileset_tile_set_navigation_polygon_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_set_navigation_polygon_offset')
  bind_tileset_tile_set_normal_map = api_core.godot_method_bind_get_method('TileSet', 'tile_set_normal_map')
  bind_tileset_tile_set_occluder_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_set_occluder_offset')
  bind_tileset_tile_set_region = api_core.godot_method_bind_get_method('TileSet', 'tile_set_region')
  bind_tileset_tile_set_shape = api_core.godot_method_bind_get_method('TileSet', 'tile_set_shape')
  bind_tileset_tile_set_shape_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_set_shape_offset')
  bind_tileset_tile_set_shape_one_way = api_core.godot_method_bind_get_method('TileSet', 'tile_set_shape_one_way')
  bind_tileset_tile_set_shape_one_way_margin = api_core.godot_method_bind_get_method('TileSet', 'tile_set_shape_one_way_margin')
  bind_tileset_tile_set_shape_transform = api_core.godot_method_bind_get_method('TileSet', 'tile_set_shape_transform')
  bind_tileset_tile_set_shapes = api_core.godot_method_bind_get_method('TileSet', 'tile_set_shapes')
  bind_tileset_tile_set_texture = api_core.godot_method_bind_get_method('TileSet', 'tile_set_texture')
  bind_tileset_tile_set_texture_offset = api_core.godot_method_bind_get_method('TileSet', 'tile_set_texture_offset')
  bind_tileset_tile_set_tile_mode = api_core.godot_method_bind_get_method('TileSet', 'tile_set_tile_mode')
  bind_tileset_tile_set_z_index = api_core.godot_method_bind_get_method('TileSet', 'tile_set_z_index')

############################Generated class###################################
cdef class TileSet(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TileSet")())
##################################Generated Methods#########################################
  def  _forward_atlas_subtile_selection(self, atlastile_idtilemaptile_location):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset__forward_atlas_subtile_selection,self.godot_owner,[NULL,],&ret)
  def  _forward_subtile_selection(self, autotile_idbitmasktilemaptile_location):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset__forward_subtile_selection,self.godot_owner,[NULL,],&ret)
  def  _is_tile_bound(self, drawn_idneighbor_id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tileset__is_tile_bound,self.godot_owner,[NULL,],&ret)
  def  autotile_clear_bitmask_map(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_clear_bitmask_map,self.godot_owner,[NULL,],NULL)
  def  autotile_get_bitmask(self, idcoord):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_bitmask,self.godot_owner,[NULL,],&ret)
  def  autotile_get_bitmask_mode(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef TileSet::BitmaskMode ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_bitmask_mode,self.godot_owner,[NULL,],&ret)
  def  autotile_get_icon_coordinate(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_icon_coordinate,self.godot_owner,[NULL,],&ret)
  def  autotile_get_light_occluder(self, idcoord):
    cdef godot_object *_owner = self.godot_owner
    cdef OccluderPolygon2D ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_light_occluder,self.godot_owner,[NULL,],&ret)
  def  autotile_get_navigation_polygon(self, idcoord):
    cdef godot_object *_owner = self.godot_owner
    cdef NavigationPolygon ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_navigation_polygon,self.godot_owner,[NULL,],&ret)
  def  autotile_get_size(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_size,self.godot_owner,[NULL,],&ret)
  def  autotile_get_spacing(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_spacing,self.godot_owner,[NULL,],&ret)
  def  autotile_get_subtile_priority(self, idcoord):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_subtile_priority,self.godot_owner,[NULL,],&ret)
  def  autotile_get_z_index(self, idcoord):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_z_index,self.godot_owner,[NULL,],&ret)
  def  autotile_set_bitmask(self, idbitmaskflag):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_bitmask,self.godot_owner,[NULL,],NULL)
  def  autotile_set_bitmask_mode(self, idmode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_bitmask_mode,self.godot_owner,[NULL,],NULL)
  def  autotile_set_icon_coordinate(self, idcoord):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_icon_coordinate,self.godot_owner,[NULL,],NULL)
  def  autotile_set_light_occluder(self, idlight_occludercoord):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_light_occluder,self.godot_owner,[NULL,],NULL)
  def  autotile_set_navigation_polygon(self, idnavigation_polygoncoord):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_navigation_polygon,self.godot_owner,[NULL,],NULL)
  def  autotile_set_size(self, idsize):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_size,self.godot_owner,[NULL,],NULL)
  def  autotile_set_spacing(self, idspacing):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_spacing,self.godot_owner,[NULL,],NULL)
  def  autotile_set_subtile_priority(self, idcoordpriority):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_subtile_priority,self.godot_owner,[NULL,],NULL)
  def  autotile_set_z_index(self, idcoordz_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_z_index,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_clear,self.godot_owner,[NULL,],NULL)
  def  create_tile(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_create_tile,self.godot_owner,[NULL,],NULL)
  def  find_tile_by_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_find_tile_by_name,self.godot_owner,[NULL,],&ret)
  def  get_last_unused_tile_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_get_last_unused_tile_id,self.godot_owner,[NULL,],&ret)
  def  get_tiles_ids(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_tileset_get_tiles_ids,self.godot_owner,[NULL,],&ret)
  def  remove_tile(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_remove_tile,self.godot_owner,[NULL,],NULL)
  def  tile_add_shape(self, idshapeshape_transformone_wayautotile_coord):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_add_shape,self.godot_owner,[NULL,],NULL)
  def  tile_get_light_occluder(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef OccluderPolygon2D ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_light_occluder,self.godot_owner,[NULL,],&ret)
  def  tile_get_material(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef ShaderMaterial ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_material,self.godot_owner,[NULL,],&ret)
  def  tile_get_modulate(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_modulate,self.godot_owner,[NULL,],&ret)
  def  tile_get_name(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_name,self.godot_owner,[NULL,],&ret)
  def  tile_get_navigation_polygon(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef NavigationPolygon ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_navigation_polygon,self.godot_owner,[NULL,],&ret)
  def  tile_get_navigation_polygon_offset(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_navigation_polygon_offset,self.godot_owner,[NULL,],&ret)
  def  tile_get_normal_map(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_normal_map,self.godot_owner,[NULL,],&ret)
  def  tile_get_occluder_offset(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_occluder_offset,self.godot_owner,[NULL,],&ret)
  def  tile_get_region(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_region,self.godot_owner,[NULL,],&ret)
  def  tile_get_shape(self, idshape_id):
    cdef godot_object *_owner = self.godot_owner
    cdef Shape2D ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape,self.godot_owner,[NULL,],&ret)
  def  tile_get_shape_count(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_count,self.godot_owner,[NULL,],&ret)
  def  tile_get_shape_offset(self, idshape_id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_offset,self.godot_owner,[NULL,],&ret)
  def  tile_get_shape_one_way(self, idshape_id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_one_way,self.godot_owner,[NULL,],&ret)
  def  tile_get_shape_one_way_margin(self, idshape_id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_one_way_margin,self.godot_owner,[NULL,],&ret)
  def  tile_get_shape_transform(self, idshape_id):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_transform,self.godot_owner,[NULL,],&ret)
  def  tile_get_shapes(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shapes,self.godot_owner,[NULL,],&ret)
  def  tile_get_texture(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_texture,self.godot_owner,[NULL,],&ret)
  def  tile_get_texture_offset(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_texture_offset,self.godot_owner,[NULL,],&ret)
  def  tile_get_tile_mode(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef TileSet::TileMode ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_tile_mode,self.godot_owner,[NULL,],&ret)
  def  tile_get_z_index(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_z_index,self.godot_owner,[NULL,],&ret)
  def  tile_set_light_occluder(self, idlight_occluder):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_light_occluder,self.godot_owner,[NULL,],NULL)
  def  tile_set_material(self, idmaterial):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_material,self.godot_owner,[NULL,],NULL)
  def  tile_set_modulate(self, idcolor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_modulate,self.godot_owner,[NULL,],NULL)
  def  tile_set_name(self, idname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_name,self.godot_owner,[NULL,],NULL)
  def  tile_set_navigation_polygon(self, idnavigation_polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_navigation_polygon,self.godot_owner,[NULL,],NULL)
  def  tile_set_navigation_polygon_offset(self, idnavigation_polygon_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_navigation_polygon_offset,self.godot_owner,[NULL,],NULL)
  def  tile_set_normal_map(self, idnormal_map):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_normal_map,self.godot_owner,[NULL,],NULL)
  def  tile_set_occluder_offset(self, idoccluder_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_occluder_offset,self.godot_owner,[NULL,],NULL)
  def  tile_set_region(self, idregion):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_region,self.godot_owner,[NULL,],NULL)
  def  tile_set_shape(self, idshape_idshape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape,self.godot_owner,[NULL,],NULL)
  def  tile_set_shape_offset(self, idshape_idshape_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_offset,self.godot_owner,[NULL,],NULL)
  def  tile_set_shape_one_way(self, idshape_idone_way):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_one_way,self.godot_owner,[NULL,],NULL)
  def  tile_set_shape_one_way_margin(self, idshape_idone_way):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_one_way_margin,self.godot_owner,[NULL,],NULL)
  def  tile_set_shape_transform(self, idshape_idshape_transform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_transform,self.godot_owner,[NULL,],NULL)
  def  tile_set_shapes(self, idshapes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shapes,self.godot_owner,[NULL,],NULL)
  def  tile_set_texture(self, idtexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_texture,self.godot_owner,[NULL,],NULL)
  def  tile_set_texture_offset(self, idtexture_offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_texture_offset,self.godot_owner,[NULL,],NULL)
  def  tile_set_tile_mode(self, idtilemode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_tile_mode,self.godot_owner,[NULL,],NULL)
  def  tile_set_z_index(self, idz_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_z_index,self.godot_owner,[NULL,],NULL)
