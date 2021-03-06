from classes.Light cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_omnilight_get_shadow_detail
cdef godot_method_bind *bind_omnilight_get_shadow_mode
cdef godot_method_bind *bind_omnilight_set_shadow_detail
cdef godot_method_bind *bind_omnilight_set_shadow_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_omnilight_get_shadow_detail = api_core.godot_method_bind_get_method('OmniLight', 'get_shadow_detail')
  bind_omnilight_get_shadow_mode = api_core.godot_method_bind_get_method('OmniLight', 'get_shadow_mode')
  bind_omnilight_set_shadow_detail = api_core.godot_method_bind_get_method('OmniLight', 'set_shadow_detail')
  bind_omnilight_set_shadow_mode = api_core.godot_method_bind_get_method('OmniLight', 'set_shadow_mode')

############################Generated class###################################
cdef class OmniLight(Light):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("OmniLight")())
##################################Generated Properties#########################################
  @property
  def omni_attenuation(self): 
    return self.get_omni_attenuation()
  @omni_attenuation.setter 
  def omni_attenuation(self,value): 
    self.set_omni_attenuation(value)
  @property
  def omni_range(self): 
    return self.get_omni_range()
  @omni_range.setter 
  def omni_range(self,value): 
    self.set_omni_range(value)
  @property
  def omni_shadow_detail(self): 
    return self.get_omni_shadow_detail()
  @omni_shadow_detail.setter 
  def omni_shadow_detail(self,value): 
    self.set_omni_shadow_detail(value)
  @property
  def omni_shadow_mode(self): 
    return self.get_omni_shadow_mode()
  @omni_shadow_mode.setter 
  def omni_shadow_mode(self,value): 
    self.set_omni_shadow_mode(value)

##################################Generated Methods#########################################
  def  get_shadow_detail(self):
    cdef godot_object *_owner = self.godot_owner
    cdef OmniLight::ShadowDetail ret
    api_core.godot_method_bind_ptrcall(bind_omnilight_get_shadow_detail,self.godot_owner,[NULL,],&ret)
  def  get_shadow_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef OmniLight::ShadowMode ret
    api_core.godot_method_bind_ptrcall(bind_omnilight_get_shadow_mode,self.godot_owner,[NULL,],&ret)
  def  set_shadow_detail(self, detail):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_omnilight_set_shadow_detail,self.godot_owner,[NULL,],NULL)
  def  set_shadow_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_omnilight_set_shadow_mode,self.godot_owner,[NULL,],NULL)
