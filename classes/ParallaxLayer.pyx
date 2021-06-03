
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
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_parallaxlayer_get_mirroring
cdef godot_method_bind *bind_parallaxlayer_get_motion_offset
cdef godot_method_bind *bind_parallaxlayer_get_motion_scale
cdef godot_method_bind *bind_parallaxlayer_set_mirroring
cdef godot_method_bind *bind_parallaxlayer_set_motion_offset
cdef godot_method_bind *bind_parallaxlayer_set_motion_scale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_parallaxlayer_get_mirroring = api_core.godot_method_bind_get_method('ParallaxLayer', 'get_mirroring')
  bind_parallaxlayer_get_motion_offset = api_core.godot_method_bind_get_method('ParallaxLayer', 'get_motion_offset')
  bind_parallaxlayer_get_motion_scale = api_core.godot_method_bind_get_method('ParallaxLayer', 'get_motion_scale')
  bind_parallaxlayer_set_mirroring = api_core.godot_method_bind_get_method('ParallaxLayer', 'set_mirroring')
  bind_parallaxlayer_set_motion_offset = api_core.godot_method_bind_get_method('ParallaxLayer', 'set_motion_offset')
  bind_parallaxlayer_set_motion_scale = api_core.godot_method_bind_get_method('ParallaxLayer', 'set_motion_scale')

############################Generated class###################################
cdef class ParallaxLayer(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ParallaxLayer")())
##################################Generated Properties#########################################
  @property
  def motion_mirroring(self): 
    return self.get_motion_mirroring()
  @motion_mirroring.setter 
  def motion_mirroring(self,value): 
    self.set_motion_mirroring(value)
  @property
  def motion_offset(self): 
    return self.get_motion_offset()
  @motion_offset.setter 
  def motion_offset(self,value): 
    self.set_motion_offset(value)
  @property
  def motion_scale(self): 
    return self.get_motion_scale()
  @motion_scale.setter 
  def motion_scale(self,value): 
    self.set_motion_scale(value)

##################################Generated Methods#########################################
  def  get_mirroring(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_get_mirroring,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_motion_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_get_motion_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_motion_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_get_motion_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  set_mirroring(self,  Vector2 mirror):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mirror._native
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_set_mirroring,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_motion_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_set_motion_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_motion_scale(self,  Vector2 scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale._native
    api_core.godot_method_bind_ptrcall(bind_parallaxlayer_set_motion_scale,self.godot_owner,args,NULL)
    hello('hallo2')
