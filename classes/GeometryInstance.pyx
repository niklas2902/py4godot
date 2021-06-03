
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
cimport classes.Material
cimport classes.VisualInstance 

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
cdef class GeometryInstance(classes.VisualInstance.VisualInstance):
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

    cdef ShadowCastingSetting* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_cast_shadows_setting,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_extra_cull_margin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_extra_cull_margin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_flag(self,  int flag):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &flag
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_flag,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_lod_max_distance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_max_distance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_lod_max_hysteresis(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_max_hysteresis,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_lod_min_distance(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_min_distance,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_lod_min_hysteresis(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_lod_min_hysteresis,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_material_override(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_geometryinstance_get_material_override,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_cast_shadows_setting(self,  int shadow_casting_setting):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &shadow_casting_setting
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_cast_shadows_setting,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_custom_aabb(self,  AABB aabb):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &aabb._native
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_custom_aabb,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_extra_cull_margin(self,  float margin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &margin
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_extra_cull_margin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flag(self,  int flag,  bool value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &flag
    args[1] = &value
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_flag,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_lod_max_distance(self,  float mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_max_distance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_lod_max_hysteresis(self,  float mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_max_hysteresis,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_lod_min_distance(self,  float mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_min_distance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_lod_min_hysteresis(self,  float mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_lod_min_hysteresis,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_material_override(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_geometryinstance_set_material_override,self.godot_owner,args,NULL)
    hello('hallo2')
