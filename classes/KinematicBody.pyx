from classes.PhysicsBody cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_kinematicbody_get_axis_lock
cdef godot_method_bind *bind_kinematicbody_get_floor_normal
cdef godot_method_bind *bind_kinematicbody_get_floor_velocity
cdef godot_method_bind *bind_kinematicbody_get_safe_margin
cdef godot_method_bind *bind_kinematicbody_get_slide_collision
cdef godot_method_bind *bind_kinematicbody_get_slide_count
cdef godot_method_bind *bind_kinematicbody_is_on_ceiling
cdef godot_method_bind *bind_kinematicbody_is_on_floor
cdef godot_method_bind *bind_kinematicbody_is_on_wall
cdef godot_method_bind *bind_kinematicbody_move_and_collide
cdef godot_method_bind *bind_kinematicbody_move_and_slide
cdef godot_method_bind *bind_kinematicbody_move_and_slide_with_snap
cdef godot_method_bind *bind_kinematicbody_set_axis_lock
cdef godot_method_bind *bind_kinematicbody_set_safe_margin
cdef godot_method_bind *bind_kinematicbody_test_move
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_kinematicbody_get_axis_lock = api_core.godot_method_bind_get_method('KinematicBody', 'get_axis_lock')
  bind_kinematicbody_get_floor_normal = api_core.godot_method_bind_get_method('KinematicBody', 'get_floor_normal')
  bind_kinematicbody_get_floor_velocity = api_core.godot_method_bind_get_method('KinematicBody', 'get_floor_velocity')
  bind_kinematicbody_get_safe_margin = api_core.godot_method_bind_get_method('KinematicBody', 'get_safe_margin')
  bind_kinematicbody_get_slide_collision = api_core.godot_method_bind_get_method('KinematicBody', 'get_slide_collision')
  bind_kinematicbody_get_slide_count = api_core.godot_method_bind_get_method('KinematicBody', 'get_slide_count')
  bind_kinematicbody_is_on_ceiling = api_core.godot_method_bind_get_method('KinematicBody', 'is_on_ceiling')
  bind_kinematicbody_is_on_floor = api_core.godot_method_bind_get_method('KinematicBody', 'is_on_floor')
  bind_kinematicbody_is_on_wall = api_core.godot_method_bind_get_method('KinematicBody', 'is_on_wall')
  bind_kinematicbody_move_and_collide = api_core.godot_method_bind_get_method('KinematicBody', 'move_and_collide')
  bind_kinematicbody_move_and_slide = api_core.godot_method_bind_get_method('KinematicBody', 'move_and_slide')
  bind_kinematicbody_move_and_slide_with_snap = api_core.godot_method_bind_get_method('KinematicBody', 'move_and_slide_with_snap')
  bind_kinematicbody_set_axis_lock = api_core.godot_method_bind_get_method('KinematicBody', 'set_axis_lock')
  bind_kinematicbody_set_safe_margin = api_core.godot_method_bind_get_method('KinematicBody', 'set_safe_margin')
  bind_kinematicbody_test_move = api_core.godot_method_bind_get_method('KinematicBody', 'test_move')

############################Generated class###################################
cdef class KinematicBody(PhysicsBody):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("KinematicBody")())
##################################Generated Properties#########################################
  @property
  def collision_safe_margin(self): 
    return self.get_collision_safe_margin()
  @collision_safe_margin.setter 
  def collision_safe_margin(self,value): 
    self.set_collision_safe_margin(value)
  @property
  def move_lock_x(self): 
    return self.get_move_lock_x()
  @move_lock_x.setter 
  def move_lock_x(self,value): 
    self.set_move_lock_x(value)
  @property
  def move_lock_y(self): 
    return self.get_move_lock_y()
  @move_lock_y.setter 
  def move_lock_y(self,value): 
    self.set_move_lock_y(value)
  @property
  def move_lock_z(self): 
    return self.get_move_lock_z()
  @move_lock_z.setter 
  def move_lock_z(self,value): 
    self.set_move_lock_z(value)

##################################Generated Methods#########################################
  def  get_axis_lock(self, axis):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_axis_lock,self.godot_owner,[NULL,],&ret)
  def  get_floor_normal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_floor_normal,self.godot_owner,[NULL,],&ret)
  def  get_floor_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_floor_velocity,self.godot_owner,[NULL,],&ret)
  def  get_safe_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_safe_margin,self.godot_owner,[NULL,],&ret)
  def  get_slide_collision(self, slide_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef KinematicCollision ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_slide_collision,self.godot_owner,[NULL,],&ret)
  def  get_slide_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_slide_count,self.godot_owner,[NULL,],&ret)
  def  is_on_ceiling(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_is_on_ceiling,self.godot_owner,[NULL,],&ret)
  def  is_on_floor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_is_on_floor,self.godot_owner,[NULL,],&ret)
  def  is_on_wall(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_is_on_wall,self.godot_owner,[NULL,],&ret)
  def  move_and_collide(self, rel_vecinfinite_inertiaexclude_raycast_shapestest_only):
    cdef godot_object *_owner = self.godot_owner
    cdef KinematicCollision ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_move_and_collide,self.godot_owner,[NULL,],&ret)
  def  move_and_slide(self, linear_velocityup_directionstop_on_slopemax_slidesfloor_max_angleinfinite_inertia):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_move_and_slide,self.godot_owner,[NULL,],&ret)
  def  move_and_slide_with_snap(self, linear_velocitysnapup_directionstop_on_slopemax_slidesfloor_max_angleinfinite_inertia):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_move_and_slide_with_snap,self.godot_owner,[NULL,],&ret)
  def  set_axis_lock(self, axislock):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_set_axis_lock,self.godot_owner,[NULL,],NULL)
  def  set_safe_margin(self, pixels):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_set_safe_margin,self.godot_owner,[NULL,],NULL)
  def  test_move(self, from_, rel_vecinfinite_inertia):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_test_move,self.godot_owner,[NULL,],&ret)
