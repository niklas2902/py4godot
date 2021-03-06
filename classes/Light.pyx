from classes.VisualInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_light_get_bake_mode
cdef godot_method_bind *bind_light_get_color
cdef godot_method_bind *bind_light_get_cull_mask
cdef godot_method_bind *bind_light_get_param
cdef godot_method_bind *bind_light_get_shadow_color
cdef godot_method_bind *bind_light_get_shadow_reverse_cull_face
cdef godot_method_bind *bind_light_has_shadow
cdef godot_method_bind *bind_light_is_editor_only
cdef godot_method_bind *bind_light_is_negative
cdef godot_method_bind *bind_light_set_bake_mode
cdef godot_method_bind *bind_light_set_color
cdef godot_method_bind *bind_light_set_cull_mask
cdef godot_method_bind *bind_light_set_editor_only
cdef godot_method_bind *bind_light_set_negative
cdef godot_method_bind *bind_light_set_param
cdef godot_method_bind *bind_light_set_shadow
cdef godot_method_bind *bind_light_set_shadow_color
cdef godot_method_bind *bind_light_set_shadow_reverse_cull_face
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_light_get_bake_mode = api_core.godot_method_bind_get_method('Light', 'get_bake_mode')
  bind_light_get_color = api_core.godot_method_bind_get_method('Light', 'get_color')
  bind_light_get_cull_mask = api_core.godot_method_bind_get_method('Light', 'get_cull_mask')
  bind_light_get_param = api_core.godot_method_bind_get_method('Light', 'get_param')
  bind_light_get_shadow_color = api_core.godot_method_bind_get_method('Light', 'get_shadow_color')
  bind_light_get_shadow_reverse_cull_face = api_core.godot_method_bind_get_method('Light', 'get_shadow_reverse_cull_face')
  bind_light_has_shadow = api_core.godot_method_bind_get_method('Light', 'has_shadow')
  bind_light_is_editor_only = api_core.godot_method_bind_get_method('Light', 'is_editor_only')
  bind_light_is_negative = api_core.godot_method_bind_get_method('Light', 'is_negative')
  bind_light_set_bake_mode = api_core.godot_method_bind_get_method('Light', 'set_bake_mode')
  bind_light_set_color = api_core.godot_method_bind_get_method('Light', 'set_color')
  bind_light_set_cull_mask = api_core.godot_method_bind_get_method('Light', 'set_cull_mask')
  bind_light_set_editor_only = api_core.godot_method_bind_get_method('Light', 'set_editor_only')
  bind_light_set_negative = api_core.godot_method_bind_get_method('Light', 'set_negative')
  bind_light_set_param = api_core.godot_method_bind_get_method('Light', 'set_param')
  bind_light_set_shadow = api_core.godot_method_bind_get_method('Light', 'set_shadow')
  bind_light_set_shadow_color = api_core.godot_method_bind_get_method('Light', 'set_shadow_color')
  bind_light_set_shadow_reverse_cull_face = api_core.godot_method_bind_get_method('Light', 'set_shadow_reverse_cull_face')

############################Generated class###################################
cdef class Light(VisualInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Light")())
##################################Generated Properties#########################################
  @property
  def editor_only(self): 
    return self.get_editor_only()
  @editor_only.setter 
  def editor_only(self,value): 
    self.set_editor_only(value)
  @property
  def light_bake_mode(self): 
    return self.get_light_bake_mode()
  @light_bake_mode.setter 
  def light_bake_mode(self,value): 
    self.set_light_bake_mode(value)
  @property
  def light_color(self): 
    return self.get_light_color()
  @light_color.setter 
  def light_color(self,value): 
    self.set_light_color(value)
  @property
  def light_cull_mask(self): 
    return self.get_light_cull_mask()
  @light_cull_mask.setter 
  def light_cull_mask(self,value): 
    self.set_light_cull_mask(value)
  @property
  def light_energy(self): 
    return self.get_light_energy()
  @light_energy.setter 
  def light_energy(self,value): 
    self.set_light_energy(value)
  @property
  def light_indirect_energy(self): 
    return self.get_light_indirect_energy()
  @light_indirect_energy.setter 
  def light_indirect_energy(self,value): 
    self.set_light_indirect_energy(value)
  @property
  def light_negative(self): 
    return self.get_light_negative()
  @light_negative.setter 
  def light_negative(self,value): 
    self.set_light_negative(value)
  @property
  def light_specular(self): 
    return self.get_light_specular()
  @light_specular.setter 
  def light_specular(self,value): 
    self.set_light_specular(value)
  @property
  def shadow_bias(self): 
    return self.get_shadow_bias()
  @shadow_bias.setter 
  def shadow_bias(self,value): 
    self.set_shadow_bias(value)
  @property
  def shadow_color(self): 
    return self.get_shadow_color()
  @shadow_color.setter 
  def shadow_color(self,value): 
    self.set_shadow_color(value)
  @property
  def shadow_contact(self): 
    return self.get_shadow_contact()
  @shadow_contact.setter 
  def shadow_contact(self,value): 
    self.set_shadow_contact(value)
  @property
  def shadow_enabled(self): 
    return self.get_shadow_enabled()
  @shadow_enabled.setter 
  def shadow_enabled(self,value): 
    self.set_shadow_enabled(value)
  @property
  def shadow_reverse_cull_face(self): 
    return self.get_shadow_reverse_cull_face()
  @shadow_reverse_cull_face.setter 
  def shadow_reverse_cull_face(self,value): 
    self.set_shadow_reverse_cull_face(value)

##################################Generated Methods#########################################
  def  get_bake_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Light::BakeMode ret
    api_core.godot_method_bind_ptrcall(bind_light_get_bake_mode,self.godot_owner,[NULL,],&ret)
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_light_get_color,self.godot_owner,[NULL,],&ret)
  def  get_cull_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_light_get_cull_mask,self.godot_owner,[NULL,],&ret)
  def  get_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_light_get_param,self.godot_owner,[NULL,],&ret)
  def  get_shadow_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_light_get_shadow_color,self.godot_owner,[NULL,],&ret)
  def  get_shadow_reverse_cull_face(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_light_get_shadow_reverse_cull_face,self.godot_owner,[NULL,],&ret)
  def  has_shadow(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_light_has_shadow,self.godot_owner,[NULL,],&ret)
  def  is_editor_only(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_light_is_editor_only,self.godot_owner,[NULL,],&ret)
  def  is_negative(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_light_is_negative,self.godot_owner,[NULL,],&ret)
  def  set_bake_mode(self, bake_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_bake_mode,self.godot_owner,[NULL,],NULL)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_color,self.godot_owner,[NULL,],NULL)
  def  set_cull_mask(self, cull_mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_cull_mask,self.godot_owner,[NULL,],NULL)
  def  set_editor_only(self, editor_only):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_editor_only,self.godot_owner,[NULL,],NULL)
  def  set_negative(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_negative,self.godot_owner,[NULL,],NULL)
  def  set_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_param,self.godot_owner,[NULL,],NULL)
  def  set_shadow(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_shadow,self.godot_owner,[NULL,],NULL)
  def  set_shadow_color(self, shadow_color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_shadow_color,self.godot_owner,[NULL,],NULL)
  def  set_shadow_reverse_cull_face(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_light_set_shadow_reverse_cull_face,self.godot_owner,[NULL,],NULL)
