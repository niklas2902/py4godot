
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
cimport classes.Resource
cimport classes.Shape
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionshape__shape_changed
cdef godot_method_bind *bind_collisionshape__update_debug_shape
cdef godot_method_bind *bind_collisionshape_get_shape
cdef godot_method_bind *bind_collisionshape_is_disabled
cdef godot_method_bind *bind_collisionshape_make_convex_from_brothers
cdef godot_method_bind *bind_collisionshape_resource_changed
cdef godot_method_bind *bind_collisionshape_set_disabled
cdef godot_method_bind *bind_collisionshape_set_shape
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionshape__shape_changed = api_core.godot_method_bind_get_method('CollisionShape', '_shape_changed')
  bind_collisionshape__update_debug_shape = api_core.godot_method_bind_get_method('CollisionShape', '_update_debug_shape')
  bind_collisionshape_get_shape = api_core.godot_method_bind_get_method('CollisionShape', 'get_shape')
  bind_collisionshape_is_disabled = api_core.godot_method_bind_get_method('CollisionShape', 'is_disabled')
  bind_collisionshape_make_convex_from_brothers = api_core.godot_method_bind_get_method('CollisionShape', 'make_convex_from_brothers')
  bind_collisionshape_resource_changed = api_core.godot_method_bind_get_method('CollisionShape', 'resource_changed')
  bind_collisionshape_set_disabled = api_core.godot_method_bind_get_method('CollisionShape', 'set_disabled')
  bind_collisionshape_set_shape = api_core.godot_method_bind_get_method('CollisionShape', 'set_shape')

############################Generated class###################################
cdef class CollisionShape(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionShape")())
##################################Generated Properties#########################################
  @property
  def disabled(self): 
    return self.get_disabled()
  @disabled.setter 
  def disabled(self,value): 
    self.set_disabled(value)
  @property
  def shape(self): 
    return self.get_shape()
  @shape.setter 
  def shape(self,value): 
    self.set_shape(value)

##################################Generated Methods#########################################
  def  _shape_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_collisionshape__shape_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_debug_shape(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_collisionshape__update_debug_shape,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_shape(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionshape_get_shape,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionshape_is_disabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  make_convex_from_brothers(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_collisionshape_make_convex_from_brothers,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  resource_changed(self,  classes.Resource.Resource resource):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = resource.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape_resource_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disabled(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_collisionshape_set_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shape(self,  classes.Shape.Shape shape):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = shape.godot_owner
    api_core.godot_method_bind_ptrcall(bind_collisionshape_set_shape,self.godot_owner,args,NULL)
    hello('hallo2')
