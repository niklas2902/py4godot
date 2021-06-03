
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
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionpolygon2d_get_build_mode
cdef godot_method_bind *bind_collisionpolygon2d_get_one_way_collision_margin
cdef godot_method_bind *bind_collisionpolygon2d_get_polygon
cdef godot_method_bind *bind_collisionpolygon2d_is_disabled
cdef godot_method_bind *bind_collisionpolygon2d_is_one_way_collision_enabled
cdef godot_method_bind *bind_collisionpolygon2d_set_build_mode
cdef godot_method_bind *bind_collisionpolygon2d_set_disabled
cdef godot_method_bind *bind_collisionpolygon2d_set_one_way_collision
cdef godot_method_bind *bind_collisionpolygon2d_set_one_way_collision_margin
cdef godot_method_bind *bind_collisionpolygon2d_set_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionpolygon2d_get_build_mode = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'get_build_mode')
  bind_collisionpolygon2d_get_one_way_collision_margin = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'get_one_way_collision_margin')
  bind_collisionpolygon2d_get_polygon = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'get_polygon')
  bind_collisionpolygon2d_is_disabled = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'is_disabled')
  bind_collisionpolygon2d_is_one_way_collision_enabled = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'is_one_way_collision_enabled')
  bind_collisionpolygon2d_set_build_mode = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'set_build_mode')
  bind_collisionpolygon2d_set_disabled = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'set_disabled')
  bind_collisionpolygon2d_set_one_way_collision = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'set_one_way_collision')
  bind_collisionpolygon2d_set_one_way_collision_margin = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'set_one_way_collision_margin')
  bind_collisionpolygon2d_set_polygon = api_core.godot_method_bind_get_method('CollisionPolygon2D', 'set_polygon')

############################Generated class###################################
cdef class CollisionPolygon2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionPolygon2D")())
##################################Generated Properties#########################################
  @property
  def build_mode(self): 
    return self.get_build_mode()
  @build_mode.setter 
  def build_mode(self,value): 
    self.set_build_mode(value)
  @property
  def disabled(self): 
    return self.get_disabled()
  @disabled.setter 
  def disabled(self,value): 
    self.set_disabled(value)
  @property
  def one_way_collision(self): 
    return self.get_one_way_collision()
  @one_way_collision.setter 
  def one_way_collision(self,value): 
    self.set_one_way_collision(value)
  @property
  def one_way_collision_margin(self): 
    return self.get_one_way_collision_margin()
  @one_way_collision_margin.setter 
  def one_way_collision_margin(self,value): 
    self.set_one_way_collision_margin(value)
  @property
  def polygon(self): 
    return self.get_polygon()
  @polygon.setter 
  def polygon(self,value): 
    self.set_polygon(value)

##################################Generated Methods#########################################
  def  get_build_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef BuildMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_get_build_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_one_way_collision_margin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_get_one_way_collision_margin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_polygon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_get_polygon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_is_disabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_one_way_collision_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_is_one_way_collision_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_build_mode(self,  int build_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &build_mode
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_set_build_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disabled(self,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &disabled
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_set_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_one_way_collision(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_set_one_way_collision,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_one_way_collision_margin(self,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_set_one_way_collision_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_polygon(self,  PoolVector2Array polygon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &polygon._native
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon2d_set_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
