from classes.Node2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionshape2d__shape_changed
cdef godot_method_bind *bind_collisionshape2d_get_one_way_collision_margin
cdef godot_method_bind *bind_collisionshape2d_get_shape
cdef godot_method_bind *bind_collisionshape2d_is_disabled
cdef godot_method_bind *bind_collisionshape2d_is_one_way_collision_enabled
cdef godot_method_bind *bind_collisionshape2d_set_disabled
cdef godot_method_bind *bind_collisionshape2d_set_one_way_collision
cdef godot_method_bind *bind_collisionshape2d_set_one_way_collision_margin
cdef godot_method_bind *bind_collisionshape2d_set_shape
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionshape2d__shape_changed = api_core.godot_method_bind_get_method('CollisionShape2D', '_shape_changed')
  bind_collisionshape2d_get_one_way_collision_margin = api_core.godot_method_bind_get_method('CollisionShape2D', 'get_one_way_collision_margin')
  bind_collisionshape2d_get_shape = api_core.godot_method_bind_get_method('CollisionShape2D', 'get_shape')
  bind_collisionshape2d_is_disabled = api_core.godot_method_bind_get_method('CollisionShape2D', 'is_disabled')
  bind_collisionshape2d_is_one_way_collision_enabled = api_core.godot_method_bind_get_method('CollisionShape2D', 'is_one_way_collision_enabled')
  bind_collisionshape2d_set_disabled = api_core.godot_method_bind_get_method('CollisionShape2D', 'set_disabled')
  bind_collisionshape2d_set_one_way_collision = api_core.godot_method_bind_get_method('CollisionShape2D', 'set_one_way_collision')
  bind_collisionshape2d_set_one_way_collision_margin = api_core.godot_method_bind_get_method('CollisionShape2D', 'set_one_way_collision_margin')
  bind_collisionshape2d_set_shape = api_core.godot_method_bind_get_method('CollisionShape2D', 'set_shape')

############################Generated class###################################
cdef class CollisionShape2D(Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionShape2D")())
##################################Generated Properties#########################################
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
  def shape(self): 
    return self.get_shape()
  @shape.setter 
  def shape(self,value): 
    self.set_shape(value)

##################################Generated Methods#########################################
  def  _shape_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d__shape_changed,self.godot_owner,[NULL,],NULL)
  def  get_one_way_collision_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_get_one_way_collision_margin,self.godot_owner,[NULL,],&ret)
  def  get_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Shape2D ret
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_get_shape,self.godot_owner,[NULL,],&ret)
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_is_disabled,self.godot_owner,[NULL,],&ret)
  def  is_one_way_collision_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_is_one_way_collision_enabled,self.godot_owner,[NULL,],&ret)
  def  set_disabled(self, disabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_set_disabled,self.godot_owner,[NULL,],NULL)
  def  set_one_way_collision(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_set_one_way_collision,self.godot_owner,[NULL,],NULL)
  def  set_one_way_collision_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_set_one_way_collision_margin,self.godot_owner,[NULL,],NULL)
  def  set_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape2d_set_shape,self.godot_owner,[NULL,],NULL)
