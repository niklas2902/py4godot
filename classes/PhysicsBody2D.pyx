from classes.CollisionObject2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsbody2d__get_layers
cdef godot_method_bind *bind_physicsbody2d__set_layers
cdef godot_method_bind *bind_physicsbody2d_add_collision_exception_with
cdef godot_method_bind *bind_physicsbody2d_get_collision_exceptions
cdef godot_method_bind *bind_physicsbody2d_get_collision_layer
cdef godot_method_bind *bind_physicsbody2d_get_collision_layer_bit
cdef godot_method_bind *bind_physicsbody2d_get_collision_mask
cdef godot_method_bind *bind_physicsbody2d_get_collision_mask_bit
cdef godot_method_bind *bind_physicsbody2d_remove_collision_exception_with
cdef godot_method_bind *bind_physicsbody2d_set_collision_layer
cdef godot_method_bind *bind_physicsbody2d_set_collision_layer_bit
cdef godot_method_bind *bind_physicsbody2d_set_collision_mask
cdef godot_method_bind *bind_physicsbody2d_set_collision_mask_bit
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsbody2d__get_layers = api_core.godot_method_bind_get_method('PhysicsBody2D', '_get_layers')
  bind_physicsbody2d__set_layers = api_core.godot_method_bind_get_method('PhysicsBody2D', '_set_layers')
  bind_physicsbody2d_add_collision_exception_with = api_core.godot_method_bind_get_method('PhysicsBody2D', 'add_collision_exception_with')
  bind_physicsbody2d_get_collision_exceptions = api_core.godot_method_bind_get_method('PhysicsBody2D', 'get_collision_exceptions')
  bind_physicsbody2d_get_collision_layer = api_core.godot_method_bind_get_method('PhysicsBody2D', 'get_collision_layer')
  bind_physicsbody2d_get_collision_layer_bit = api_core.godot_method_bind_get_method('PhysicsBody2D', 'get_collision_layer_bit')
  bind_physicsbody2d_get_collision_mask = api_core.godot_method_bind_get_method('PhysicsBody2D', 'get_collision_mask')
  bind_physicsbody2d_get_collision_mask_bit = api_core.godot_method_bind_get_method('PhysicsBody2D', 'get_collision_mask_bit')
  bind_physicsbody2d_remove_collision_exception_with = api_core.godot_method_bind_get_method('PhysicsBody2D', 'remove_collision_exception_with')
  bind_physicsbody2d_set_collision_layer = api_core.godot_method_bind_get_method('PhysicsBody2D', 'set_collision_layer')
  bind_physicsbody2d_set_collision_layer_bit = api_core.godot_method_bind_get_method('PhysicsBody2D', 'set_collision_layer_bit')
  bind_physicsbody2d_set_collision_mask = api_core.godot_method_bind_get_method('PhysicsBody2D', 'set_collision_mask')
  bind_physicsbody2d_set_collision_mask_bit = api_core.godot_method_bind_get_method('PhysicsBody2D', 'set_collision_mask_bit')

############################Generated class###################################
cdef class PhysicsBody2D(CollisionObject2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsBody2D")())
##################################Generated Properties#########################################
  @property
  def collision_layer(self): 
    return self.get_collision_layer()
  @collision_layer.setter 
  def collision_layer(self,value): 
    self.set_collision_layer(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def layers(self): 
    return self.get_layers()
  @layers.setter 
  def layers(self,value): 
    self.set_layers(value)

##################################Generated Methods#########################################
  def  _get_layers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d__get_layers,self.godot_owner,[NULL,],&ret)
  def  _set_layers(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d__set_layers,self.godot_owner,[NULL,],NULL)
  def  add_collision_exception_with(self, body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_add_collision_exception_with,self.godot_owner,[NULL,],NULL)
  def  get_collision_exceptions(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_get_collision_exceptions,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_get_collision_layer_bit,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  remove_collision_exception_with(self, body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_remove_collision_exception_with,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer(self, layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_set_collision_layer_bit,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody2d_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
