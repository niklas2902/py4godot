
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
cimport classes.Reference 

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
cdef class AStar2D(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AStar2D")())
##################################Generated Methods#########################################
  def  add_point(self,  int id,  Vector2 position,  float weight_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &position._native
    args[2] = &weight_scale
    api_core.godot_method_bind_ptrcall(bind_astar2d_add_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  are_points_connected(self,  int id,  int to_id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &id
    args[1] = &to_id
    api_core.godot_method_bind_ptrcall(bind_astar2d_are_points_connected,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_astar2d_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  connect_points(self,  int id,  int to_id,  bool bidirectional):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &to_id
    args[2] = &bidirectional
    api_core.godot_method_bind_ptrcall(bind_astar2d_connect_points,self.godot_owner,args,NULL)
    hello('hallo2')
  def  disconnect_points(self,  int id,  int to_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &to_id
    api_core.godot_method_bind_ptrcall(bind_astar2d_disconnect_points,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_available_point_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_astar2d_get_available_point_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_closest_point(self,  Vector2 to_position,  bool include_disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &to_position._native
    args[1] = &include_disabled
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_closest_point,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_closest_position_in_segment(self,  Vector2 to_position):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &to_position._native
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_closest_position_in_segment,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_id_path(self,  int from_id,  int to_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &from_id
    args[1] = &to_id
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_id_path,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_point_capacity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_capacity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_connections(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_connections,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_point_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_point_path(self,  int from_id,  int to_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &from_id
    args[1] = &to_id
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_path,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_point_position(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_point_weight_scale(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_astar2d_get_point_weight_scale,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_points(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_astar2d_get_points,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  has_point(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_astar2d_has_point,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_point_disabled(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_astar2d_is_point_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_point(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_astar2d_remove_point,self.godot_owner,args,NULL)
    hello('hallo2')
  def  reserve_space(self,  int num_nodes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &num_nodes
    api_core.godot_method_bind_ptrcall(bind_astar2d_reserve_space,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_disabled(self,  int id,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_astar2d_set_point_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_position(self,  int id,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_astar2d_set_point_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_point_weight_scale(self,  int id,  float weight_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &weight_scale
    api_core.godot_method_bind_ptrcall(bind_astar2d_set_point_weight_scale,self.godot_owner,args,NULL)
    hello('hallo2')
