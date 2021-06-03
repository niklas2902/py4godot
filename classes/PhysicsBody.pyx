
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
cimport classes.Node
cimport classes.Node
cimport classes.CollisionObject 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsbody__get_layers
cdef godot_method_bind *bind_physicsbody__set_layers
cdef godot_method_bind *bind_physicsbody_add_collision_exception_with
cdef godot_method_bind *bind_physicsbody_get_collision_exceptions
cdef godot_method_bind *bind_physicsbody_get_collision_layer
cdef godot_method_bind *bind_physicsbody_get_collision_layer_bit
cdef godot_method_bind *bind_physicsbody_get_collision_mask
cdef godot_method_bind *bind_physicsbody_get_collision_mask_bit
cdef godot_method_bind *bind_physicsbody_remove_collision_exception_with
cdef godot_method_bind *bind_physicsbody_set_collision_layer
cdef godot_method_bind *bind_physicsbody_set_collision_layer_bit
cdef godot_method_bind *bind_physicsbody_set_collision_mask
cdef godot_method_bind *bind_physicsbody_set_collision_mask_bit
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsbody__get_layers = api_core.godot_method_bind_get_method('PhysicsBody', '_get_layers')
  bind_physicsbody__set_layers = api_core.godot_method_bind_get_method('PhysicsBody', '_set_layers')
  bind_physicsbody_add_collision_exception_with = api_core.godot_method_bind_get_method('PhysicsBody', 'add_collision_exception_with')
  bind_physicsbody_get_collision_exceptions = api_core.godot_method_bind_get_method('PhysicsBody', 'get_collision_exceptions')
  bind_physicsbody_get_collision_layer = api_core.godot_method_bind_get_method('PhysicsBody', 'get_collision_layer')
  bind_physicsbody_get_collision_layer_bit = api_core.godot_method_bind_get_method('PhysicsBody', 'get_collision_layer_bit')
  bind_physicsbody_get_collision_mask = api_core.godot_method_bind_get_method('PhysicsBody', 'get_collision_mask')
  bind_physicsbody_get_collision_mask_bit = api_core.godot_method_bind_get_method('PhysicsBody', 'get_collision_mask_bit')
  bind_physicsbody_remove_collision_exception_with = api_core.godot_method_bind_get_method('PhysicsBody', 'remove_collision_exception_with')
  bind_physicsbody_set_collision_layer = api_core.godot_method_bind_get_method('PhysicsBody', 'set_collision_layer')
  bind_physicsbody_set_collision_layer_bit = api_core.godot_method_bind_get_method('PhysicsBody', 'set_collision_layer_bit')
  bind_physicsbody_set_collision_mask = api_core.godot_method_bind_get_method('PhysicsBody', 'set_collision_mask')
  bind_physicsbody_set_collision_mask_bit = api_core.godot_method_bind_get_method('PhysicsBody', 'set_collision_mask_bit')

############################Generated class###################################
cdef class PhysicsBody(classes.CollisionObject.CollisionObject):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsBody")())
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

##################################Generated Methods#########################################
  def  _get_layers(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsbody__get_layers,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_layers(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_physicsbody__set_layers,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_collision_exception_with(self,  classes.Node.Node body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = body.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody_add_collision_exception_with,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_collision_exceptions(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsbody_get_collision_exceptions,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsbody_get_collision_layer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_layer_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_physicsbody_get_collision_layer_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsbody_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_physicsbody_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_collision_exception_with(self,  classes.Node.Node body):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = body.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsbody_remove_collision_exception_with,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_physicsbody_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsbody_set_collision_layer_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_physicsbody_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_physicsbody_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
