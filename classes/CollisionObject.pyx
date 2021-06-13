
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
cimport classes.InputEvent
cimport classes.Object
cimport classes.Shape
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionobject__input_event
cdef godot_method_bind *bind_collisionobject_create_shape_owner
cdef godot_method_bind *bind_collisionobject_get_capture_input_on_drag
cdef godot_method_bind *bind_collisionobject_get_rid
cdef godot_method_bind *bind_collisionobject_get_shape_owners
cdef godot_method_bind *bind_collisionobject_is_ray_pickable
cdef godot_method_bind *bind_collisionobject_is_shape_owner_disabled
cdef godot_method_bind *bind_collisionobject_remove_shape_owner
cdef godot_method_bind *bind_collisionobject_set_capture_input_on_drag
cdef godot_method_bind *bind_collisionobject_set_ray_pickable
cdef godot_method_bind *bind_collisionobject_shape_find_owner
cdef godot_method_bind *bind_collisionobject_shape_owner_add_shape
cdef godot_method_bind *bind_collisionobject_shape_owner_clear_shapes
cdef godot_method_bind *bind_collisionobject_shape_owner_get_owner
cdef godot_method_bind *bind_collisionobject_shape_owner_get_shape
cdef godot_method_bind *bind_collisionobject_shape_owner_get_shape_count
cdef godot_method_bind *bind_collisionobject_shape_owner_get_shape_index
cdef godot_method_bind *bind_collisionobject_shape_owner_get_transform
cdef godot_method_bind *bind_collisionobject_shape_owner_remove_shape
cdef godot_method_bind *bind_collisionobject_shape_owner_set_disabled
cdef godot_method_bind *bind_collisionobject_shape_owner_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionobject__input_event = api_core.godot_method_bind_get_method('CollisionObject', '_input_event')
  bind_collisionobject_create_shape_owner = api_core.godot_method_bind_get_method('CollisionObject', 'create_shape_owner')
  bind_collisionobject_get_capture_input_on_drag = api_core.godot_method_bind_get_method('CollisionObject', 'get_capture_input_on_drag')
  bind_collisionobject_get_rid = api_core.godot_method_bind_get_method('CollisionObject', 'get_rid')
  bind_collisionobject_get_shape_owners = api_core.godot_method_bind_get_method('CollisionObject', 'get_shape_owners')
  bind_collisionobject_is_ray_pickable = api_core.godot_method_bind_get_method('CollisionObject', 'is_ray_pickable')
  bind_collisionobject_is_shape_owner_disabled = api_core.godot_method_bind_get_method('CollisionObject', 'is_shape_owner_disabled')
  bind_collisionobject_remove_shape_owner = api_core.godot_method_bind_get_method('CollisionObject', 'remove_shape_owner')
  bind_collisionobject_set_capture_input_on_drag = api_core.godot_method_bind_get_method('CollisionObject', 'set_capture_input_on_drag')
  bind_collisionobject_set_ray_pickable = api_core.godot_method_bind_get_method('CollisionObject', 'set_ray_pickable')
  bind_collisionobject_shape_find_owner = api_core.godot_method_bind_get_method('CollisionObject', 'shape_find_owner')
  bind_collisionobject_shape_owner_add_shape = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_add_shape')
  bind_collisionobject_shape_owner_clear_shapes = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_clear_shapes')
  bind_collisionobject_shape_owner_get_owner = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_get_owner')
  bind_collisionobject_shape_owner_get_shape = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_get_shape')
  bind_collisionobject_shape_owner_get_shape_count = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_get_shape_count')
  bind_collisionobject_shape_owner_get_shape_index = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_get_shape_index')
  bind_collisionobject_shape_owner_get_transform = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_get_transform')
  bind_collisionobject_shape_owner_remove_shape = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_remove_shape')
  bind_collisionobject_shape_owner_set_disabled = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_set_disabled')
  bind_collisionobject_shape_owner_set_transform = api_core.godot_method_bind_get_method('CollisionObject', 'shape_owner_set_transform')

############################Generated class###################################
cdef class CollisionObject(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionObject")())
##################################Generated Properties#########################################
  @property
  def input_capture_on_drag(self): 
    return self.get_input_capture_on_drag()
  @input_capture_on_drag.setter 
  def input_capture_on_drag(self,value): 
    self.set_input_capture_on_drag(value)
  @property
  def input_ray_pickable(self): 
    return self.get_input_ray_pickable()
  @input_ray_pickable.setter 
  def input_ray_pickable(self,value): 
    self.set_input_ray_pickable(value)

##################################Generated Methods#########################################
  def  _input_event(self,  classes.Object.Object camera,  classes.InputEvent.InputEvent event,  Vector3 click_position,  Vector3 click_normal,  int shape_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = camera.godot_owner
    args[1] = event.godot_owner
    args[2] = &click_position._native
    args[3] = &click_normal._native
    args[4] = &shape_idx
    api_core.godot_method_bind_ptrcall(bind_collisionobject__input_event,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_shape_owner(self,  classes.Object.Object owner):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = owner.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_create_shape_owner,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_capture_input_on_drag(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionobject_get_capture_input_on_drag,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionobject_get_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_shape_owners(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionobject_get_shape_owners,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  is_ray_pickable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionobject_is_ray_pickable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_shape_owner_disabled(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_is_shape_owner_disabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_shape_owner(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_remove_shape_owner,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_capture_input_on_drag(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_collisionobject_set_capture_input_on_drag,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ray_pickable(self,  bool ray_pickable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ray_pickable
    api_core.godot_method_bind_ptrcall(bind_collisionobject_set_ray_pickable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_find_owner(self,  int shape_index):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &shape_index
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_find_owner,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_owner_add_shape(self,  int owner_id,  classes.Shape.Shape shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_add_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_clear_shapes(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_clear_shapes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_get_owner(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_owner,self.godot_owner,args,&ret)
    hello('hallo2')
  def  shape_owner_get_shape(self,  int owner_id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_shape,self.godot_owner,args,&ret)
    hello('hallo2')
  def  shape_owner_get_shape_count(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_shape_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_owner_get_shape_index(self,  int owner_id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_shape_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  shape_owner_get_transform(self,  int owner_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    cdef void *args[1]

    args[0] = &owner_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_transform,self.godot_owner,args,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  shape_owner_remove_shape(self,  int owner_id,  int shape_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &shape_id
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_remove_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_set_disabled(self,  int owner_id,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &disabled
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_set_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  shape_owner_set_transform(self,  int owner_id,  Transform transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &owner_id
    args[1] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
