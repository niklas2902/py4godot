from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spatialvelocitytracker_get_tracked_linear_velocity
cdef godot_method_bind *bind_spatialvelocitytracker_is_tracking_physics_step
cdef godot_method_bind *bind_spatialvelocitytracker_reset
cdef godot_method_bind *bind_spatialvelocitytracker_set_track_physics_step
cdef godot_method_bind *bind_spatialvelocitytracker_update_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spatialvelocitytracker_get_tracked_linear_velocity = api_core.godot_method_bind_get_method('SpatialVelocityTracker', 'get_tracked_linear_velocity')
  bind_spatialvelocitytracker_is_tracking_physics_step = api_core.godot_method_bind_get_method('SpatialVelocityTracker', 'is_tracking_physics_step')
  bind_spatialvelocitytracker_reset = api_core.godot_method_bind_get_method('SpatialVelocityTracker', 'reset')
  bind_spatialvelocitytracker_set_track_physics_step = api_core.godot_method_bind_get_method('SpatialVelocityTracker', 'set_track_physics_step')
  bind_spatialvelocitytracker_update_position = api_core.godot_method_bind_get_method('SpatialVelocityTracker', 'update_position')

############################Generated class###################################
cdef class SpatialVelocityTracker(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpatialVelocityTracker")())
##################################Generated Properties#########################################
  @property
  def track_physics_step(self): 
    return self.get_track_physics_step()
  @track_physics_step.setter 
  def track_physics_step(self,value): 
    self.set_track_physics_step(value)

##################################Generated Methods#########################################
  def  get_tracked_linear_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_get_tracked_linear_velocity,self.godot_owner,[NULL,],&ret)
  def  is_tracking_physics_step(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_is_tracking_physics_step,self.godot_owner,[NULL,],&ret)
  def  reset(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_reset,self.godot_owner,[NULL,],NULL)
  def  set_track_physics_step(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_set_track_physics_step,self.godot_owner,[NULL,],NULL)
  def  update_position(self, position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_update_position,self.godot_owner,[NULL,],NULL)
