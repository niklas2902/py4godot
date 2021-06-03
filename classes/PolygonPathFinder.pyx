
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
cimport classes.Resource 

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
cdef class PolygonPathFinder(classes.Resource.Resource):
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

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _set_data(self,  Dictionary arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  find_path(self,  Vector2 from_,  Vector2 to):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &from_._native
    args[1] = &to._native
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_find_path,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_bounds(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_bounds,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_closest_point(self,  Vector2 point):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &point._native
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_closest_point,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_intersections(self,  Vector2 from_,  Vector2 to):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &from_._native
    args[1] = &to._native
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_intersections,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_point_penalty(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_get_point_penalty,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_point_inside(self,  Vector2 point):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &point._native
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_is_point_inside,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_point_penalty(self,  int idx,  float penalty):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &idx
    args[1] = &penalty
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_set_point_penalty,self.godot_owner,args,NULL)
    hello('hallo2')
  def  setup(self,  PoolVector2Array points,  PoolIntArray connections):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &points._native
    args[1] = &connections._native
    api_core.godot_method_bind_ptrcall(bind_polygonpathfinder_setup,self.godot_owner,args,NULL)
    hello('hallo2')
