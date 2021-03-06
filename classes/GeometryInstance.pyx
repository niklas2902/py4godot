from classes.VisualInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_geometryinstance_get_cast_shadows_setting
cdef godot_method_bind *bind_geometryinstance_get_extra_cull_margin
cdef godot_method_bind *bind_geometryinstance_get_flag
cdef godot_method_bind *bind_geometryinstance_get_lod_max_distance
cdef godot_method_bind *bind_geometryinstance_get_lod_max_hysteresis
cdef godot_method_bind *bind_geometryinstance_get_lod_min_distance
cdef godot_method_bind *bind_geometryinstance_get_lod_min_hysteresis
cdef godot_method_bind *bind_geometryinstance_get_material_override
cdef godot_method_bind *bind_geometryinstance_set_cast_shadows_setting
cdef godot_method_bind *bind_geometryinstance_set_custom_aabb
cdef godot_method_bind *bind_geometryinstance_set_extra_cull_margin
cdef godot_method_bind *bind_geometryinstance_set_flag
cdef godot_method_bind *bind_geometryinstance_set_lod_max_distance
cdef godot_method_bind *bind_geometryinstance_set_lod_max_hysteresis
cdef godot_method_bind *bind_geometryinstance_set_lod_min_distance
cdef godot_method_bind *bind_geometryinstance_set_lod_min_hysteresis
cdef godot_method_bind *bind_geometryinstance_set_material_override
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_geometryinstance_get_cast_shadows_setting = api_core.godot_method_bind_get_method('GeometryInstance', 'get_cast_shadows_setting')
  bind_geometryinstance_get_extra_cull_margin = api_core.godot_method_bind_get_method('GeometryInstance', 'get_extra_cull_margin')
  bind_geometryinstance_get_flag = api_core.godot_method_bind_get_method('GeometryInstance', 'get_flag')
  bind_geometryinstance_get_lod_max_distance = api_core.godot_method_bind_get_method('GeometryInstance', 'get_lod_max_distance')
  bind_geometryinstance_get_lod_max_hysteresis = api_core.godot_method_bind_get_method('GeometryInstance', 'get_lod_max_hysteresis')
  bind_geometryinstance_get_lod_min_distance = api_core.godot_method_bind_get_method('GeometryInstance', 'get_lod_min_distance')
  bind_geometryinstance_get_lod_min_hysteresis = api_core.godot_method_bind_get_method('GeometryInstance', 'get_lod_min_hysteresis')
  bind_geometryinstance_get_material_override = api_core.godot_method_bind_get_method('GeometryInstance', 'get_material_override')
  bind_geometryinstance_set_cast_shadows_setting = api_core.godot_method_bind_get_method('GeometryInstance', 'set_cast_shadows_setting')
  bind_geometryinstance_set_custom_aabb = api_core.godot_method_bind_get_method('GeometryInstance', 'set_custom_aabb')
  bind_geometryinstance_set_extra_cull_margin = api_core.godot_method_bind_get_method('GeometryInstance', 'set_extra_cull_margin')
  bind_geometryinstance_set_flag = api_core.godot_method_bind_get_method('GeometryInstance', 'set_flag')
  bind_geometryinstance_set_lod_max_distance = api_core.godot_method_bind_get_method('GeometryInstance', 'set_lod_max_distance')
  bind_geometryinstance_set_lod_max_hysteresis = api_core.godot_method_bind_get_method('GeometryInstance', 'set_lod_max_hysteresis')
  bind_geometryinstance_set_lod_min_distance = api_core.godot_method_bind_get_method('GeometryInstance', 'set_lod_min_distance')
  bind_geometryinstance_set_lod_min_hysteresis = api_core.godot_method_bind_get_method('GeometryInstance', 'set_lod_min_hysteresis')
  bind_geometryinstance_set_material_override = api_core.godot_method_bind_get_method('GeometryInstance', 'set_material_override')

############################Generated class###################################
cdef class GeometryInstance(VisualInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GeometryInstance")())
##################################Generated Properties#########################################
  @property
  def cast_shadow(self): 
    return self.get_cast_shadow()
  @cast_shadow.setter 
  def cast_shadow(self,value): 
    self.set_cast_shadow(value)
  @property
  def extra_cull_margin(self): 
    return self.get_extra_cull_margin()
  @extra_cull_margin.setter 
  def extra_cull_margin(self,value): 
    self.set_extra_cull_margin(value)
  @property
  def lod_max_distance(self): 
    return self.get_lod_max_distance()
  @lod_max_distance.setter 
  def lod_max_distance(self,value): 
    self.set_lod_max_distance(value)
  @property
  def lod_max_hysteresis(self): 
    return self.get_lod_max_hysteresis()
  @lod_max_hysteresis.setter 
  def lod_max_hysteresis(self,value): 
    self.set_lod_max_hysteresis(value)
  @property
  def lod_min_distance(self): 
    return self.get_lod_min_distance()
  @lod_min_distance.setter 
  def lod_min_distance(self,value): 
    self.set_lod_min_distance(value)
  @property
  def lod_min_hysteresis(self): 
    return self.get_lod_min_hysteresis()
  @lod_min_hysteresis.setter 
  def lod_min_hysteresis(self,value): 
    self.set_lod_min_hysteresis(value)
  @property
  def material_override(self): 
    return self.get_material_override()
  @material_override.setter 
  def material_override(self,value): 
    self.set_material_override(value)
  @property
  def use_in_baked_light(self): 
    return self.get_use_in_baked_light()
  @use_in_baked_light.setter 
  def use_in_baked_light(self,value): 
    self.set_use_in_baked_light(value)

##################################Generated Methods#########################################
  def  get_cast_shadows_setting(self):
    cdef godot_object *_owner = self.godot_owner
    cdef GeometryInstance::ShadowCastingSetting ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_cast_shadows_setting,self.godot_owner,[NULL,],&ret)
  def  get_extra_cull_margin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_extra_cull_margin,self.godot_owner,[NULL,],&ret)
  def  get_flag(self, flag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_flag,self.godot_owner,[NULL,],&ret)
  def  get_lod_max_distance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_max_distance,self.godot_owner,[NULL,],&ret)
  def  get_lod_max_hysteresis(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_max_hysteresis,self.godot_owner,[NULL,],&ret)
  def  get_lod_min_distance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_min_distance,self.godot_owner,[NULL,],&ret)
  def  get_lod_min_hysteresis(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_min_hysteresis,self.godot_owner,[NULL,],&ret)
  def  get_material_override(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_material_override,self.godot_owner,[NULL,],&ret)
  def  set_cast_shadows_setting(self, shadow_casting_setting):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_cast_shadows_setting,self.godot_owner,[NULL,],NULL)
  def  set_custom_aabb(self, aabb):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_custom_aabb,self.godot_owner,[NULL,],NULL)
  def  set_extra_cull_margin(self, margin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_extra_cull_margin,self.godot_owner,[NULL,],NULL)
  def  set_flag(self, flagvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_flag,self.godot_owner,[NULL,],NULL)
  def  set_lod_max_distance(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_max_distance,self.godot_owner,[NULL,],NULL)
  def  set_lod_max_hysteresis(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_max_hysteresis,self.godot_owner,[NULL,],NULL)
  def  set_lod_min_distance(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_min_distance,self.godot_owner,[NULL,],NULL)
  def  set_lod_min_hysteresis(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_min_hysteresis,self.godot_owner,[NULL,],NULL)
  def  set_material_override(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_material_override,self.godot_owner,[NULL,],NULL)
