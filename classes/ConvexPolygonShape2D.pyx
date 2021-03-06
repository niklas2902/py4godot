from classes.Shape2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_convexpolygonshape2d_get_points
cdef godot_method_bind *bind_convexpolygonshape2d_set_point_cloud
cdef godot_method_bind *bind_convexpolygonshape2d_set_points
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_convexpolygonshape2d_get_points = api_core.godot_method_bind_get_method('ConvexPolygonShape2D', 'get_points')
  bind_convexpolygonshape2d_set_point_cloud = api_core.godot_method_bind_get_method('ConvexPolygonShape2D', 'set_point_cloud')
  bind_convexpolygonshape2d_set_points = api_core.godot_method_bind_get_method('ConvexPolygonShape2D', 'set_points')

############################Generated class###################################
cdef class ConvexPolygonShape2D(Shape2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConvexPolygonShape2D")())
##################################Generated Properties#########################################
  @property
  def points(self): 
    return self.get_points()
  @points.setter 
  def points(self,value): 
    self.set_points(value)

##################################Generated Methods#########################################
  def  get_points(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_convexpolygonshape2d_get_points,self.godot_owner,[NULL,],&ret)
  def  set_point_cloud(self, point_cloud):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_convexpolygonshape2d_set_point_cloud,self.godot_owner,[NULL,],NULL)
  def  set_points(self, points):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_convexpolygonshape2d_set_points,self.godot_owner,[NULL,],NULL)
