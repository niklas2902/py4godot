
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
cimport classes.Camera 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_interpolatedcamera_get_speed
cdef godot_method_bind *bind_interpolatedcamera_get_target_path
cdef godot_method_bind *bind_interpolatedcamera_is_interpolation_enabled
cdef godot_method_bind *bind_interpolatedcamera_set_interpolation_enabled
cdef godot_method_bind *bind_interpolatedcamera_set_speed
cdef godot_method_bind *bind_interpolatedcamera_set_target
cdef godot_method_bind *bind_interpolatedcamera_set_target_path
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_interpolatedcamera_get_speed = api_core.godot_method_bind_get_method('InterpolatedCamera', 'get_speed')
  bind_interpolatedcamera_get_target_path = api_core.godot_method_bind_get_method('InterpolatedCamera', 'get_target_path')
  bind_interpolatedcamera_is_interpolation_enabled = api_core.godot_method_bind_get_method('InterpolatedCamera', 'is_interpolation_enabled')
  bind_interpolatedcamera_set_interpolation_enabled = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_interpolation_enabled')
  bind_interpolatedcamera_set_speed = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_speed')
  bind_interpolatedcamera_set_target = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_target')
  bind_interpolatedcamera_set_target_path = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_target_path')

############################Generated class###################################
cdef class InterpolatedCamera(classes.Camera.Camera):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InterpolatedCamera")())
##################################Generated Properties#########################################
  @property
  def enabled(self): 
    return self.get_enabled()
  @enabled.setter 
  def enabled(self,value): 
    self.set_enabled(value)
  @property
  def speed(self): 
    return self.get_speed()
  @speed.setter 
  def speed(self,value): 
    self.set_speed(value)
  @property
  def target(self): 
    return self.get_target()
  @target.setter 
  def target(self,value): 
    self.set_target(value)

##################################Generated Methods#########################################
  def  get_speed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_get_speed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_target_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_get_target_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  is_interpolation_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_is_interpolation_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_interpolation_enabled(self,  bool target_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &target_path
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_interpolation_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_speed(self,  float speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &speed
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_speed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_target(self,  classes.Object.Object target):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = target.godot_owner
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_target,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_target_path(self,  NodePath target_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &target_path._native
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_target_path,self.godot_owner,args,NULL)
    hello('hallo2')
