from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_astar2d_add_point
cdef godot_method_bind *bind_astar2d_are_points_connected
cdef godot_method_bind *bind_astar2d_clear
cdef godot_method_bind *bind_astar2d_connect_points
cdef godot_method_bind *bind_astar2d_disconnect_points
cdef godot_method_bind *bind_astar2d_get_available_point_id
cdef godot_method_bind *bind_astar2d_get_closest_point
cdef godot_method_bind *bind_astar2d_get_closest_position_in_segment
cdef godot_method_bind *bind_astar2d_get_id_path
cdef godot_method_bind *bind_astar2d_get_point_capacity
cdef godot_method_bind *bind_astar2d_get_point_connections
cdef godot_method_bind *bind_astar2d_get_point_count
cdef godot_method_bind *bind_astar2d_get_point_path
cdef godot_method_bind *bind_astar2d_get_point_position
cdef godot_method_bind *bind_astar2d_get_point_weight_scale
cdef godot_method_bind *bind_astar2d_get_points
cdef godot_method_bind *bind_astar2d_has_point
cdef godot_method_bind *bind_astar2d_is_point_disabled
cdef godot_method_bind *bind_astar2d_remove_point
cdef godot_method_bind *bind_astar2d_reserve_space
cdef godot_method_bind *bind_astar2d_set_point_disabled
cdef godot_method_bind *bind_astar2d_set_point_position
cdef godot_method_bind *bind_astar2d_set_point_weight_scale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_astar2d_add_point = api_core.godot_method_bind_get_method('AStar2D', 'add_point')
  bind_astar2d_are_points_connected = api_core.godot_method_bind_get_method('AStar2D', 'are_points_connected')
  bind_astar2d_clear = api_core.godot_method_bind_get_method('AStar2D', 'clear')
  bind_astar2d_connect_points = api_core.godot_method_bind_get_method('AStar2D', 'connect_points')
  bind_astar2d_disconnect_points = api_core.godot_method_bind_get_method('AStar2D', 'disconnect_points')
  bind_astar2d_get_available_point_id = api_core.godot_method_bind_get_method('AStar2D', 'get_available_point_id')
  bind_astar2d_get_closest_point = api_core.godot_method_bind_get_method('AStar2D', 'get_closest_point')
  bind_astar2d_get_closest_position_in_segment = api_core.godot_method_bind_get_method('AStar2D', 'get_closest_position_in_segment')
  bind_astar2d_get_id_path = api_core.godot_method_bind_get_method('AStar2D', 'get_id_path')
  bind_astar2d_get_point_capacity = api_core.godot_method_bind_get_method('AStar2D', 'get_point_capacity')
  bind_astar2d_get_point_connections = api_core.godot_method_bind_get_method('AStar2D', 'get_point_connections')
  bind_astar2d_get_point_count = api_core.godot_method_bind_get_method('AStar2D', 'get_point_count')
  bind_astar2d_get_point_path = api_core.godot_method_bind_get_method('AStar2D', 'get_point_path')
  bind_astar2d_get_point_position = api_core.godot_method_bind_get_method('AStar2D', 'get_point_position')
  bind_astar2d_get_point_weight_scale = api_core.godot_method_bind_get_method('AStar2D', 'get_point_weight_scale')
  bind_astar2d_get_points = api_core.godot_method_bind_get_method('AStar2D', 'get_points')
  bind_astar2d_has_point = api_core.godot_method_bind_get_method('AStar2D', 'has_point')
  bind_astar2d_is_point_disabled = api_core.godot_method_bind_get_method('AStar2D', 'is_point_disabled')
  bind_astar2d_remove_point = api_core.godot_method_bind_get_method('AStar2D', 'remove_point')
  bind_astar2d_reserve_space = api_core.godot_method_bind_get_method('AStar2D', 'reserve_space')
  bind_astar2d_set_point_disabled = api_core.godot_method_bind_get_method('AStar2D', 'set_point_disabled')
  bind_astar2d_set_point_position = api_core.godot_method_bind_get_method('AStar2D', 'set_point_position')
  bind_astar2d_set_point_weight_scale = api_core.godot_method_bind_get_method('AStar2D', 'set_point_weight_scale')

############################Generated class###################################
cdef class AStar2D(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AStar2D")())
##################################Generated Methods#########################################
  def  add_point(self, idpositionweight_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_add_point,self.godot_owner,[NULL,],NULL)
  def  are_points_connected(self, idto_id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_are_points_connected,self.godot_owner,[NULL,],&ret)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_clear,self.godot_owner,[NULL,],NULL)
  def  connect_points(self, idto_idbidirectional):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_connect_points,self.godot_owner,[NULL,],NULL)
  def  disconnect_points(self, idto_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_disconnect_points,self.godot_owner,[NULL,],NULL)
  def  get_available_point_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_available_point_id,self.godot_owner,[NULL,],&ret)
  def  get_closest_point(self, to_positioninclude_disabled):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_closest_point,self.godot_owner,[NULL,],&ret)
  def  get_closest_position_in_segment(self, to_position):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_closest_position_in_segment,self.godot_owner,[NULL,],&ret)
  def  get_id_path(self, from_idto_id):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_id_path,self.godot_owner,[NULL,],&ret)
  def  get_point_capacity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_capacity,self.godot_owner,[NULL,],&ret)
  def  get_point_connections(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_connections,self.godot_owner,[NULL,],&ret)
  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_count,self.godot_owner,[NULL,],&ret)
  def  get_point_path(self, from_idto_id):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_path,self.godot_owner,[NULL,],&ret)
  def  get_point_position(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_position,self.godot_owner,[NULL,],&ret)
  def  get_point_weight_scale(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_weight_scale,self.godot_owner,[NULL,],&ret)
  def  get_points(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_points,self.godot_owner,[NULL,],&ret)
  def  has_point(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_has_point,self.godot_owner,[NULL,],&ret)
  def  is_point_disabled(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_astar2d_is_point_disabled,self.godot_owner,[NULL,],&ret)
  def  remove_point(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_remove_point,self.godot_owner,[NULL,],NULL)
  def  reserve_space(self, num_nodes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_reserve_space,self.godot_owner,[NULL,],NULL)
  def  set_point_disabled(self, iddisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_set_point_disabled,self.godot_owner,[NULL,],NULL)
  def  set_point_position(self, idposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_set_point_position,self.godot_owner,[NULL,],NULL)
  def  set_point_weight_scale(self, idweight_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_astar2d_set_point_weight_scale,self.godot_owner,[NULL,],NULL)
