from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class NavigationMesh(Resource):
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
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh__get_polygons,self.godot_owner,[NULL,],&ret)
  def  _set_polygons(self, polygons):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh__set_polygons,self.godot_owner,[NULL,],NULL)
  def  add_polygon(self, polygon):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_add_polygon,self.godot_owner,[NULL,],NULL)
  def  clear_polygons(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_clear_polygons,self.godot_owner,[NULL,],NULL)
  def  create_from_mesh(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_create_from_mesh,self.godot_owner,[NULL,],NULL)
  def  get_agent_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_height,self.godot_owner,[NULL,],&ret)
  def  get_agent_max_climb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_max_climb,self.godot_owner,[NULL,],&ret)
  def  get_agent_max_slope(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_max_slope,self.godot_owner,[NULL,],&ret)
  def  get_agent_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_agent_radius,self.godot_owner,[NULL,],&ret)
  def  get_cell_height(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_cell_height,self.godot_owner,[NULL,],&ret)
  def  get_cell_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_cell_size,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_detail_sample_distance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_detail_sample_distance,self.godot_owner,[NULL,],&ret)
  def  get_detail_sample_max_error(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_detail_sample_max_error,self.godot_owner,[NULL,],&ret)
  def  get_edge_max_error(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_edge_max_error,self.godot_owner,[NULL,],&ret)
  def  get_edge_max_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_edge_max_length,self.godot_owner,[NULL,],&ret)
  def  get_filter_ledge_spans(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_filter_ledge_spans,self.godot_owner,[NULL,],&ret)
  def  get_filter_low_hanging_obstacles(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_filter_low_hanging_obstacles,self.godot_owner,[NULL,],&ret)
  def  get_filter_walkable_low_height_spans(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_filter_walkable_low_height_spans,self.godot_owner,[NULL,],&ret)
  def  get_parsed_geometry_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_parsed_geometry_type,self.godot_owner,[NULL,],&ret)
  def  get_polygon(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_polygon,self.godot_owner,[NULL,],&ret)
  def  get_polygon_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_polygon_count,self.godot_owner,[NULL,],&ret)
  def  get_region_merge_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_region_merge_size,self.godot_owner,[NULL,],&ret)
  def  get_region_min_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_region_min_size,self.godot_owner,[NULL,],&ret)
  def  get_sample_partition_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_sample_partition_type,self.godot_owner,[NULL,],&ret)
  def  get_source_geometry_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_source_geometry_mode,self.godot_owner,[NULL,],&ret)
  def  get_source_group_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_source_group_name,self.godot_owner,[NULL,],&ret)
  def  get_vertices(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector3Array ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_vertices,self.godot_owner,[NULL,],&ret)
  def  get_verts_per_poly(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_get_verts_per_poly,self.godot_owner,[NULL,],&ret)
  def  set_agent_height(self, agent_height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_height,self.godot_owner,[NULL,],NULL)
  def  set_agent_max_climb(self, agent_max_climb):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_max_climb,self.godot_owner,[NULL,],NULL)
  def  set_agent_max_slope(self, agent_max_slope):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_max_slope,self.godot_owner,[NULL,],NULL)
  def  set_agent_radius(self, agent_radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_agent_radius,self.godot_owner,[NULL,],NULL)
  def  set_cell_height(self, cell_height):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_cell_height,self.godot_owner,[NULL,],NULL)
  def  set_cell_size(self, cell_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_cell_size,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
  def  set_detail_sample_distance(self, detail_sample_dist):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_detail_sample_distance,self.godot_owner,[NULL,],NULL)
  def  set_detail_sample_max_error(self, detail_sample_max_error):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_detail_sample_max_error,self.godot_owner,[NULL,],NULL)
  def  set_edge_max_error(self, edge_max_error):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_edge_max_error,self.godot_owner,[NULL,],NULL)
  def  set_edge_max_length(self, edge_max_length):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_edge_max_length,self.godot_owner,[NULL,],NULL)
  def  set_filter_ledge_spans(self, filter_ledge_spans):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_filter_ledge_spans,self.godot_owner,[NULL,],NULL)
  def  set_filter_low_hanging_obstacles(self, filter_low_hanging_obstacles):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_filter_low_hanging_obstacles,self.godot_owner,[NULL,],NULL)
  def  set_filter_walkable_low_height_spans(self, filter_walkable_low_height_spans):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_filter_walkable_low_height_spans,self.godot_owner,[NULL,],NULL)
  def  set_parsed_geometry_type(self, geometry_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_parsed_geometry_type,self.godot_owner,[NULL,],NULL)
  def  set_region_merge_size(self, region_merge_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_region_merge_size,self.godot_owner,[NULL,],NULL)
  def  set_region_min_size(self, region_min_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_region_min_size,self.godot_owner,[NULL,],NULL)
  def  set_sample_partition_type(self, sample_partition_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_sample_partition_type,self.godot_owner,[NULL,],NULL)
  def  set_source_geometry_mode(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_source_geometry_mode,self.godot_owner,[NULL,],NULL)
  def  set_source_group_name(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_source_group_name,self.godot_owner,[NULL,],NULL)
  def  set_vertices(self, vertices):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_vertices,self.godot_owner,[NULL,],NULL)
  def  set_verts_per_poly(self, verts_per_poly):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigationmesh_set_verts_per_poly,self.godot_owner,[NULL,],NULL)
