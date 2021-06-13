
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
cdef godot_method_bind *bind_physics2dtestmotionresult_get_collider
cdef godot_method_bind *bind_physics2dtestmotionresult_get_collider_id
cdef godot_method_bind *bind_physics2dtestmotionresult_get_collider_rid
cdef godot_method_bind *bind_physics2dtestmotionresult_get_collider_shape
cdef godot_method_bind *bind_physics2dtestmotionresult_get_collider_velocity
cdef godot_method_bind *bind_physics2dtestmotionresult_get_collision_normal
cdef godot_method_bind *bind_physics2dtestmotionresult_get_collision_point
cdef godot_method_bind *bind_physics2dtestmotionresult_get_motion
cdef godot_method_bind *bind_physics2dtestmotionresult_get_motion_remainder
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physics2dtestmotionresult_get_collider = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_collider')
  bind_physics2dtestmotionresult_get_collider_id = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_collider_id')
  bind_physics2dtestmotionresult_get_collider_rid = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_collider_rid')
  bind_physics2dtestmotionresult_get_collider_shape = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_collider_shape')
  bind_physics2dtestmotionresult_get_collider_velocity = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_collider_velocity')
  bind_physics2dtestmotionresult_get_collision_normal = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_collision_normal')
  bind_physics2dtestmotionresult_get_collision_point = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_collision_point')
  bind_physics2dtestmotionresult_get_motion = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_motion')
  bind_physics2dtestmotionresult_get_motion_remainder = api_core.godot_method_bind_get_method('Physics2DTestMotionResult', 'get_motion_remainder')

############################Generated class###################################
cdef class Physics2DTestMotionResult(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DTestMotionResult")())
##################################Generated Properties#########################################
  @property
  def collider(self): 
    return self.get_collider()
  @collider.setter 
  def collider(self,value): 
    self.set_collider(value)
  @property
  def collider_id(self): 
    return self.get_collider_id()
  @collider_id.setter 
  def collider_id(self,value): 
    self.set_collider_id(value)
  @property
  def collider_rid(self): 
    return self.get_collider_rid()
  @collider_rid.setter 
  def collider_rid(self,value): 
    self.set_collider_rid(value)
  @property
  def collider_shape(self): 
    return self.get_collider_shape()
  @collider_shape.setter 
  def collider_shape(self,value): 
    self.set_collider_shape(value)
  @property
  def collider_velocity(self): 
    return self.get_collider_velocity()
  @collider_velocity.setter 
  def collider_velocity(self,value): 
    self.set_collider_velocity(value)
  @property
  def collision_normal(self): 
    return self.get_collision_normal()
  @collision_normal.setter 
  def collision_normal(self,value): 
    self.set_collision_normal(value)
  @property
  def collision_point(self): 
    return self.get_collision_point()
  @collision_point.setter 
  def collision_point(self,value): 
    self.set_collision_point(value)
  @property
  def motion(self): 
    return self.get_motion()
  @motion.setter 
  def motion(self,value): 
    self.set_motion(value)
  @property
  def motion_remainder(self): 
    return self.get_motion_remainder()
  @motion_remainder.setter 
  def motion_remainder(self,value): 
    self.set_motion_remainder(value)

##################################Generated Methods#########################################
  def  get_collider(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_collider,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_collider_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_collider_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collider_rid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_collider_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_collider_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_collider_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collider_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_collider_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_collision_normal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_collision_normal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_collision_point(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_collision_point,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_motion(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_motion,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_motion_remainder(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2dtestmotionresult_get_motion_remainder,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

