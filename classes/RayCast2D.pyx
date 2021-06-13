
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
cimport classes.Object
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_raycast2d_add_exception
cdef godot_method_bind *bind_raycast2d_add_exception_rid
cdef godot_method_bind *bind_raycast2d_clear_exceptions
cdef godot_method_bind *bind_raycast2d_force_raycast_update
cdef godot_method_bind *bind_raycast2d_get_cast_to
cdef godot_method_bind *bind_raycast2d_get_collider
cdef godot_method_bind *bind_raycast2d_get_collider_shape
cdef godot_method_bind *bind_raycast2d_get_collision_mask
cdef godot_method_bind *bind_raycast2d_get_collision_mask_bit
cdef godot_method_bind *bind_raycast2d_get_collision_normal
cdef godot_method_bind *bind_raycast2d_get_collision_point
cdef godot_method_bind *bind_raycast2d_get_exclude_parent_body
cdef godot_method_bind *bind_raycast2d_is_collide_with_areas_enabled
cdef godot_method_bind *bind_raycast2d_is_collide_with_bodies_enabled
cdef godot_method_bind *bind_raycast2d_is_colliding
cdef godot_method_bind *bind_raycast2d_is_enabled
cdef godot_method_bind *bind_raycast2d_remove_exception
cdef godot_method_bind *bind_raycast2d_remove_exception_rid
cdef godot_method_bind *bind_raycast2d_set_cast_to
cdef godot_method_bind *bind_raycast2d_set_collide_with_areas
cdef godot_method_bind *bind_raycast2d_set_collide_with_bodies
cdef godot_method_bind *bind_raycast2d_set_collision_mask
cdef godot_method_bind *bind_raycast2d_set_collision_mask_bit
cdef godot_method_bind *bind_raycast2d_set_enabled
cdef godot_method_bind *bind_raycast2d_set_exclude_parent_body
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_raycast2d_add_exception = api_core.godot_method_bind_get_method('RayCast2D', 'add_exception')
  bind_raycast2d_add_exception_rid = api_core.godot_method_bind_get_method('RayCast2D', 'add_exception_rid')
  bind_raycast2d_clear_exceptions = api_core.godot_method_bind_get_method('RayCast2D', 'clear_exceptions')
  bind_raycast2d_force_raycast_update = api_core.godot_method_bind_get_method('RayCast2D', 'force_raycast_update')
  bind_raycast2d_get_cast_to = api_core.godot_method_bind_get_method('RayCast2D', 'get_cast_to')
  bind_raycast2d_get_collider = api_core.godot_method_bind_get_method('RayCast2D', 'get_collider')
  bind_raycast2d_get_collider_shape = api_core.godot_method_bind_get_method('RayCast2D', 'get_collider_shape')
  bind_raycast2d_get_collision_mask = api_core.godot_method_bind_get_method('RayCast2D', 'get_collision_mask')
  bind_raycast2d_get_collision_mask_bit = api_core.godot_method_bind_get_method('RayCast2D', 'get_collision_mask_bit')
  bind_raycast2d_get_collision_normal = api_core.godot_method_bind_get_method('RayCast2D', 'get_collision_normal')
  bind_raycast2d_get_collision_point = api_core.godot_method_bind_get_method('RayCast2D', 'get_collision_point')
  bind_raycast2d_get_exclude_parent_body = api_core.godot_method_bind_get_method('RayCast2D', 'get_exclude_parent_body')
  bind_raycast2d_is_collide_with_areas_enabled = api_core.godot_method_bind_get_method('RayCast2D', 'is_collide_with_areas_enabled')
  bind_raycast2d_is_collide_with_bodies_enabled = api_core.godot_method_bind_get_method('RayCast2D', 'is_collide_with_bodies_enabled')
  bind_raycast2d_is_colliding = api_core.godot_method_bind_get_method('RayCast2D', 'is_colliding')
  bind_raycast2d_is_enabled = api_core.godot_method_bind_get_method('RayCast2D', 'is_enabled')
  bind_raycast2d_remove_exception = api_core.godot_method_bind_get_method('RayCast2D', 'remove_exception')
  bind_raycast2d_remove_exception_rid = api_core.godot_method_bind_get_method('RayCast2D', 'remove_exception_rid')
  bind_raycast2d_set_cast_to = api_core.godot_method_bind_get_method('RayCast2D', 'set_cast_to')
  bind_raycast2d_set_collide_with_areas = api_core.godot_method_bind_get_method('RayCast2D', 'set_collide_with_areas')
  bind_raycast2d_set_collide_with_bodies = api_core.godot_method_bind_get_method('RayCast2D', 'set_collide_with_bodies')
  bind_raycast2d_set_collision_mask = api_core.godot_method_bind_get_method('RayCast2D', 'set_collision_mask')
  bind_raycast2d_set_collision_mask_bit = api_core.godot_method_bind_get_method('RayCast2D', 'set_collision_mask_bit')
  bind_raycast2d_set_enabled = api_core.godot_method_bind_get_method('RayCast2D', 'set_enabled')
  bind_raycast2d_set_exclude_parent_body = api_core.godot_method_bind_get_method('RayCast2D', 'set_exclude_parent_body')

############################Generated class###################################
cdef class RayCast2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RayCast2D")())
##################################Generated Properties#########################################
  @property
  def cast_to(self): 
    return self.get_cast_to()
  @cast_to.setter 
  def cast_to(self,value): 
    self.set_cast_to(value)
  @property
  def collide_with_areas(self): 
    return self.get_collide_with_areas()
  @collide_with_areas.setter 
  def collide_with_areas(self,value): 
    self.set_collide_with_areas(value)
  @property
  def collide_with_bodies(self): 
    return self.get_collide_with_bodies()
  @collide_with_bodies.setter 
  def collide_with_bodies(self,value): 
    self.set_collide_with_bodies(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def enabled(self): 
    return self.get_enabled()
  @enabled.setter 
  def enabled(self,value): 
    self.set_enabled(value)
  @property
  def exclude_parent(self): 
    return self.get_exclude_parent()
  @exclude_parent.setter 
  def exclude_parent(self,value): 
    self.set_exclude_parent(value)

##################################Generated Methods#########################################
  def  add_exception(self,  classes.Object.Object node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast2d_add_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_exception_rid(self,  RID rid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rid._native
    api_core.godot_method_bind_ptrcall(bind_raycast2d_add_exception_rid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_exceptions(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_raycast2d_clear_exceptions,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  force_raycast_update(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_raycast2d_force_raycast_update,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_cast_to(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_cast_to,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_collider(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_collider,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_collider_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_collider_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_normal(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_collision_normal,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_collision_point(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_collision_point,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_exclude_parent_body(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_get_exclude_parent_body,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_collide_with_areas_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_is_collide_with_areas_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_collide_with_bodies_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_is_collide_with_bodies_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_colliding(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_is_colliding,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_raycast2d_is_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_exception(self,  classes.Object.Object node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast2d_remove_exception,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_exception_rid(self,  RID rid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rid._native
    api_core.godot_method_bind_ptrcall(bind_raycast2d_remove_exception_rid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cast_to(self,  Vector2 local_point):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &local_point._native
    api_core.godot_method_bind_ptrcall(bind_raycast2d_set_cast_to,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collide_with_areas(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_raycast2d_set_collide_with_areas,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collide_with_bodies(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_raycast2d_set_collide_with_bodies,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_raycast2d_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_raycast2d_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_raycast2d_set_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_exclude_parent_body(self,  bool mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_raycast2d_set_exclude_parent_body,self.godot_owner,args,NULL)
    hello('hallo2')
