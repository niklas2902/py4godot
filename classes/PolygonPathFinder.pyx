from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_polygonpathfinder__get_data
cdef godot_method_bind *bind_polygonpathfinder__set_data
cdef godot_method_bind *bind_polygonpathfinder_find_path
cdef godot_method_bind *bind_polygonpathfinder_get_bounds
cdef godot_method_bind *bind_polygonpathfinder_get_closest_point
cdef godot_method_bind *bind_polygonpathfinder_get_intersections
cdef godot_method_bind *bind_polygonpathfinder_get_point_penalty
cdef godot_method_bind *bind_polygonpathfinder_is_point_inside
cdef godot_method_bind *bind_polygonpathfinder_set_point_penalty
cdef godot_method_bind *bind_polygonpathfinder_setup
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_polygonpathfinder__get_data = api_core.godot_method_bind_get_method('PolygonPathFinder', '_get_data')
  bind_polygonpathfinder__set_data = api_core.godot_method_bind_get_method('PolygonPathFinder', '_set_data')
  bind_polygonpathfinder_find_path = api_core.godot_method_bind_get_method('PolygonPathFinder', 'find_path')
  bind_polygonpathfinder_get_bounds = api_core.godot_method_bind_get_method('PolygonPathFinder', 'get_bounds')
  bind_polygonpathfinder_get_closest_point = api_core.godot_method_bind_get_method('PolygonPathFinder', 'get_closest_point')
  bind_polygonpathfinder_get_intersections = api_core.godot_method_bind_get_method('PolygonPathFinder', 'get_intersections')
  bind_polygonpathfinder_get_point_penalty = api_core.godot_method_bind_get_method('PolygonPathFinder', 'get_point_penalty')
  bind_polygonpathfinder_is_point_inside = api_core.godot_method_bind_get_method('PolygonPathFinder', 'is_point_inside')
  bind_polygonpathfinder_set_point_penalty = api_core.godot_method_bind_get_method('PolygonPathFinder', 'set_point_penalty')
  bind_polygonpathfinder_setup = api_core.godot_method_bind_get_method('PolygonPathFinder', 'setup')

############################Generated class###################################
cdef class PolygonPathFinder(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PolygonPathFinder")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder__get_data,self.godot_owner,[NULL,],&ret)
  def  _set_data(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder__set_data,self.godot_owner,[NULL,],NULL)
  def  find_path(self, from_, to):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_find_path,self.godot_owner,[NULL,],&ret)
  def  get_bounds(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Rect2 ret
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_bounds,self.godot_owner,[NULL,],&ret)
  def  get_closest_point(self, point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_closest_point,self.godot_owner,[NULL,],&ret)
  def  get_intersections(self, from_, to):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_intersections,self.godot_owner,[NULL,],&ret)
  def  get_point_penalty(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_point_penalty,self.godot_owner,[NULL,],&ret)
  def  is_point_inside(self, point):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_is_point_inside,self.godot_owner,[NULL,],&ret)
  def  set_point_penalty(self, idxpenalty):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_set_point_penalty,self.godot_owner,[NULL,],NULL)
  def  setup(self, pointsconnections):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_setup,self.godot_owner,[NULL,],NULL)
