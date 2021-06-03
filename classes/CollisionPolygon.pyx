
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
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_collisionpolygon__is_editable_3d_polygon
cdef godot_method_bind *bind_collisionpolygon_get_depth
cdef godot_method_bind *bind_collisionpolygon_get_polygon
cdef godot_method_bind *bind_collisionpolygon_is_disabled
cdef godot_method_bind *bind_collisionpolygon_set_depth
cdef godot_method_bind *bind_collisionpolygon_set_disabled
cdef godot_method_bind *bind_collisionpolygon_set_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_collisionpolygon__is_editable_3d_polygon = api_core.godot_method_bind_get_method('CollisionPolygon', '_is_editable_3d_polygon')
  bind_collisionpolygon_get_depth = api_core.godot_method_bind_get_method('CollisionPolygon', 'get_depth')
  bind_collisionpolygon_get_polygon = api_core.godot_method_bind_get_method('CollisionPolygon', 'get_polygon')
  bind_collisionpolygon_is_disabled = api_core.godot_method_bind_get_method('CollisionPolygon', 'is_disabled')
  bind_collisionpolygon_set_depth = api_core.godot_method_bind_get_method('CollisionPolygon', 'set_depth')
  bind_collisionpolygon_set_disabled = api_core.godot_method_bind_get_method('CollisionPolygon', 'set_disabled')
  bind_collisionpolygon_set_polygon = api_core.godot_method_bind_get_method('CollisionPolygon', 'set_polygon')

############################Generated class###################################
cdef class CollisionPolygon(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CollisionPolygon")())
##################################Generated Properties#########################################
  @property
  def depth(self): 
    return self.get_depth()
  @depth.setter 
  def depth(self,value): 
    self.set_depth(value)
  @property
  def disabled(self): 
    return self.get_disabled()
  @disabled.setter 
  def disabled(self,value): 
    self.set_disabled(value)
  @property
  def polygon(self): 
    return self.get_polygon()
  @polygon.setter 
  def polygon(self,value): 
    self.set_polygon(value)

##################################Generated Methods#########################################
  def  _is_editable_3d_polygon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon__is_editable_3d_polygon,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_get_depth,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_polygon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_get_polygon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_disabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_is_disabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_depth(self,  float depth):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &depth
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_set_depth,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_disabled(self,  bool disabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &disabled
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_set_disabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_polygon(self,  PoolVector2Array polygon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &polygon._native
    api_core.godot_method_bind_ptrcall(bind_collisionpolygon_set_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
