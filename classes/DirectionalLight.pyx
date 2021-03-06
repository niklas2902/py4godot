from classes.Light cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class DirectionalLight(Light):
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
    cdef DirectionalLight::ShadowDepthRange ret
    api_core.godot_method_bind_ptrcall(bind_directionallight_get_shadow_depth_range,self.godot_owner,[NULL,],&ret)
  def  get_shadow_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef DirectionalLight::ShadowMode ret
    api_core.godot_method_bind_ptrcall(bind_directionallight_get_shadow_mode,self.godot_owner,[NULL,],&ret)
  def  is_blend_splits_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_directionallight_is_blend_splits_enabled,self.godot_owner,[NULL,],&ret)
  def  set_blend_splits(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_directionallight_set_blend_splits,self.godot_owner,[NULL,],NULL)
  def  set_shadow_depth_range(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_directionallight_set_shadow_depth_range,self.godot_owner,[NULL,],NULL)
  def  set_shadow_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_directionallight_set_shadow_mode,self.godot_owner,[NULL,],NULL)
