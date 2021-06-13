
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
cimport classes.GeometryInstance 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_csgshape__update_shape
cdef godot_method_bind *bind_csgshape_get_collision_layer
cdef godot_method_bind *bind_csgshape_get_collision_layer_bit
cdef godot_method_bind *bind_csgshape_get_collision_mask
cdef godot_method_bind *bind_csgshape_get_collision_mask_bit
cdef godot_method_bind *bind_csgshape_get_meshes
cdef godot_method_bind *bind_csgshape_get_operation
cdef godot_method_bind *bind_csgshape_get_snap
cdef godot_method_bind *bind_csgshape_is_calculating_tangents
cdef godot_method_bind *bind_csgshape_is_root_shape
cdef godot_method_bind *bind_csgshape_is_using_collision
cdef godot_method_bind *bind_csgshape_set_calculate_tangents
cdef godot_method_bind *bind_csgshape_set_collision_layer
cdef godot_method_bind *bind_csgshape_set_collision_layer_bit
cdef godot_method_bind *bind_csgshape_set_collision_mask
cdef godot_method_bind *bind_csgshape_set_collision_mask_bit
cdef godot_method_bind *bind_csgshape_set_operation
cdef godot_method_bind *bind_csgshape_set_snap
cdef godot_method_bind *bind_csgshape_set_use_collision
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_csgshape__update_shape = api_core.godot_method_bind_get_method('CSGShape', '_update_shape')
  bind_csgshape_get_collision_layer = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_layer')
  bind_csgshape_get_collision_layer_bit = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_layer_bit')
  bind_csgshape_get_collision_mask = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_mask')
  bind_csgshape_get_collision_mask_bit = api_core.godot_method_bind_get_method('CSGShape', 'get_collision_mask_bit')
  bind_csgshape_get_meshes = api_core.godot_method_bind_get_method('CSGShape', 'get_meshes')
  bind_csgshape_get_operation = api_core.godot_method_bind_get_method('CSGShape', 'get_operation')
  bind_csgshape_get_snap = api_core.godot_method_bind_get_method('CSGShape', 'get_snap')
  bind_csgshape_is_calculating_tangents = api_core.godot_method_bind_get_method('CSGShape', 'is_calculating_tangents')
  bind_csgshape_is_root_shape = api_core.godot_method_bind_get_method('CSGShape', 'is_root_shape')
  bind_csgshape_is_using_collision = api_core.godot_method_bind_get_method('CSGShape', 'is_using_collision')
  bind_csgshape_set_calculate_tangents = api_core.godot_method_bind_get_method('CSGShape', 'set_calculate_tangents')
  bind_csgshape_set_collision_layer = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_layer')
  bind_csgshape_set_collision_layer_bit = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_layer_bit')
  bind_csgshape_set_collision_mask = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_mask')
  bind_csgshape_set_collision_mask_bit = api_core.godot_method_bind_get_method('CSGShape', 'set_collision_mask_bit')
  bind_csgshape_set_operation = api_core.godot_method_bind_get_method('CSGShape', 'set_operation')
  bind_csgshape_set_snap = api_core.godot_method_bind_get_method('CSGShape', 'set_snap')
  bind_csgshape_set_use_collision = api_core.godot_method_bind_get_method('CSGShape', 'set_use_collision')

############################Generated class###################################
cdef class CSGShape(classes.GeometryInstance.GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CSGShape")())
##################################Generated Properties#########################################
  @property
  def calculate_tangents(self): 
    return self.get_calculate_tangents()
  @calculate_tangents.setter 
  def calculate_tangents(self,value): 
    self.set_calculate_tangents(value)
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
  def operation(self): 
    return self.get_operation()
  @operation.setter 
  def operation(self,value): 
    self.set_operation(value)
  @property
  def snap(self): 
    return self.get_snap()
  @snap.setter 
  def snap(self,value): 
    self.set_snap(value)
  @property
  def use_collision(self): 
    return self.get_use_collision()
  @use_collision.setter 
  def use_collision(self,value): 
    self.set_use_collision(value)

##################################Generated Methods#########################################
  def  _update_shape(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_csgshape__update_shape,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_layer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_layer_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_layer_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_collision_mask_bit(self,  int bit):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bit
    api_core.godot_method_bind_ptrcall(bind_csgshape_get_collision_mask_bit,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_meshes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_get_meshes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_operation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CSGShape_Operation* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_get_operation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_snap(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_get_snap,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_calculating_tangents(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_is_calculating_tangents,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_root_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_is_root_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_collision(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_csgshape_is_using_collision,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_calculate_tangents(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_calculate_tangents,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer(self,  int layer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &layer
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_layer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_layer_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_layer_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_collision_mask_bit(self,  int bit,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bit
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_collision_mask_bit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_operation(self,  int operation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &operation
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_operation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_snap(self,  float snap):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &snap
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_snap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_collision(self,  bool operation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &operation
    api_core.godot_method_bind_ptrcall(bind_csgshape_set_use_collision,self.godot_owner,args,NULL)
    hello('hallo2')
