
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
cimport classes.OccluderPolygon2D
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_lightoccluder2d__poly_changed
cdef godot_method_bind *bind_lightoccluder2d_get_occluder_light_mask
cdef godot_method_bind *bind_lightoccluder2d_get_occluder_polygon
cdef godot_method_bind *bind_lightoccluder2d_set_occluder_light_mask
cdef godot_method_bind *bind_lightoccluder2d_set_occluder_polygon
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_lightoccluder2d__poly_changed = api_core.godot_method_bind_get_method('LightOccluder2D', '_poly_changed')
  bind_lightoccluder2d_get_occluder_light_mask = api_core.godot_method_bind_get_method('LightOccluder2D', 'get_occluder_light_mask')
  bind_lightoccluder2d_get_occluder_polygon = api_core.godot_method_bind_get_method('LightOccluder2D', 'get_occluder_polygon')
  bind_lightoccluder2d_set_occluder_light_mask = api_core.godot_method_bind_get_method('LightOccluder2D', 'set_occluder_light_mask')
  bind_lightoccluder2d_set_occluder_polygon = api_core.godot_method_bind_get_method('LightOccluder2D', 'set_occluder_polygon')

############################Generated class###################################
cdef class LightOccluder2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("LightOccluder2D")())
##################################Generated Properties#########################################
  @property
  def light_mask(self): 
    return self.get_light_mask()
  @light_mask.setter 
  def light_mask(self,value): 
    self.set_light_mask(value)
  @property
  def occluder(self): 
    return self.get_occluder()
  @occluder.setter 
  def occluder(self,value): 
    self.set_occluder(value)

##################################Generated Methods#########################################
  def  _poly_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d__poly_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_occluder_light_mask(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_get_occluder_light_mask,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_occluder_polygon(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_get_occluder_polygon,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_occluder_light_mask(self,  int mask):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mask
    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_set_occluder_light_mask,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_occluder_polygon(self,  classes.OccluderPolygon2D.OccluderPolygon2D polygon):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = polygon.godot_owner
    api_core.godot_method_bind_ptrcall(bind_lightoccluder2d_set_occluder_polygon,self.godot_owner,args,NULL)
    hello('hallo2')
