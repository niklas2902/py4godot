
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_navigationmesh__get_polygons
cdef godot_method_bind *bind_navigationmesh__set_polygons
cdef godot_method_bind *bind_navigationmesh_add_polygon
cdef godot_method_bind *bind_navigationmesh_clear_polygons
cdef godot_method_bind *bind_navigationmesh_create_from_mesh
cdef godot_method_bind *bind_navigationmesh_get_agent_height
cdef godot_method_bind *bind_navigationmesh_get_agent_max_climb
cdef godot_method_bind *bind_navigationmesh_get_agent_max_slope
cdef godot_method_bind *bind_navigationmesh_get_agent_radius
cdef godot_method_bind *bind_navigationmesh_get_cell_height
cdef godot_method_bind *bind_navigationmesh_get_cell_size
cdef godot_method_bind *bind_navigationmesh_get_collision_mask
cdef godot_method_bind *bind_navigationmesh_get_collision_mask_bit
cdef godot_method_bind *bind_navigationmesh_get_detail_sample_distance
cdef godot_method_bind *bind_navigationmesh_get_detail_sample_max_error
cdef godot_method_bind *bind_navigationmesh_get_edge_max_error
cdef godot_method_bind *bind_navigationmesh_get_edge_max_length
cdef godot_method_bind *bind_navigationmesh_get_filter_ledge_spans
cdef godot_method_bind *bind_navigationmesh_get_filter_low_hanging_obstacles
cdef godot_method_bind *bind_navigationmesh_get_filter_walkable_low_height_spans
cdef godot_method_bind *bind_navigationmesh_get_parsed_geometry_type
cdef godot_method_bind *bind_navigationmesh_get_polygon
cdef godot_method_bind *bind_navigationmesh_get_polygon_count
cdef godot_method_bind *bind_navigationmesh_get_region_merge_size
cdef godot_method_bind *bind_navigationmesh_get_region_min_size
cdef godot_method_bind *bind_navigationmesh_get_sample_partition_type
cdef godot_method_bind *bind_navigationmesh_get_source_geometry_mode
cdef godot_method_bind *bind_navigationmesh_get_source_group_name
cdef godot_method_bind *bind_navigationmesh_get_vertices
cdef godot_method_bind *bind_navigationmesh_get_verts_per_poly
cdef godot_method_bind *bind_navigationmesh_set_agent_height
cdef godot_method_bind *bind_navigationmesh_set_agent_max_climb
cdef godot_method_bind *bind_navigationmesh_set_agent_max_slope
cdef godot_method_bind *bind_navigationmesh_set_agent_radius
cdef godot_method_bind *bind_navigationmesh_set_cell_height
cdef godot_method_bind *bind_navigationmesh_set_cell_size
cdef godot_method_bind *bind_navigationmesh_set_collision_mask
cdef godot_method_bind *bind_navigationmesh_set_collision_mask_bit
cdef godot_method_bind *bind_navigationmesh_set_detail_sample_distance
cdef godot_method_bind *bind_navigationmesh_set_detail_sample_max_error
cdef godot_method_bind *bind_navigationmesh_set_edge_max_error
cdef godot_method_bind *bind_navigationmesh_set_edge_max_length
cdef godot_method_bind *bind_navigationmesh_set_filter_ledge_spans
cdef godot_method_bind *bind_navigationmesh_set_filter_low_hanging_obstacles
cdef godot_method_bind *bind_navigationmesh_set_filter_walkable_low_height_spans
cdef godot_method_bind *bind_navigationmesh_set_parsed_geometry_type
cdef godot_method_bind *bind_navigationmesh_set_region_merge_size
cdef godot_method_bind *bind_navigationmesh_set_region_min_size
cdef godot_method_bind *bind_navigationmesh_set_sample_partition_type
cdef godot_method_bind *bind_navigationmesh_set_source_geometry_mode
cdef godot_method_bind *bind_navigationmesh_set_source_group_name
cdef godot_method_bind *bind_navigationmesh_set_vertices
cdef godot_method_bind *bind_navigationmesh_set_verts_per_poly
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_navigationmesh__get_polygons = api_core.godot_method_bind_get_method('NavigationMesh', '_get_polygons')
  bind_navigationmesh__set_polygons = api_core.godot_method_bind_get_method('NavigationMesh', '_set_polygons')
  bind_navigationmesh_add_polygon = api_core.godot_method_bind_get_method('NavigationMesh', 'add_polygon')
  bind_navigationmesh_clear_polygons = api_core.godot_method_bind_get_method('NavigationMesh', 'clear_polygons')
  bind_navigationmesh_create_from_mesh = api_core.godot_method_bind_get_method('NavigationMesh', 'create_from_mesh')
  bind_navigationmesh_get_agent_height = api_core.godot_method_bind_get_method('NavigationMesh', 'get_agent_height')
  bind_navigationmesh_get_agent_max_climb = api_core.godot_method_bind_get_method('NavigationMesh', 'get_agent_max_climb')
  bind_navigationmesh_get_agent_max_slope = api_core.godot_method_bind_get_method('NavigationMesh', 'get_agent_max_slope')
  bind_navigationmesh_get_agent_radius = api_core.godot_method_bind_get_method('NavigationMesh', 'get_agent_radius')
  bind_navigationmesh_get_cell_height = api_core.godot_method_bind_get_method('NavigationMesh', 'get_cell_height')
  bind_navigationmesh_get_cell_size = api_core.godot_method_bind_get_method('NavigationMesh', 'get_cell_size')
  bind_navigationmesh_get_collision_mask = api_core.godot_method_bind_get_method('NavigationMesh', 'get_collision_mask')
  bind_navigationmesh_get_collision_mask_bit = api_core.godot_method_bind_get_method('NavigationMesh', 'get_collision_mask_bit')
  bind_navigationmesh_get_detail_sample_distance = api_core.godot_method_bind_get_method('NavigationMesh', 'get_detail_sample_distance')
  bind_navigationmesh_get_detail_sample_max_error = api_core.godot_method_bind_get_method('NavigationMesh', 'get_detail_sample_max_error')
  bind_navigationmesh_get_edge_max_error = api_core.godot_method_bind_get_method('NavigationMesh', 'get_edge_max_error')
  bind_navigationmesh_get_edge_max_length = api_core.godot_method_bind_get_method('NavigationMesh', 'get_edge_max_length')
  bind_navigationmesh_get_filter_ledge_spans = api_core.godot_method_bind_get_method('NavigationMesh', 'get_filter_ledge_spans')
  bind_navigationmesh_get_filter_low_hanging_obstacles = api_core.godot_method_bind_get_method('NavigationMesh', 'get_filter_low_hanging_obstacles')
  bind_navigationmesh_get_filter_walkable_low_height_spans = api_core.godot_method_bind_get_method('NavigationMesh', 'get_filter_walkable_low_height_spans')
  bind_navigationmesh_get_parsed_geometry_type = api_core.godot_method_bind_get_method('NavigationMesh', 'get_parsed_geometry_type')
  bind_navigationmesh_get_polygon = api_core.godot_method_bind_get_method('NavigationMesh', 'get_polygon')
  bind_navigationmesh_get_polygon_count = api_core.godot_method_bind_get_method('NavigationMesh', 'get_polygon_count')
  bind_navigationmesh_get_region_merge_size = api_core.godot_method_bind_get_method('NavigationMesh', 'get_region_merge_size')
  bind_navigationmesh_get_region_min_size = api_core.godot_method_bind_get_method('NavigationMesh', 'get_region_min_size')
  bind_navigationmesh_get_sample_partition_type = api_core.godot_method_bind_get_method('NavigationMesh', 'get_sample_partition_type')
  bind_navigationmesh_get_source_geometry_mode = api_core.godot_method_bind_get_method('NavigationMesh', 'get_source_geometry_mode')
  bind_navigationmesh_get_source_group_name = api_core.godot_method_bind_get_method('NavigationMesh', 'get_source_group_name')
  bind_navigationmesh_get_vertices = api_core.godot_method_bind_get_method('NavigationMesh', 'get_vertices')
  bind_navigationmesh_get_verts_per_poly = api_core.godot_method_bind_get_method('NavigationMesh', 'get_verts_per_poly')
  bind_navigationmesh_set_agent_height = api_core.godot_method_bind_get_method('NavigationMesh', 'set_agent_height')
  bind_navigationmesh_set_agent_max_climb = api_core.godot_method_bind_get_method('NavigationMesh', 'set_agent_max_climb')
  bind_navigationmesh_set_agent_max_slope = api_core.godot_method_bind_get_method('NavigationMesh', 'set_agent_max_slope')
  bind_navigationmesh_set_agent_radius = api_core.godot_method_bind_get_method('NavigationMesh', 'set_agent_radius')
  bind_navigationmesh_set_cell_height = api_core.godot_method_bind_get_method('NavigationMesh', 'set_cell_height')
  bind_navigationmesh_set_cell_size = api_core.godot_method_bind_get_method('NavigationMesh', 'set_cell_size')
  bind_navigationmesh_set_collision_mask = api_core.godot_method_bind_get_method('NavigationMesh', 'set_collision_mask')
  bind_navigationmesh_set_collision_mask_bit = api_core.godot_method_bind_get_method('NavigationMesh', 'set_collision_mask_bit')
  bind_navigationmesh_set_detail_sample_distance = api_core.godot_method_bind_get_method('NavigationMesh', 'set_detail_sample_distance')
  bind_navigationmesh_set_detail_sample_max_error = api_core.godot_method_bind_get_method('NavigationMesh', 'set_detail_sample_max_error')
  bind_navigationmesh_set_edge_max_error = api_core.godot_method_bind_get_method('NavigationMesh', 'set_edge_max_error')
  bind_navigationmesh_set_edge_max_length = api_core.godot_method_bind_get_method('NavigationMesh', 'set_edge_max_length')
  bind_navigationmesh_set_filter_ledge_spans = api_core.godot_method_bind_get_method('NavigationMesh', 'set_filter_ledge_spans')
  bind_navigationmesh_set_filter_low_hanging_obstacles = api_core.godot_method_bind_get_method('NavigationMesh', 'set_filter_low_hanging_obstacles')
  bind_navigationmesh_set_filter_walkable_low_height_spans = api_core.godot_method_bind_get_method('NavigationMesh', 'set_filter_walkable_low_height_spans')
  bind_navigationmesh_set_parsed_geometry_type = api_core.godot_method_bind_get_method('NavigationMesh', 'set_parsed_geometry_type')
  bind_navigationmesh_set_region_merge_size = api_core.godot_method_bind_get_method('NavigationMesh', 'set_region_merge_size')
  bind_navigationmesh_set_region_min_size = api_core.godot_method_bind_get_method('NavigationMesh', 'set_region_min_size')
  bind_navigationmesh_set_sample_partition_type = api_core.godot_method_bind_get_method('NavigationMesh', 'set_sample_partition_type')
  bind_navigationmesh_set_source_geometry_mode = api_core.godot_method_bind_get_method('NavigationMesh', 'set_source_geometry_mode')
  bind_navigationmesh_set_source_group_name = api_core.godot_method_bind_get_method('NavigationMesh', 'set_source_group_name')
  bind_navigationmesh_set_vertices = api_core.godot_method_bind_get_method('NavigationMesh', 'set_vertices')
  bind_navigationmesh_set_verts_per_poly = api_core.godot_method_bind_get_method('NavigationMesh', 'set_verts_per_poly')

