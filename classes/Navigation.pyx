from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_navigation_get_closest_point
cdef godot_method_bind *bind_navigation_get_closest_point_normal
cdef godot_method_bind *bind_navigation_get_closest_point_owner
cdef godot_method_bind *bind_navigation_get_closest_point_to_segment
cdef godot_method_bind *bind_navigation_get_simple_path
cdef godot_method_bind *bind_navigation_get_up_vector
cdef godot_method_bind *bind_navigation_navmesh_add
cdef godot_method_bind *bind_navigation_navmesh_remove
cdef godot_method_bind *bind_navigation_navmesh_set_transform
cdef godot_method_bind *bind_navigation_set_up_vector
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_navigation_get_closest_point = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point')
  bind_navigation_get_closest_point_normal = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point_normal')
  bind_navigation_get_closest_point_owner = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point_owner')
  bind_navigation_get_closest_point_to_segment = api_core.godot_method_bind_get_method('Navigation', 'get_closest_point_to_segment')
  bind_navigation_get_simple_path = api_core.godot_method_bind_get_method('Navigation', 'get_simple_path')
  bind_navigation_get_up_vector = api_core.godot_method_bind_get_method('Navigation', 'get_up_vector')
  bind_navigation_navmesh_add = api_core.godot_method_bind_get_method('Navigation', 'navmesh_add')
  bind_navigation_navmesh_remove = api_core.godot_method_bind_get_method('Navigation', 'navmesh_remove')
  bind_navigation_navmesh_set_transform = api_core.godot_method_bind_get_method('Navigation', 'navmesh_set_transform')
  bind_navigation_set_up_vector = api_core.godot_method_bind_get_method('Navigation', 'set_up_vector')

############################Generated class###################################
cdef class Navigation(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Navigation")())
##################################Generated Properties#########################################
  @property
  def up_vector(self): 
    return self.get_up_vector()
  @up_vector.setter 
  def up_vector(self,value): 
    self.set_up_vector(value)

##################################Generated Methods#########################################
  def  get_closest_point(self, to_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point,self.godot_owner,[NULL,],&ret)
  def  get_closest_point_normal(self, to_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point_normal,self.godot_owner,[NULL,],&ret)
  def  get_closest_point_owner(self, to_point):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point_owner,self.godot_owner,[NULL,],&ret)
  def  get_closest_point_to_segment(self, startenduse_collision):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_navigation_get_closest_point_to_segment,self.godot_owner,[NULL,],&ret)
  def  get_simple_path(self, startendoptimize):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector3Array ret
    api_core.godot_method_bind_ptrcall(bind_navigation_get_simple_path,self.godot_owner,[NULL,],&ret)
  def  get_up_vector(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_navigation_get_up_vector,self.godot_owner,[NULL,],&ret)
  def  navmesh_add(self, meshxformowner):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_navigation_navmesh_add,self.godot_owner,[NULL,],&ret)
  def  navmesh_remove(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigation_navmesh_remove,self.godot_owner,[NULL,],NULL)
  def  navmesh_set_transform(self, idxform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigation_navmesh_set_transform,self.godot_owner,[NULL,],NULL)
  def  set_up_vector(self, up):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_navigation_set_up_vector,self.godot_owner,[NULL,],NULL)
