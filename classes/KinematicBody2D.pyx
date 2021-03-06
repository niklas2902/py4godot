from classes.PhysicsBody2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_kinematicbody2d__direct_state_changed
cdef godot_method_bind *bind_kinematicbody2d_get_floor_normal
cdef godot_method_bind *bind_kinematicbody2d_get_floor_velocity
cdef godot_method_bind *bind_kinematicbody2d_get_safe_margin
cdef godot_method_bind *bind_kinematicbody2d_get_slide_collision
cdef godot_method_bind *bind_kinematicbody2d_get_slide_count
cdef godot_method_bind *bind_kinematicbody2d_is_on_ceiling
cdef godot_method_bind *bind_kinematicbody2d_is_on_floor
cdef godot_method_bind *bind_kinematicbody2d_is_on_wall
cdef godot_method_bind *bind_kinematicbody2d_is_sync_to_physics_enabled
cdef godot_method_bind *bind_kinematicbody2d_move_and_collide
cdef godot_method_bind *bind_kinematicbody2d_move_and_slide
cdef godot_method_bind *bind_kinematicbody2d_move_and_slide_with_snap
cdef godot_method_bind *bind_kinematicbody2d_set_safe_margin
cdef godot_method_bind *bind_kinematicbody2d_set_sync_to_physics
cdef godot_method_bind *bind_kinematicbody2d_test_move
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_kinematicbody2d__direct_state_changed = api_core.godot_method_bind_get_method('KinematicBody2D', '_direct_state_changed')
  bind_kinematicbody2d_get_floor_normal = api_core.godot_method_bind_get_method('KinematicBody2D', 'get_floor_normal')
  bind_kinematicbody2d_get_floor_velocity = api_core.godot_method_bind_get_method('KinematicBody2D', 'get_floor_velocity')
  bind_kinematicbody2d_get_safe_margin = api_core.godot_method_bind_get_method('KinematicBody2D', 'get_safe_margin')
  bind_kinematicbody2d_get_slide_collision = api_core.godot_method_bind_get_method('KinematicBody2D', 'get_slide_collision')
  bind_kinematicbody2d_get_slide_count = api_core.godot_method_bind_get_method('KinematicBody2D', 'get_slide_count')
  bind_kinematicbody2d_is_on_ceiling = api_core.godot_method_bind_get_method('KinematicBody2D', 'is_on_ceiling')
  bind_kinematicbody2d_is_on_floor = api_core.godot_method_bind_get_method('KinematicBody2D', 'is_on_floor')
  bind_kinematicbody2d_is_on_wall = api_core.godot_method_bind_get_method('KinematicBody2D', 'is_on_wall')
  bind_kinematicbody2d_is_sync_to_physics_enabled = api_core.godot_method_bind_get_method('KinematicBody2D', 'is_sync_to_physics_enabled')
  bind_kinematicbody2d_move_and_collide = api_core.godot_method_bind_get_method('KinematicBody2D', 'move_and_collide')
  bind_kinematicbody2d_move_and_slide = api_core.godot_method_bind_get_method('KinematicBody2D', 'move_and_slide')
  bind_kinematicbody2d_move_and_slide_with_snap = api_core.godot_method_bind_get_method('KinematicBody2D', 'move_and_slide_with_snap')
  bind_kinematicbody2d_set_safe_margin = api_core.godot_method_bind_get_method('KinematicBody2D', 'set_safe_margin')
  bind_kinematicbody2d_set_sync_to_physics = api_core.godot_method_bind_get_method('KinematicBody2D', 'set_sync_to_physics')
  bind_kinematicbody2d_test_move = api_core.godot_method_bind_get_method('KinematicBody2D', 'test_move')

############################Generated class###################################
cdef class KinematicBody2D(PhysicsBody2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("KinematicBody2D")())
##################################Generated Properties#########################################
  @property
  def collision_safe_margin(self): 
    return self.get_collision_safe_margin()
  @collision_safe_margin.setter 
  def collision_safe_margin(self,value): 
    self.set_collision_safe_margin(value)
  @property
  def motion_sync_to_physics(self): 
    return self.get_motion_sync_to_physics()
  @motion_sync_to_physics.setter 
  def motion_sync_to_physics(self,value): 
    self.set_motion_sync_to_physics(value)

##################################Generated Methods#########################################
  def  _direct_state_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d__direct_state_changed,self.godot_owner,[NULL,],NULL)
  def  get_floor_normal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_floor_normal,self.godot_owner,[NULL,],&ret)
  def  get_floor_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_floor_velocity,self.godot_owner,[NULL,],&ret)
  def  get_safe_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_safe_margin,self.godot_owner,[NULL,],&ret)
  def  get_slide_collision(self, slide_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef KinematicCollision2D ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_slide_collision,self.godot_owner,[NULL,],&ret)
  def  get_slide_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_slide_count,self.godot_owner,[NULL,],&ret)
  def  is_on_ceiling(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_on_ceiling,self.godot_owner,[NULL,],&ret)
  def  is_on_floor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_on_floor,self.godot_owner,[NULL,],&ret)
  def  is_on_wall(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_on_wall,self.godot_owner,[NULL,],&ret)
  def  is_sync_to_physics_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_sync_to_physics_enabled,self.godot_owner,[NULL,],&ret)
  def  move_and_collide(self, rel_vecinfinite_inertiaexclude_raycast_shapestest_only):
    cdef godot_object *_owner = self.godot_owner
    cdef KinematicCollision2D ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_move_and_collide,self.godot_owner,[NULL,],&ret)
  def  move_and_slide(self, linear_velocityup_directionstop_on_slopemax_slidesfloor_max_angleinfinite_inertia):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_move_and_slide,self.godot_owner,[NULL,],&ret)
  def  move_and_slide_with_snap(self, linear_velocitysnapup_directionstop_on_slopemax_slidesfloor_max_angleinfinite_inertia):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_move_and_slide_with_snap,self.godot_owner,[NULL,],&ret)
  def  set_safe_margin(self, pixels):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_set_safe_margin,self.godot_owner,[NULL,],NULL)
  def  set_sync_to_physics(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_set_sync_to_physics,self.godot_owner,[NULL,],NULL)
  def  test_move(self, from_, rel_vecinfinite_inertia):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_test_move,self.godot_owner,[NULL,],&ret)