############################Generated class###################################
cdef class NavigationMesh(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NavigationMesh")())
##################################Generated Properties#########################################
  @property
  def agent_height(self): 
    return self.get_agent_height()
  @agent_height.setter 
  def agent_height(self,value): 
    self.set_agent_height(value)
  @property
  def agent_max_climb(self): 
    return self.get_agent_max_climb()
  @agent_max_climb.setter 
  def agent_max_climb(self,value): 
    self.set_agent_max_climb(value)
  @property
  def agent_max_slope(self): 
    return self.get_agent_max_slope()
  @agent_max_slope.setter 
  def agent_max_slope(self,value): 
    self.set_agent_max_slope(value)
  @property
  def agent_radius(self): 
    return self.get_agent_radius()
  @agent_radius.setter 
  def agent_radius(self,value): 
    self.set_agent_radius(value)
  @property
  def cell_height(self): 
    return self.get_cell_height()
  @cell_height.setter 
  def cell_height(self,value): 
    self.set_cell_height(value)
  @property
  def cell_size(self): 
    return self.get_cell_size()
  @cell_size.setter 
  def cell_size(self,value): 
    self.set_cell_size(value)
  @property
  def detail_sample_distance(self): 
    return self.get_detail_sample_distance()
  @detail_sample_distance.setter 
  def detail_sample_distance(self,value): 
    self.set_detail_sample_distance(value)
  @property
  def detail_sample_max_error(self): 
    return self.get_detail_sample_max_error()
  @detail_sample_max_error.setter 
  def detail_sample_max_error(self,value): 
    self.set_detail_sample_max_error(value)
  @property
  def edge_max_error(self): 
    return self.get_edge_max_error()
  @edge_max_error.setter 
  def edge_max_error(self,value): 
    self.set_edge_max_error(value)
  @property
  def edge_max_length(self): 
    return self.get_edge_max_length()
  @edge_max_length.setter 
  def edge_max_length(self,value): 
    self.set_edge_max_length(value)
  @property
  def filter_filter_walkable_low_height_spans(self): 
    return self.get_filter_filter_walkable_low_height_spans()
  @filter_filter_walkable_low_height_spans.setter 
  def filter_filter_walkable_low_height_spans(self,value): 
    self.set_filter_filter_walkable_low_height_spans(value)
  @property
  def filter_ledge_spans(self): 
    return self.get_filter_ledge_spans()
  @filter_ledge_spans.setter 
  def filter_ledge_spans(self,value): 
    self.set_filter_ledge_spans(value)
  @property
  def filter_low_hanging_obstacles(self): 
    return self.get_filter_low_hanging_obstacles()
  @filter_low_hanging_obstacles.setter 
  def filter_low_hanging_obstacles(self,value): 
    self.set_filter_low_hanging_obstacles(value)
  @property
  def geometry_collision_mask(self): 
    return self.get_geometry_collision_mask()
  @geometry_collision_mask.setter 
  def geometry_collision_mask(self,value): 
    self.set_geometry_collision_mask(value)
  @property
  def geometry_parsed_geometry_type(self): 
    return self.get_geometry_parsed_geometry_type()
  @geometry_parsed_geometry_type.setter 
  def geometry_parsed_geometry_type(self,value): 
    self.set_geometry_parsed_geometry_type(value)
  @property
  def geometry_source_geometry_mode(self): 
    return self.get_geometry_source_geometry_mode()
  @geometry_source_geometry_mode.setter 
  def geometry_source_geometry_mode(self,value): 
    self.set_geometry_source_geometry_mode(value)
  @property
  def geometry_source_group_name(self): 
    return self.get_geometry_source_group_name()
  @geometry_source_group_name.setter 
  def geometry_source_group_name(self,value): 
    self.set_geometry_source_group_name(value)
  @property
  def polygon_verts_per_poly(self): 
    return self.get_polygon_verts_per_poly()
  @polygon_verts_per_poly.setter 
  def polygon_verts_per_poly(self,value): 
    self.set_polygon_verts_per_poly(value)
  @property
  def polygons(self): 
    return self.get_polygons()
  @polygons.setter 
  def polygons(self,value): 
    self.set_polygons(value)
  @property
  def region_merge_size(self): 
    return self.get_region_merge_size()
  @region_merge_size.setter 
  def region_merge_size(self,value): 
    self.set_region_merge_size(value)
  @property
  def region_min_size(self): 
    return self.get_region_min_size()
  @region_min_size.setter 
  def region_min_size(self,value): 
    self.set_region_min_size(value)
  @property
  def sample_partition_type_sample_partition_type(self): 
    return self.get_sample_partition_type_sample_partition_type()
  @sample_partition_type_sample_partition_type.setter 
  def sample_partition_type_sample_partition_type(self,value): 
    self.set_sample_partition_type_sample_partition_type(value)
  @property
  def vertices(self): 
    return self.get_vertices()
  @vertices.setter 
  def vertices(self,value): 
    self.set_vertices(value)

##################################Generated Methods#########################################
  def  _get_polygons(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh__get_polygons,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_polygons(self,  Array polygons):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &polygons._native
    api_core.godot_method_bind_ptrcall(bind_navigationmesh__set_polygons,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_polygon(self,  PoolIntArray polygon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &polygon._native
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_add_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_polygons(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_clear_polygons,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_from_mesh(self,  classes.Mesh.Mesh mesh):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = mesh.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_create_from_mesh,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_agent_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_agent_max_climb(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_max_climb,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_agent_max_slope(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_max_slope,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_agent_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_cell_height(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_cell_height,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_cell_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_cell_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_detail_sample_distance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_detail_sample_distance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_detail_sample_max_error(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_detail_sample_max_error,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_edge_max_error(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_edge_max_error,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_edge_max_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_edge_max_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_filter_ledge_spans(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_filter_ledge_spans,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_filter_low_hanging_obstacles(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_filter_low_hanging_obstacles,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_filter_walkable_low_height_spans(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_filter_walkable_low_height_spans,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_parsed_geometry_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_parsed_geometry_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_polygon(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_polygon,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_polygon_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_polygon_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_region_merge_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_region_merge_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_region_min_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_region_min_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sample_partition_type(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_sample_partition_type,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_source_geometry_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_source_geometry_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_source_group_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_source_group_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_vertices(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_vertices,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_verts_per_poly(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_verts_per_poly,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_agent_height(self,  float agent_height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &agent_height
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_agent_max_climb(self,  float agent_max_climb):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &agent_max_climb
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_max_climb,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_agent_max_slope(self,  float agent_max_slope):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &agent_max_slope
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_max_slope,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_agent_radius(self,  float agent_radius):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &agent_radius
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cell_height(self,  float cell_height):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &cell_height
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_cell_height,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cell_size(self,  float cell_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &cell_size
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_cell_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_detail_sample_distance(self,  float detail_sample_dist):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &detail_sample_dist
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_detail_sample_distance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_detail_sample_max_error(self,  float detail_sample_max_error):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &detail_sample_max_error
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_detail_sample_max_error,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_edge_max_error(self,  float edge_max_error):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &edge_max_error
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_edge_max_error,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_edge_max_length(self,  float edge_max_length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &edge_max_length
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_edge_max_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filter_ledge_spans(self,  bool filter_ledge_spans):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &filter_ledge_spans
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_filter_ledge_spans,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filter_low_hanging_obstacles(self,  bool filter_low_hanging_obstacles):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &filter_low_hanging_obstacles
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_filter_low_hanging_obstacles,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_filter_walkable_low_height_spans(self,  bool filter_walkable_low_height_spans):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &filter_walkable_low_height_spans
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_filter_walkable_low_height_spans,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_parsed_geometry_type(self,  int geometry_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &geometry_type
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_parsed_geometry_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region_merge_size(self,  float region_merge_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &region_merge_size
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_region_merge_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_region_min_size(self,  float region_min_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &region_min_size
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_region_min_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sample_partition_type(self,  int sample_partition_type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &sample_partition_type
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_sample_partition_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_source_geometry_mode(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_source_geometry_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_source_group_name(self,  String mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask._native
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_source_group_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_vertices(self,  PoolVector3Array vertices):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &vertices._native
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_vertices,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_verts_per_poly(self,  float verts_per_poly):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &verts_per_poly
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_verts_per_poly,self.godot_owner,args,NULL)
    hello('hallo2')
