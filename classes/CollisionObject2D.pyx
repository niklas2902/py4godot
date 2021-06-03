
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
cimport classes.Object
cimport classes.InputEvent
cimport classes.Object
cimport classes.Shape2D
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionobject2d__input_event
cdef godot_method_bind *bind_collisionobject2d_create_shape_owner
cdef godot_method_bind *bind_collisionobject2d_get_rid
cdef godot_method_bind *bind_collisionobject2d_get_shape_owner_one_way_collision_margin
cdef godot_method_bind *bind_collisionobject2d_get_shape_owners
cdef godot_method_bind *bind_collisionobject2d_is_pickable
cdef godot_method_bind *bind_collisionobject2d_is_shape_owner_disabled
cdef godot_method_bind *bind_collisionobject2d_is_shape_owner_one_way_collision_enabled
cdef godot_method_bind *bind_collisionobject2d_remove_shape_owner
cdef godot_method_bind *bind_collisionobject2d_set_pickable
cdef godot_method_bind *bind_collisionobject2d_shape_find_owner
cdef godot_method_bind *bind_collisionobject2d_shape_owner_add_shape
cdef godot_method_bind *bind_collisionobject2d_shape_owner_clear_shapes
cdef godot_method_bind *bind_collisionobject2d_shape_owner_get_owner
cdef godot_method_bind *bind_collisionobject2d_shape_owner_get_shape
cdef godot_method_bind *bind_collisionobject2d_shape_owner_get_shape_count
cdef godot_method_bind *bind_collisionobject2d_shape_owner_get_shape_index
cdef godot_method_bind *bind_collisionobject2d_shape_owner_get_transform
cdef godot_method_bind *bind_collisionobject2d_shape_owner_remove_shape
cdef godot_method_bind *bind_collisionobject2d_shape_owner_set_disabled
cdef godot_method_bind *bind_collisionobject2d_shape_owner_set_one_way_collision
cdef godot_method_bind *bind_collisionobject2d_shape_owner_set_one_way_collision_margin
cdef godot_method_bind *bind_collisionobject2d_shape_owner_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionobject2d__input_event = api_core.godot_method_bind_get_method('CollisionObject2D', '_input_event')
  bind_collisionobject2d_create_shape_owner = api_core.godot_method_bind_get_method('CollisionObject2D', 'create_shape_owner')
  bind_collisionobject2d_get_rid = api_core.godot_method_bind_get_method('CollisionObject2D', 'get_rid')
  bind_collisionobject2d_get_shape_owner_one_way_collision_margin = api_core.godot_method_bind_get_method('CollisionObject2D', 'get_shape_owner_one_way_collision_margin')
  bind_collisionobject2d_get_shape_owners = api_core.godot_method_bind_get_method('CollisionObject2D', 'get_shape_owners')
  bind_collisionobject2d_is_pickable = api_core.godot_method_bind_get_method('CollisionObject2D', 'is_pickable')
  bind_collisionobject2d_is_shape_owner_disabled = api_core.godot_method_bind_get_method('CollisionObject2D', 'is_shape_owner_disabled')
  bind_collisionobject2d_is_shape_owner_one_way_collision_enabled = api_core.godot_method_bind_get_method('CollisionObject2D', 'is_shape_owner_one_way_collision_enabled')
  bind_collisionobject2d_remove_shape_owner = api_core.godot_method_bind_get_method('CollisionObject2D', 'remove_shape_owner')
  bind_collisionobject2d_set_pickable = api_core.godot_method_bind_get_method('CollisionObject2D', 'set_pickable')
  bind_collisionobject2d_shape_find_owner = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_find_owner')
  bind_collisionobject2d_shape_owner_add_shape = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_add_shape')
  bind_collisionobject2d_shape_owner_clear_shapes = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_clear_shapes')
  bind_collisionobject2d_shape_owner_get_owner = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_get_owner')
  bind_collisionobject2d_shape_owner_get_shape = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_get_shape')
  bind_collisionobject2d_shape_owner_get_shape_count = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_get_shape_count')
  bind_collisionobject2d_shape_owner_get_shape_index = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_get_shape_index')
  bind_collisionobject2d_shape_owner_get_transform = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_get_transform')
  bind_collisionobject2d_shape_owner_remove_shape = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_remove_shape')
  bind_collisionobject2d_shape_owner_set_disabled = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_set_disabled')
  bind_collisionobject2d_shape_owner_set_one_way_collision = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_set_one_way_collision')
  bind_collisionobject2d_shape_owner_set_one_way_collision_margin = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_set_one_way_collision_margin')
  bind_collisionobject2d_shape_owner_set_transform = api_core.godot_method_bind_get_method('CollisionObject2D', 'shape_owner_set_transform')

############################Generated class###################################
cdef class CollisionObject2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionObject2D")())
##################################Generated Properties#########################################
  @property
  def input_pickable(self): 
    return self.get_input_pickable()
  @input_pickable.setter 
  def input_pickable(self,value): 
    self.set_input_pickable(value)

##################################Generated Methods#########################################
  def  _input_event(self,  classes.Object.Object viewport,  classes.InputEvent.InputEvent event,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = viewport.godot_owner
    args[1] = event.godot_owner
    args[2] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d__input_event,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_shape_owner(self,  classes.Object.Object owner):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = owner.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_create_shape_owner,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_get_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_shape_owner_one_way_collision_margin(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_get_shape_owner_one_way_collision_margin,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_shape_owners(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_get_shape_owners,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  is_pickable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_is_pickable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_shape_owner_disabled(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_is_shape_owner_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_shape_owner_one_way_collision_enabled(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_is_shape_owner_one_way_collision_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_shape_owner(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_remove_shape_owner,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pickable(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_set_pickable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_find_owner(self,  int shape_index):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &shape_index
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_find_owner,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_owner_add_shape(self,  int owner_id,  classes.Shape2D.Shape2D shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_add_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_clear_shapes(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_clear_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_get_owner(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_get_owner,self.godot_owner,args,&ret)
    hello('hallo2')
  def  shape_owner_get_shape(self,  int owner_id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_get_shape,self.godot_owner,args,&ret)
    hello('hallo2')
  def  shape_owner_get_shape_count(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_get_shape_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_owner_get_shape_index(self,  int owner_id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_get_shape_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_owner_get_transform(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_get_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  shape_owner_remove_shape(self,  int owner_id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_remove_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_set_disabled(self,  int owner_id,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_set_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_set_one_way_collision(self,  int owner_id,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_set_one_way_collision,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_set_one_way_collision_margin(self,  int owner_id,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &margin
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_set_one_way_collision_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_set_transform(self,  int owner_id,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_collisionobject2d_shape_owner_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
