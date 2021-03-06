from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsdirectspacestate_cast_motion
cdef godot_method_bind *bind_physicsdirectspacestate_collide_shape
cdef godot_method_bind *bind_physicsdirectspacestate_get_rest_info
cdef godot_method_bind *bind_physicsdirectspacestate_intersect_ray
cdef godot_method_bind *bind_physicsdirectspacestate_intersect_shape
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsdirectspacestate_cast_motion = api_core.godot_method_bind_get_method('PhysicsDirectSpaceState', 'cast_motion')
  bind_physicsdirectspacestate_collide_shape = api_core.godot_method_bind_get_method('PhysicsDirectSpaceState', 'collide_shape')
  bind_physicsdirectspacestate_get_rest_info = api_core.godot_method_bind_get_method('PhysicsDirectSpaceState', 'get_rest_info')
  bind_physicsdirectspacestate_intersect_ray = api_core.godot_method_bind_get_method('PhysicsDirectSpaceState', 'intersect_ray')
  bind_physicsdirectspacestate_intersect_shape = api_core.godot_method_bind_get_method('PhysicsDirectSpaceState', 'intersect_shape')

############################Generated class###################################
cdef class PhysicsDirectSpaceState(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsDirectSpaceState")())
##################################Generated Methods#########################################
  def  cast_motion(self, shapemotion):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectspacestate_cast_motion,self.godot_owner,[NULL,],&ret)
  def  collide_shape(self, shapemax_results):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectspacestate_collide_shape,self.godot_owner,[NULL,],&ret)
  def  get_rest_info(self, shape):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectspacestate_get_rest_info,self.godot_owner,[NULL,],&ret)
  def  intersect_ray(self, from_, toexcludecollision_maskcollide_with_bodiescollide_with_areas):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectspacestate_intersect_ray,self.godot_owner,[NULL,],&ret)
  def  intersect_shape(self, shapemax_results):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectspacestate_intersect_shape,self.godot_owner,[NULL,],&ret)
