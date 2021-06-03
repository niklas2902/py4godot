
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
cimport classes.Object
cimport classes.Object
cimport classes.OccluderPolygon2D
cimport classes.NavigationPolygon
cimport classes.Shape2D
cimport classes.OccluderPolygon2D
cimport classes.ShaderMaterial
cimport classes.NavigationPolygon
cimport classes.Texture
cimport classes.Shape2D
cimport classes.Texture
cimport classes.Resource 

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
cdef class TileSet(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TileSet")())
##################################Generated Methods#########################################
  def  _forward_atlas_subtile_selection(self,  int atlastile_id,  classes.Object.Object tilemap,  Vector2 tile_location):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[3]

    args[0] = &atlastile_id
    args[1] = tilemap.godot_owner
    args[2] = &tile_location._native
    api_core.godot_method_bind_ptrcall(bind_tileset__forward_atlas_subtile_selection,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  _forward_subtile_selection(self,  int autotile_id,  int bitmask,  classes.Object.Object tilemap,  Vector2 tile_location):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[4]

    args[0] = &autotile_id
    args[1] = &bitmask
    args[2] = tilemap.godot_owner
    args[3] = &tile_location._native
    api_core.godot_method_bind_ptrcall(bind_tileset__forward_subtile_selection,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  _is_tile_bound(self,  int drawn_id,  int neighbor_id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &drawn_id
    args[1] = &neighbor_id
    api_core.godot_method_bind_ptrcall(bind_tileset__is_tile_bound,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  autotile_clear_bitmask_map(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_clear_bitmask_map,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_get_bitmask(self,  int id,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_bitmask,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  autotile_get_bitmask_mode(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef BitmaskMode* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_bitmask_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  autotile_get_icon_coordinate(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_icon_coordinate,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  autotile_get_light_occluder(self,  int id,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_light_occluder,self.godot_owner,args,&ret)
    hello('hallo2')
  def  autotile_get_navigation_polygon(self,  int id,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_navigation_polygon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  autotile_get_size(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_size,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  autotile_get_spacing(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_spacing,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  autotile_get_subtile_priority(self,  int id,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_subtile_priority,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  autotile_get_z_index(self,  int id,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_get_z_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  autotile_set_bitmask(self,  int id,  Vector2 bitmask,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &bitmask._native
    args[2] = &flag
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_bitmask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_bitmask_mode(self,  int id,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_bitmask_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_icon_coordinate(self,  int id,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_icon_coordinate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_light_occluder(self,  int id,  classes.OccluderPolygon2D.OccluderPolygon2D light_occluder,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = light_occluder.godot_owner
    args[2] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_light_occluder,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_navigation_polygon(self,  int id,  classes.NavigationPolygon.NavigationPolygon navigation_polygon,  Vector2 coord):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = navigation_polygon.godot_owner
    args[2] = &coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_navigation_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_size(self,  int id,  Vector2 size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &size._native
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_spacing(self,  int id,  int spacing):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &spacing
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_spacing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_subtile_priority(self,  int id,  Vector2 coord,  int priority):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &coord._native
    args[2] = &priority
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_subtile_priority,self.godot_owner,args,NULL)
    hello('hallo2')
  def  autotile_set_z_index(self,  int id,  Vector2 coord,  int z_index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &coord._native
    args[2] = &z_index
    api_core.godot_method_bind_ptrcall(bind_tileset_autotile_set_z_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tileset_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_tile(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_create_tile,self.godot_owner,args,NULL)
    hello('hallo2')
  def  find_tile_by_name(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_tileset_find_tile_by_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_last_unused_tile_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tileset_get_last_unused_tile_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tiles_ids(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tileset_get_tiles_ids,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  remove_tile(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_remove_tile,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_add_shape(self,  int id,  classes.Shape2D.Shape2D shape,  Transform2D shape_transform,  bool one_way,  Vector2 autotile_coord):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &id
    args[1] = shape.godot_owner
    args[2] = &shape_transform._native
    args[3] = &one_way
    args[4] = &autotile_coord._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_add_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_get_light_occluder(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_light_occluder,self.godot_owner,args,&ret)
    hello('hallo2')
  def  tile_get_material(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_material,self.godot_owner,args,&ret)
    hello('hallo2')
  def  tile_get_modulate(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_color* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_modulate,self.godot_owner,args,&ret)
    hello('hallo2')
    return Color.new_static(dereference(ret))

  def  tile_get_name(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  tile_get_navigation_polygon(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_navigation_polygon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  tile_get_navigation_polygon_offset(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_navigation_polygon_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  tile_get_normal_map(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_normal_map,self.godot_owner,args,&ret)
    hello('hallo2')
  def  tile_get_occluder_offset(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_occluder_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  tile_get_region(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_region,self.godot_owner,args,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  tile_get_shape(self,  int id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape,self.godot_owner,args,&ret)
    hello('hallo2')
  def  tile_get_shape_count(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  tile_get_shape_offset(self,  int id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  tile_get_shape_one_way(self,  int id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_one_way,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  tile_get_shape_one_way_margin(self,  int id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_one_way_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  tile_get_shape_transform(self,  int id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shape_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  tile_get_shapes(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_shapes,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  tile_get_texture(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_texture,self.godot_owner,args,&ret)
    hello('hallo2')
  def  tile_get_texture_offset(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_texture_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  tile_get_tile_mode(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef TileMode* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_tile_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  tile_get_z_index(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_get_z_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  tile_set_light_occluder(self,  int id,  classes.OccluderPolygon2D.OccluderPolygon2D light_occluder):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = light_occluder.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_light_occluder,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_material(self,  int id,  classes.ShaderMaterial.ShaderMaterial material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_modulate(self,  int id,  Color color):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &color._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_modulate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_name(self,  int id,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_navigation_polygon(self,  int id,  classes.NavigationPolygon.NavigationPolygon navigation_polygon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = navigation_polygon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_navigation_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_navigation_polygon_offset(self,  int id,  Vector2 navigation_polygon_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &navigation_polygon_offset._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_navigation_polygon_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_normal_map(self,  int id,  classes.Texture.Texture normal_map):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = normal_map.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_normal_map,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_occluder_offset(self,  int id,  Vector2 occluder_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &occluder_offset._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_occluder_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_region(self,  int id,  Rect2 region):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &region._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_region,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_shape(self,  int id,  int shape_id,  classes.Shape2D.Shape2D shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &shape_id
    args[2] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_shape_offset(self,  int id,  int shape_id,  Vector2 shape_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &shape_id
    args[2] = &shape_offset._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_shape_one_way(self,  int id,  int shape_id,  bool one_way):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &shape_id
    args[2] = &one_way
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_one_way,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_shape_one_way_margin(self,  int id,  int shape_id,  float one_way):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &shape_id
    args[2] = &one_way
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_one_way_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_shape_transform(self,  int id,  int shape_id,  Transform2D shape_transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &shape_id
    args[2] = &shape_transform._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shape_transform,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_shapes(self,  int id,  Array shapes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &shapes._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_texture(self,  int id,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_texture_offset(self,  int id,  Vector2 texture_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &texture_offset._native
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_texture_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_tile_mode(self,  int id,  int tilemode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &tilemode
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_tile_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  tile_set_z_index(self,  int id,  int z_index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &z_index
    api_core.godot_method_bind_ptrcall(bind_tileset_tile_set_z_index,self.godot_owner,args,NULL)
    hello('hallo2')
