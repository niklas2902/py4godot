from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_navigation2d_get_closest_point
cdef godot_method_bind *bind_navigation2d_get_closest_point_owner
cdef godot_method_bind *bind_navigation2d_get_simple_path
cdef godot_method_bind *bind_navigation2d_navpoly_add
cdef godot_method_bind *bind_navigation2d_navpoly_remove
cdef godot_method_bind *bind_navigation2d_navpoly_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_navigation2d_get_closest_point = api_core.godot_method_bind_get_method('Navigation2D', 'get_closest_point')
  bind_navigation2d_get_closest_point_owner = api_core.godot_method_bind_get_method('Navigation2D', 'get_closest_point_owner')
  bind_navigation2d_get_simple_path = api_core.godot_method_bind_get_method('Navigation2D', 'get_simple_path')
  bind_navigation2d_navpoly_add = api_core.godot_method_bind_get_method('Navigation2D', 'navpoly_add')
  bind_navigation2d_navpoly_remove = api_core.godot_method_bind_get_method('Navigation2D', 'navpoly_remove')
  bind_navigation2d_navpoly_set_transform = api_core.godot_method_bind_get_method('Navigation2D', 'navpoly_set_transform')

############################Generated class###################################
cdef class Navigation2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Navigation2D")())
##################################Generated Methods#########################################
  def  get_closest_point(self, to_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_navigation2d_get_closest_point,self.godot_owner,[NULL,],&ret)
  def  get_closest_point_owner(self, to_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_navigation2d_get_closest_point_owner,self.godot_owner,[NULL,],&ret)
  def  get_simple_path(self, startendoptimize):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector2Array ret
    api_core.godot_method_bind_ptrcall(bind_navigation2d_get_simple_path,self.godot_owner,[NULL,],&ret)
  def  navpoly_add(self, meshxformowner):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigation2d_navpoly_add,self.godot_owner,[NULL,],&ret)
  def  navpoly_remove(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigation2d_navpoly_remove,self.godot_owner,[NULL,],NULL)
  def  navpoly_set_transform(self, idxform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigation2d_navpoly_set_transform,self.godot_owner,[NULL,],NULL)
