
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
cimport classes.Light 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_directionallight_get_shadow_depth_range
cdef godot_method_bind *bind_directionallight_get_shadow_mode
cdef godot_method_bind *bind_directionallight_is_blend_splits_enabled
cdef godot_method_bind *bind_directionallight_set_blend_splits
cdef godot_method_bind *bind_directionallight_set_shadow_depth_range
cdef godot_method_bind *bind_directionallight_set_shadow_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_directionallight_get_shadow_depth_range = api_core.godot_method_bind_get_method('DirectionalLight', 'get_shadow_depth_range')
  bind_directionallight_get_shadow_mode = api_core.godot_method_bind_get_method('DirectionalLight', 'get_shadow_mode')
  bind_directionallight_is_blend_splits_enabled = api_core.godot_method_bind_get_method('DirectionalLight', 'is_blend_splits_enabled')
  bind_directionallight_set_blend_splits = api_core.godot_method_bind_get_method('DirectionalLight', 'set_blend_splits')
  bind_directionallight_set_shadow_depth_range = api_core.godot_method_bind_get_method('DirectionalLight', 'set_shadow_depth_range')
  bind_directionallight_set_shadow_mode = api_core.godot_method_bind_get_method('DirectionalLight', 'set_shadow_mode')

############################Generated class###################################
cdef class DirectionalLight(classes.Light.Light):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("DirectionalLight")())
##################################Generated Properties#########################################
  @property
  def directional_shadow_bias_split_scale(self): 
    return self.get_directional_shadow_bias_split_scale()
  @directional_shadow_bias_split_scale.setter 
  def directional_shadow_bias_split_scale(self,value): 
    self.set_directional_shadow_bias_split_scale(value)
  @property
  def directional_shadow_blend_splits(self): 
    return self.get_directional_shadow_blend_splits()
  @directional_shadow_blend_splits.setter 
  def directional_shadow_blend_splits(self,value): 
    self.set_directional_shadow_blend_splits(value)
  @property
  def directional_shadow_depth_range(self): 
    return self.get_directional_shadow_depth_range()
  @directional_shadow_depth_range.setter 
  def directional_shadow_depth_range(self,value): 
    self.set_directional_shadow_depth_range(value)
  @property
  def directional_shadow_max_distance(self): 
    return self.get_directional_shadow_max_distance()
  @directional_shadow_max_distance.setter 
  def directional_shadow_max_distance(self,value): 
    self.set_directional_shadow_max_distance(value)
  @property
  def directional_shadow_mode(self): 
    return self.get_directional_shadow_mode()
  @directional_shadow_mode.setter 
  def directional_shadow_mode(self,value): 
    self.set_directional_shadow_mode(value)
  @property
  def directional_shadow_normal_bias(self): 
    return self.get_directional_shadow_normal_bias()
  @directional_shadow_normal_bias.setter 
  def directional_shadow_normal_bias(self,value): 
    self.set_directional_shadow_normal_bias(value)
  @property
  def directional_shadow_split_1(self): 
    return self.get_directional_shadow_split_1()
  @directional_shadow_split_1.setter 
  def directional_shadow_split_1(self,value): 
    self.set_directional_shadow_split_1(value)
  @property
  def directional_shadow_split_2(self): 
    return self.get_directional_shadow_split_2()
  @directional_shadow_split_2.setter 
  def directional_shadow_split_2(self,value): 
    self.set_directional_shadow_split_2(value)
  @property
  def directional_shadow_split_3(self): 
    return self.get_directional_shadow_split_3()
  @directional_shadow_split_3.setter 
  def directional_shadow_split_3(self,value): 
    self.set_directional_shadow_split_3(value)

##################################Generated Methods#########################################
  def  get_shadow_depth_range(self):
    cdef godot_object *_owner = self.godot_owner

    cdef DirectionalLight_ShadowDepthRange* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_directionallight_get_shadow_depth_range,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_shadow_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef DirectionalLight_ShadowMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_directionallight_get_shadow_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_blend_splits_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_directionallight_is_blend_splits_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_blend_splits(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_directionallight_set_blend_splits,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shadow_depth_range(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_directionallight_set_shadow_depth_range,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_shadow_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_directionallight_set_shadow_mode,self.godot_owner,args,NULL)
    hello('hallo2')
