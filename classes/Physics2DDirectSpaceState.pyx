from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physics2ddirectspacestate_cast_motion
cdef godot_method_bind *bind_physics2ddirectspacestate_collide_shape
cdef godot_method_bind *bind_physics2ddirectspacestate_get_rest_info
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_point
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_point_on_canvas
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_ray
cdef godot_method_bind *bind_physics2ddirectspacestate_intersect_shape
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physics2ddirectspacestate_cast_motion = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'cast_motion')
  bind_physics2ddirectspacestate_collide_shape = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'collide_shape')
  bind_physics2ddirectspacestate_get_rest_info = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'get_rest_info')
  bind_physics2ddirectspacestate_intersect_point = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_point')
  bind_physics2ddirectspacestate_intersect_point_on_canvas = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_point_on_canvas')
  bind_physics2ddirectspacestate_intersect_ray = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_ray')
  bind_physics2ddirectspacestate_intersect_shape = api_core.godot_method_bind_get_method('Physics2DDirectSpaceState', 'intersect_shape')

############################Generated class###################################
cdef class Physics2DDirectSpaceState(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DDirectSpaceState")())
##################################Generated Methods#########################################
  def  cast_motion(self, shape):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_cast_motion,self.godot_owner,[NULL,],&ret)
  def  collide_shape(self, shapemax_results):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_collide_shape,self.godot_owner,[NULL,],&ret)
  def  get_rest_info(self, shape):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_get_rest_info,self.godot_owner,[NULL,],&ret)
  def  intersect_point(self, pointmax_resultsexcludecollision_layercollide_with_bodiescollide_with_areas):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_point,self.godot_owner,[NULL,],&ret)
  def  intersect_point_on_canvas(self, pointcanvas_instance_idmax_resultsexcludecollision_layercollide_with_bodiescollide_with_areas):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_point_on_canvas,self.godot_owner,[NULL,],&ret)
  def  intersect_ray(self, from_, toexcludecollision_layercollide_with_bodiescollide_with_areas):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_ray,self.godot_owner,[NULL,],&ret)
  def  intersect_shape(self, shapemax_results):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectspacestate_intersect_shape,self.godot_owner,[NULL,],&ret)
