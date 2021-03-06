from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physics2dshapequeryparameters_get_collision_layer
cdef godot_method_bind *bind_physics2dshapequeryparameters_get_exclude
cdef godot_method_bind *bind_physics2dshapequeryparameters_get_margin
cdef godot_method_bind *bind_physics2dshapequeryparameters_get_motion
cdef godot_method_bind *bind_physics2dshapequeryparameters_get_shape_rid
cdef godot_method_bind *bind_physics2dshapequeryparameters_get_transform
cdef godot_method_bind *bind_physics2dshapequeryparameters_is_collide_with_areas_enabled
cdef godot_method_bind *bind_physics2dshapequeryparameters_is_collide_with_bodies_enabled
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_collide_with_areas
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_collide_with_bodies
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_collision_layer
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_exclude
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_margin
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_motion
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_shape
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_shape_rid
cdef godot_method_bind *bind_physics2dshapequeryparameters_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physics2dshapequeryparameters_get_collision_layer = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'get_collision_layer')
  bind_physics2dshapequeryparameters_get_exclude = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'get_exclude')
  bind_physics2dshapequeryparameters_get_margin = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'get_margin')
  bind_physics2dshapequeryparameters_get_motion = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'get_motion')
  bind_physics2dshapequeryparameters_get_shape_rid = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'get_shape_rid')
  bind_physics2dshapequeryparameters_get_transform = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'get_transform')
  bind_physics2dshapequeryparameters_is_collide_with_areas_enabled = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'is_collide_with_areas_enabled')
  bind_physics2dshapequeryparameters_is_collide_with_bodies_enabled = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'is_collide_with_bodies_enabled')
  bind_physics2dshapequeryparameters_set_collide_with_areas = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_collide_with_areas')
  bind_physics2dshapequeryparameters_set_collide_with_bodies = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_collide_with_bodies')
  bind_physics2dshapequeryparameters_set_collision_layer = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_collision_layer')
  bind_physics2dshapequeryparameters_set_exclude = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_exclude')
  bind_physics2dshapequeryparameters_set_margin = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_margin')
  bind_physics2dshapequeryparameters_set_motion = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_motion')
  bind_physics2dshapequeryparameters_set_shape = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_shape')
  bind_physics2dshapequeryparameters_set_shape_rid = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_shape_rid')
  bind_physics2dshapequeryparameters_set_transform = api_core.godot_method_bind_get_method('Physics2DShapeQueryParameters', 'set_transform')

############################Generated class###################################
cdef class Physics2DShapeQueryParameters(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DShapeQueryParameters")())
##################################Generated Properties#########################################
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
  def collision_layer(self): 
    return self.get_collision_layer()
  @collision_layer.setter 
  def collision_layer(self,value): 
    self.set_collision_layer(value)
  @property
  def exclude(self): 
    return self.get_exclude()
  @exclude.setter 
  def exclude(self,value): 
    self.set_exclude(value)
  @property
  def margin(self): 
    return self.get_margin()
  @margin.setter 
  def margin(self,value): 
    self.set_margin(value)
  @property
  def motion(self): 
    return self.get_motion()
  @motion.setter 
  def motion(self,value): 
    self.set_motion(value)
  @property
  def shape_rid(self): 
    return self.get_shape_rid()
  @shape_rid.setter 
  def shape_rid(self,value): 
    self.set_shape_rid(value)
  @property
  def transform(self): 
    return self.get_transform()
  @transform.setter 
  def transform(self,value): 
    self.set_transform(value)

##################################Generated Methods#########################################
  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  get_exclude(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_get_exclude,self.godot_owner,[NULL,],&ret)
  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_get_margin,self.godot_owner,[NULL,],&ret)
  def  get_motion(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_get_motion,self.godot_owner,[NULL,],&ret)
  def  get_shape_rid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_get_shape_rid,self.godot_owner,[NULL,],&ret)
  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform2D ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_get_transform,self.godot_owner,[NULL,],&ret)
  def  is_collide_with_areas_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_is_collide_with_areas_enabled,self.godot_owner,[NULL,],&ret)
  def  is_collide_with_bodies_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_is_collide_with_bodies_enabled,self.godot_owner,[NULL,],&ret)
  def  set_collide_with_areas(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_collide_with_areas,self.godot_owner,[NULL,],NULL)
  def  set_collide_with_bodies(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_collide_with_bodies,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer(self, collision_layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  set_exclude(self, exclude):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_exclude,self.godot_owner,[NULL,],NULL)
  def  set_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_margin,self.godot_owner,[NULL,],NULL)
  def  set_motion(self, motion):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_motion,self.godot_owner,[NULL,],NULL)
  def  set_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_shape,self.godot_owner,[NULL,],NULL)
  def  set_shape_rid(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_shape_rid,self.godot_owner,[NULL,],NULL)
  def  set_transform(self, transform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physics2dshapequeryparameters_set_transform,self.godot_owner,[NULL,],NULL)
