
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
cdef class SpatialVelocityTracker(classes.Reference.Reference):
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

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_get_tracked_linear_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  is_tracking_physics_step(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_is_tracking_physics_step,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  reset(self,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_reset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_track_physics_step(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_set_track_physics_step,self.godot_owner,args,NULL)
    hello('hallo2')
  def  update_position(self,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position._native
    api_core.godot_method_bind_ptrcall(bind_spatialvelocitytracker_update_position,self.godot_owner,args,NULL)
    hello('hallo2')
