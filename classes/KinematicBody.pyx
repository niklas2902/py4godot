
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.PhysicsBody 

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
cdef class KinematicBody(classes.PhysicsBody.PhysicsBody):
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
  def  get_axis_lock(self,  int axis):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &axis
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_axis_lock,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_floor_normal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_floor_normal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_floor_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_floor_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_safe_margin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_safe_margin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_slide_collision(self,  int slide_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &slide_idx
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_slide_collision,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_slide_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody_get_slide_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_on_ceiling(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody_is_on_ceiling,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_on_floor(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody_is_on_floor,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_on_wall(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_kinematicbody_is_on_wall,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  move_and_collide(self,  Vector3 rel_vec,  bool infinite_inertia,  bool exclude_raycast_shapes,  bool test_only):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[4]

    args[0] = &rel_vec._native
    args[1] = &infinite_inertia
    args[2] = &exclude_raycast_shapes
    args[3] = &test_only
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_move_and_collide,self.godot_owner,args,&ret)
    hello('hallo2')
  def  move_and_slide(self,  Vector3 linear_velocity,  Vector3 up_direction,  bool stop_on_slope,  int max_slides,  float floor_max_angle,  bool infinite_inertia):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[6]

    args[0] = &linear_velocity._native
    args[1] = &up_direction._native
    args[2] = &stop_on_slope
    args[3] = &max_slides
    args[4] = &floor_max_angle
    args[5] = &infinite_inertia
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_move_and_slide,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  move_and_slide_with_snap(self,  Vector3 linear_velocity,  Vector3 snap,  Vector3 up_direction,  bool stop_on_slope,  int max_slides,  float floor_max_angle,  bool infinite_inertia):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    cdef void *args[7]

    args[0] = &linear_velocity._native
    args[1] = &snap._native
    args[2] = &up_direction._native
    args[3] = &stop_on_slope
    args[4] = &max_slides
    args[5] = &floor_max_angle
    args[6] = &infinite_inertia
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_move_and_slide_with_snap,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  set_axis_lock(self,  int axis,  bool lock):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &axis
    args[1] = &lock
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_set_axis_lock,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_safe_margin(self,  float pixels):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pixels
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_set_safe_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  test_move(self,  Transform from_,  Vector3 rel_vec,  bool infinite_inertia):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[3]

    args[0] = &from_._native
    args[1] = &rel_vec._native
    args[2] = &infinite_inertia
    api_core.godot_method_bind_ptrcall(bind_kinematicbody_test_move,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

