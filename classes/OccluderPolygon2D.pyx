
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

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_occluderpolygon2d_get_cull_mode
cdef godot_method_bind *bind_occluderpolygon2d_get_polygon
cdef godot_method_bind *bind_occluderpolygon2d_is_closed
cdef godot_method_bind *bind_occluderpolygon2d_set_closed
cdef godot_method_bind *bind_occluderpolygon2d_set_cull_mode
cdef godot_method_bind *bind_occluderpolygon2d_set_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_occluderpolygon2d_get_cull_mode = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'get_cull_mode')
  bind_occluderpolygon2d_get_polygon = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'get_polygon')
  bind_occluderpolygon2d_is_closed = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'is_closed')
  bind_occluderpolygon2d_set_closed = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'set_closed')
  bind_occluderpolygon2d_set_cull_mode = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'set_cull_mode')
  bind_occluderpolygon2d_set_polygon = api_core.godot_method_bind_get_method('OccluderPolygon2D', 'set_polygon')

############################Generated class###################################
cdef class OccluderPolygon2D(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("OccluderPolygon2D")())
##################################Generated Properties#########################################
  @property
  def closed(self): 
    return self.get_closed()
  @closed.setter 
  def closed(self,value): 
    self.set_closed(value)
  @property
  def cull_mode(self): 
    return self.get_cull_mode()
  @cull_mode.setter 
  def cull_mode(self,value): 
    self.set_cull_mode(value)
  @property
  def polygon(self): 
    return self.get_polygon()
  @polygon.setter 
  def polygon(self,value): 
    self.set_polygon(value)

##################################Generated Methods#########################################
  def  get_cull_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef CullMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_get_cull_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_polygon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_get_polygon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_closed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_is_closed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_closed(self,  bool closed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &closed
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_set_closed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_cull_mode(self,  int cull_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &cull_mode
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_set_cull_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_polygon(self,  PoolVector2Array polygon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &polygon._native
    api_core.godot_method_bind_ptrcall(bind_occluderpolygon2d_set_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
