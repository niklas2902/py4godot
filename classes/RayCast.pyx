from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_raycast_add_exception
cdef godot_method_bind *bind_raycast_add_exception_rid
cdef godot_method_bind *bind_raycast_clear_exceptions
cdef godot_method_bind *bind_raycast_force_raycast_update
cdef godot_method_bind *bind_raycast_get_cast_to
cdef godot_method_bind *bind_raycast_get_collider
cdef godot_method_bind *bind_raycast_get_collider_shape
cdef godot_method_bind *bind_raycast_get_collision_mask
cdef godot_method_bind *bind_raycast_get_collision_mask_bit
cdef godot_method_bind *bind_raycast_get_collision_normal
cdef godot_method_bind *bind_raycast_get_collision_point
cdef godot_method_bind *bind_raycast_get_exclude_parent_body
cdef godot_method_bind *bind_raycast_is_collide_with_areas_enabled
cdef godot_method_bind *bind_raycast_is_collide_with_bodies_enabled
cdef godot_method_bind *bind_raycast_is_colliding
cdef godot_method_bind *bind_raycast_is_enabled
cdef godot_method_bind *bind_raycast_remove_exception
cdef godot_method_bind *bind_raycast_remove_exception_rid
cdef godot_method_bind *bind_raycast_set_cast_to
cdef godot_method_bind *bind_raycast_set_collide_with_areas
cdef godot_method_bind *bind_raycast_set_collide_with_bodies
cdef godot_method_bind *bind_raycast_set_collision_mask
cdef godot_method_bind *bind_raycast_set_collision_mask_bit
cdef godot_method_bind *bind_raycast_set_enabled
cdef godot_method_bind *bind_raycast_set_exclude_parent_body
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_raycast_add_exception = api_core.godot_method_bind_get_method('RayCast', 'add_exception')
  bind_raycast_add_exception_rid = api_core.godot_method_bind_get_method('RayCast', 'add_exception_rid')
  bind_raycast_clear_exceptions = api_core.godot_method_bind_get_method('RayCast', 'clear_exceptions')
  bind_raycast_force_raycast_update = api_core.godot_method_bind_get_method('RayCast', 'force_raycast_update')
  bind_raycast_get_cast_to = api_core.godot_method_bind_get_method('RayCast', 'get_cast_to')
  bind_raycast_get_collider = api_core.godot_method_bind_get_method('RayCast', 'get_collider')
  bind_raycast_get_collider_shape = api_core.godot_method_bind_get_method('RayCast', 'get_collider_shape')
  bind_raycast_get_collision_mask = api_core.godot_method_bind_get_method('RayCast', 'get_collision_mask')
  bind_raycast_get_collision_mask_bit = api_core.godot_method_bind_get_method('RayCast', 'get_collision_mask_bit')
  bind_raycast_get_collision_normal = api_core.godot_method_bind_get_method('RayCast', 'get_collision_normal')
  bind_raycast_get_collision_point = api_core.godot_method_bind_get_method('RayCast', 'get_collision_point')
  bind_raycast_get_exclude_parent_body = api_core.godot_method_bind_get_method('RayCast', 'get_exclude_parent_body')
  bind_raycast_is_collide_with_areas_enabled = api_core.godot_method_bind_get_method('RayCast', 'is_collide_with_areas_enabled')
  bind_raycast_is_collide_with_bodies_enabled = api_core.godot_method_bind_get_method('RayCast', 'is_collide_with_bodies_enabled')
  bind_raycast_is_colliding = api_core.godot_method_bind_get_method('RayCast', 'is_colliding')
  bind_raycast_is_enabled = api_core.godot_method_bind_get_method('RayCast', 'is_enabled')
  bind_raycast_remove_exception = api_core.godot_method_bind_get_method('RayCast', 'remove_exception')
  bind_raycast_remove_exception_rid = api_core.godot_method_bind_get_method('RayCast', 'remove_exception_rid')
  bind_raycast_set_cast_to = api_core.godot_method_bind_get_method('RayCast', 'set_cast_to')
  bind_raycast_set_collide_with_areas = api_core.godot_method_bind_get_method('RayCast', 'set_collide_with_areas')
  bind_raycast_set_collide_with_bodies = api_core.godot_method_bind_get_method('RayCast', 'set_collide_with_bodies')
  bind_raycast_set_collision_mask = api_core.godot_method_bind_get_method('RayCast', 'set_collision_mask')
  bind_raycast_set_collision_mask_bit = api_core.godot_method_bind_get_method('RayCast', 'set_collision_mask_bit')
  bind_raycast_set_enabled = api_core.godot_method_bind_get_method('RayCast', 'set_enabled')
  bind_raycast_set_exclude_parent_body = api_core.godot_method_bind_get_method('RayCast', 'set_exclude_parent_body')

############################Generated class###################################
cdef class RayCast(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RayCast")())
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
  def  add_exception(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_add_exception,self.godot_owner,[NULL,],NULL)
  def  add_exception_rid(self, rid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_add_exception_rid,self.godot_owner,[NULL,],NULL)
  def  clear_exceptions(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_clear_exceptions,self.godot_owner,[NULL,],NULL)
  def  force_raycast_update(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_force_raycast_update,self.godot_owner,[NULL,],NULL)
  def  get_cast_to(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_cast_to,self.godot_owner,[NULL,],&ret)
  def  get_collider(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_collider,self.godot_owner,[NULL,],&ret)
  def  get_collider_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_collider_shape,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_collision_normal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_collision_normal,self.godot_owner,[NULL,],&ret)
  def  get_collision_point(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_collision_point,self.godot_owner,[NULL,],&ret)
  def  get_exclude_parent_body(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_raycast_get_exclude_parent_body,self.godot_owner,[NULL,],&ret)
  def  is_collide_with_areas_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_raycast_is_collide_with_areas_enabled,self.godot_owner,[NULL,],&ret)
  def  is_collide_with_bodies_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_raycast_is_collide_with_bodies_enabled,self.godot_owner,[NULL,],&ret)
  def  is_colliding(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_raycast_is_colliding,self.godot_owner,[NULL,],&ret)
  def  is_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_raycast_is_enabled,self.godot_owner,[NULL,],&ret)
  def  remove_exception(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_remove_exception,self.godot_owner,[NULL,],NULL)
  def  remove_exception_rid(self, rid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_remove_exception_rid,self.godot_owner,[NULL,],NULL)
  def  set_cast_to(self, local_point):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_set_cast_to,self.godot_owner,[NULL,],NULL)
  def  set_collide_with_areas(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_set_collide_with_areas,self.godot_owner,[NULL,],NULL)
  def  set_collide_with_bodies(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_set_collide_with_bodies,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
  def  set_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_set_enabled,self.godot_owner,[NULL,],NULL)
  def  set_exclude_parent_body(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_raycast_set_exclude_parent_body,self.godot_owner,[NULL,],NULL)
