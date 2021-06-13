
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
cimport classes.Object
cimport classes.PhysicsBody2D 

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
cdef class KinematicBody2D(classes.PhysicsBody2D.PhysicsBody2D):
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
  def  _direct_state_changed(self,  classes.Object.Object arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d__direct_state_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_floor_normal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_floor_normal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_floor_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_floor_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_safe_margin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_safe_margin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_slide_collision(self,  int slide_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &slide_idx
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_slide_collision,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_slide_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_get_slide_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_on_ceiling(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_on_ceiling,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_on_floor(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_on_floor,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_on_wall(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_on_wall,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_sync_to_physics_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_is_sync_to_physics_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  move_and_collide(self,  Vector2 rel_vec,  bool infinite_inertia,  bool exclude_raycast_shapes,  bool test_only):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[4]

    args[0] = &rel_vec._native
    args[1] = &infinite_inertia
    args[2] = &exclude_raycast_shapes
    args[3] = &test_only
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_move_and_collide,self.godot_owner,args,&ret)
    hello('hallo2')
  def  move_and_slide(self,  Vector2 linear_velocity,  Vector2 up_direction,  bool stop_on_slope,  int max_slides,  float floor_max_angle,  bool infinite_inertia):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[6]

    args[0] = &linear_velocity._native
    args[1] = &up_direction._native
    args[2] = &stop_on_slope
    args[3] = &max_slides
    args[4] = &floor_max_angle
    args[5] = &infinite_inertia
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_move_and_slide,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  move_and_slide_with_snap(self,  Vector2 linear_velocity,  Vector2 snap,  Vector2 up_direction,  bool stop_on_slope,  int max_slides,  float floor_max_angle,  bool infinite_inertia):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[7]

    args[0] = &linear_velocity._native
    args[1] = &snap._native
    args[2] = &up_direction._native
    args[3] = &stop_on_slope
    args[4] = &max_slides
    args[5] = &floor_max_angle
    args[6] = &infinite_inertia
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_move_and_slide_with_snap,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_safe_margin(self,  float pixels):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pixels
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_set_safe_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sync_to_physics(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_set_sync_to_physics,self.godot_owner,args,NULL)
    hello('hallo2')
  def  test_move(self,  Transform2D from_,  Vector2 rel_vec,  bool infinite_inertia):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[3]

    args[0] = &from_._native
    args[1] = &rel_vec._native
    args[2] = &infinite_inertia
    api_core.godot_method_bind_ptrcall(bind_kinematicbody2d_test_move,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

