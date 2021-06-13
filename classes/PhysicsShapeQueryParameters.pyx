
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
cimport classes.Resource
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsshapequeryparameters_get_collision_mask
cdef godot_method_bind *bind_physicsshapequeryparameters_get_exclude
cdef godot_method_bind *bind_physicsshapequeryparameters_get_margin
cdef godot_method_bind *bind_physicsshapequeryparameters_get_shape_rid
cdef godot_method_bind *bind_physicsshapequeryparameters_get_transform
cdef godot_method_bind *bind_physicsshapequeryparameters_is_collide_with_areas_enabled
cdef godot_method_bind *bind_physicsshapequeryparameters_is_collide_with_bodies_enabled
cdef godot_method_bind *bind_physicsshapequeryparameters_set_collide_with_areas
cdef godot_method_bind *bind_physicsshapequeryparameters_set_collide_with_bodies
cdef godot_method_bind *bind_physicsshapequeryparameters_set_collision_mask
cdef godot_method_bind *bind_physicsshapequeryparameters_set_exclude
cdef godot_method_bind *bind_physicsshapequeryparameters_set_margin
cdef godot_method_bind *bind_physicsshapequeryparameters_set_shape
cdef godot_method_bind *bind_physicsshapequeryparameters_set_shape_rid
cdef godot_method_bind *bind_physicsshapequeryparameters_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsshapequeryparameters_get_collision_mask = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'get_collision_mask')
  bind_physicsshapequeryparameters_get_exclude = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'get_exclude')
  bind_physicsshapequeryparameters_get_margin = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'get_margin')
  bind_physicsshapequeryparameters_get_shape_rid = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'get_shape_rid')
  bind_physicsshapequeryparameters_get_transform = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'get_transform')
  bind_physicsshapequeryparameters_is_collide_with_areas_enabled = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'is_collide_with_areas_enabled')
  bind_physicsshapequeryparameters_is_collide_with_bodies_enabled = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'is_collide_with_bodies_enabled')
  bind_physicsshapequeryparameters_set_collide_with_areas = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_collide_with_areas')
  bind_physicsshapequeryparameters_set_collide_with_bodies = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_collide_with_bodies')
  bind_physicsshapequeryparameters_set_collision_mask = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_collision_mask')
  bind_physicsshapequeryparameters_set_exclude = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_exclude')
  bind_physicsshapequeryparameters_set_margin = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_margin')
  bind_physicsshapequeryparameters_set_shape = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_shape')
  bind_physicsshapequeryparameters_set_shape_rid = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_shape_rid')
  bind_physicsshapequeryparameters_set_transform = api_core.godot_method_bind_get_method('PhysicsShapeQueryParameters', 'set_transform')

############################Generated class###################################
cdef class PhysicsShapeQueryParameters(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsShapeQueryParameters")())
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
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
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
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_exclude(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_get_exclude,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_margin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_get_margin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_shape_rid(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_get_shape_rid,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_get_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  is_collide_with_areas_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_is_collide_with_areas_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_collide_with_bodies_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_is_collide_with_bodies_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_collide_with_areas(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_collide_with_areas,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collide_with_bodies(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_collide_with_bodies,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int collision_mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &collision_mask
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_exclude(self,  Array exclude):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &exclude._native
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_exclude,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_margin(self,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shape(self,  classes.Resource.Resource shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shape_rid(self,  RID shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &shape._native
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_shape_rid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transform(self,  Transform transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physicsshapequeryparameters_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
