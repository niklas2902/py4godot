from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class CollisionObject(Spatial):
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
  def  _input_event(self, cameraeventclick_positionclick_normalshape_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject__input_event,self.godot_owner,[NULL,],NULL)
  def  create_shape_owner(self, owner):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_create_shape_owner,self.godot_owner,[NULL,],&ret)
  def  get_capture_input_on_drag(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_get_capture_input_on_drag,self.godot_owner,[NULL,],&ret)
  def  get_rid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_get_rid,self.godot_owner,[NULL,],&ret)
  def  get_shape_owners(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_get_shape_owners,self.godot_owner,[NULL,],&ret)
  def  is_ray_pickable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_is_ray_pickable,self.godot_owner,[NULL,],&ret)
  def  is_shape_owner_disabled(self, owner_id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_is_shape_owner_disabled,self.godot_owner,[NULL,],&ret)
  def  remove_shape_owner(self, owner_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_remove_shape_owner,self.godot_owner,[NULL,],NULL)
  def  set_capture_input_on_drag(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_set_capture_input_on_drag,self.godot_owner,[NULL,],NULL)
  def  set_ray_pickable(self, ray_pickable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_set_ray_pickable,self.godot_owner,[NULL,],NULL)
  def  shape_find_owner(self, shape_index):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_find_owner,self.godot_owner,[NULL,],&ret)
  def  shape_owner_add_shape(self, owner_idshape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_add_shape,self.godot_owner,[NULL,],NULL)
  def  shape_owner_clear_shapes(self, owner_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_clear_shapes,self.godot_owner,[NULL,],NULL)
  def  shape_owner_get_owner(self, owner_id):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_owner,self.godot_owner,[NULL,],&ret)
  def  shape_owner_get_shape(self, owner_idshape_id):
    cdef godot_object *_owner = self.godot_owner
    cdef Shape ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_shape,self.godot_owner,[NULL,],&ret)
  def  shape_owner_get_shape_count(self, owner_id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_shape_count,self.godot_owner,[NULL,],&ret)
  def  shape_owner_get_shape_index(self, owner_idshape_id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_shape_index,self.godot_owner,[NULL,],&ret)
  def  shape_owner_get_transform(self, owner_id):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_get_transform,self.godot_owner,[NULL,],&ret)
  def  shape_owner_remove_shape(self, owner_idshape_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_remove_shape,self.godot_owner,[NULL,],NULL)
  def  shape_owner_set_disabled(self, owner_iddisabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_set_disabled,self.godot_owner,[NULL,],NULL)
  def  shape_owner_set_transform(self, owner_idtransform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionobject_shape_owner_set_transform,self.godot_owner,[NULL,],NULL)
