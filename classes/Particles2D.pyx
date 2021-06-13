
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
cimport classes.Texture
cimport classes.Material
cimport classes.Texture
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_particles2d_capture_rect
cdef godot_method_bind *bind_particles2d_get_amount
cdef godot_method_bind *bind_particles2d_get_draw_order
cdef godot_method_bind *bind_particles2d_get_explosiveness_ratio
cdef godot_method_bind *bind_particles2d_get_fixed_fps
cdef godot_method_bind *bind_particles2d_get_fractional_delta
cdef godot_method_bind *bind_particles2d_get_lifetime
cdef godot_method_bind *bind_particles2d_get_normal_map
cdef godot_method_bind *bind_particles2d_get_one_shot
cdef godot_method_bind *bind_particles2d_get_pre_process_time
cdef godot_method_bind *bind_particles2d_get_process_material
cdef godot_method_bind *bind_particles2d_get_randomness_ratio
cdef godot_method_bind *bind_particles2d_get_speed_scale
cdef godot_method_bind *bind_particles2d_get_texture
cdef godot_method_bind *bind_particles2d_get_use_local_coordinates
cdef godot_method_bind *bind_particles2d_get_visibility_rect
cdef godot_method_bind *bind_particles2d_is_emitting
cdef godot_method_bind *bind_particles2d_restart
cdef godot_method_bind *bind_particles2d_set_amount
cdef godot_method_bind *bind_particles2d_set_draw_order
cdef godot_method_bind *bind_particles2d_set_emitting
cdef godot_method_bind *bind_particles2d_set_explosiveness_ratio
cdef godot_method_bind *bind_particles2d_set_fixed_fps
cdef godot_method_bind *bind_particles2d_set_fractional_delta
cdef godot_method_bind *bind_particles2d_set_lifetime
cdef godot_method_bind *bind_particles2d_set_normal_map
cdef godot_method_bind *bind_particles2d_set_one_shot
cdef godot_method_bind *bind_particles2d_set_pre_process_time
cdef godot_method_bind *bind_particles2d_set_process_material
cdef godot_method_bind *bind_particles2d_set_randomness_ratio
cdef godot_method_bind *bind_particles2d_set_speed_scale
cdef godot_method_bind *bind_particles2d_set_texture
cdef godot_method_bind *bind_particles2d_set_use_local_coordinates
cdef godot_method_bind *bind_particles2d_set_visibility_rect
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_particles2d_capture_rect = api_core.godot_method_bind_get_method('Particles2D', 'capture_rect')
  bind_particles2d_get_amount = api_core.godot_method_bind_get_method('Particles2D', 'get_amount')
  bind_particles2d_get_draw_order = api_core.godot_method_bind_get_method('Particles2D', 'get_draw_order')
  bind_particles2d_get_explosiveness_ratio = api_core.godot_method_bind_get_method('Particles2D', 'get_explosiveness_ratio')
  bind_particles2d_get_fixed_fps = api_core.godot_method_bind_get_method('Particles2D', 'get_fixed_fps')
  bind_particles2d_get_fractional_delta = api_core.godot_method_bind_get_method('Particles2D', 'get_fractional_delta')
  bind_particles2d_get_lifetime = api_core.godot_method_bind_get_method('Particles2D', 'get_lifetime')
  bind_particles2d_get_normal_map = api_core.godot_method_bind_get_method('Particles2D', 'get_normal_map')
  bind_particles2d_get_one_shot = api_core.godot_method_bind_get_method('Particles2D', 'get_one_shot')
  bind_particles2d_get_pre_process_time = api_core.godot_method_bind_get_method('Particles2D', 'get_pre_process_time')
  bind_particles2d_get_process_material = api_core.godot_method_bind_get_method('Particles2D', 'get_process_material')
  bind_particles2d_get_randomness_ratio = api_core.godot_method_bind_get_method('Particles2D', 'get_randomness_ratio')
  bind_particles2d_get_speed_scale = api_core.godot_method_bind_get_method('Particles2D', 'get_speed_scale')
  bind_particles2d_get_texture = api_core.godot_method_bind_get_method('Particles2D', 'get_texture')
  bind_particles2d_get_use_local_coordinates = api_core.godot_method_bind_get_method('Particles2D', 'get_use_local_coordinates')
  bind_particles2d_get_visibility_rect = api_core.godot_method_bind_get_method('Particles2D', 'get_visibility_rect')
  bind_particles2d_is_emitting = api_core.godot_method_bind_get_method('Particles2D', 'is_emitting')
  bind_particles2d_restart = api_core.godot_method_bind_get_method('Particles2D', 'restart')
  bind_particles2d_set_amount = api_core.godot_method_bind_get_method('Particles2D', 'set_amount')
  bind_particles2d_set_draw_order = api_core.godot_method_bind_get_method('Particles2D', 'set_draw_order')
  bind_particles2d_set_emitting = api_core.godot_method_bind_get_method('Particles2D', 'set_emitting')
  bind_particles2d_set_explosiveness_ratio = api_core.godot_method_bind_get_method('Particles2D', 'set_explosiveness_ratio')
  bind_particles2d_set_fixed_fps = api_core.godot_method_bind_get_method('Particles2D', 'set_fixed_fps')
  bind_particles2d_set_fractional_delta = api_core.godot_method_bind_get_method('Particles2D', 'set_fractional_delta')
  bind_particles2d_set_lifetime = api_core.godot_method_bind_get_method('Particles2D', 'set_lifetime')
  bind_particles2d_set_normal_map = api_core.godot_method_bind_get_method('Particles2D', 'set_normal_map')
  bind_particles2d_set_one_shot = api_core.godot_method_bind_get_method('Particles2D', 'set_one_shot')
  bind_particles2d_set_pre_process_time = api_core.godot_method_bind_get_method('Particles2D', 'set_pre_process_time')
  bind_particles2d_set_process_material = api_core.godot_method_bind_get_method('Particles2D', 'set_process_material')
  bind_particles2d_set_randomness_ratio = api_core.godot_method_bind_get_method('Particles2D', 'set_randomness_ratio')
  bind_particles2d_set_speed_scale = api_core.godot_method_bind_get_method('Particles2D', 'set_speed_scale')
  bind_particles2d_set_texture = api_core.godot_method_bind_get_method('Particles2D', 'set_texture')
  bind_particles2d_set_use_local_coordinates = api_core.godot_method_bind_get_method('Particles2D', 'set_use_local_coordinates')
  bind_particles2d_set_visibility_rect = api_core.godot_method_bind_get_method('Particles2D', 'set_visibility_rect')

############################Generated class###################################
cdef class Particles2D(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Particles2D")())
##################################Generated Properties#########################################
  @property
  def amount(self): 
    return self.get_amount()
  @amount.setter 
  def amount(self,value): 
    self.set_amount(value)
  @property
  def draw_order(self): 
    return self.get_draw_order()
  @draw_order.setter 
  def draw_order(self,value): 
    self.set_draw_order(value)
  @property
  def emitting(self): 
    return self.get_emitting()
  @emitting.setter 
  def emitting(self,value): 
    self.set_emitting(value)
  @property
  def explosiveness(self): 
    return self.get_explosiveness()
  @explosiveness.setter 
  def explosiveness(self,value): 
    self.set_explosiveness(value)
  @property
  def fixed_fps(self): 
    return self.get_fixed_fps()
  @fixed_fps.setter 
  def fixed_fps(self,value): 
    self.set_fixed_fps(value)
  @property
  def fract_delta(self): 
    return self.get_fract_delta()
  @fract_delta.setter 
  def fract_delta(self,value): 
    self.set_fract_delta(value)
  @property
  def lifetime(self): 
    return self.get_lifetime()
  @lifetime.setter 
  def lifetime(self,value): 
    self.set_lifetime(value)
  @property
  def local_coords(self): 
    return self.get_local_coords()
  @local_coords.setter 
  def local_coords(self,value): 
    self.set_local_coords(value)
  @property
  def normal_map(self): 
    return self.get_normal_map()
  @normal_map.setter 
  def normal_map(self,value): 
    self.set_normal_map(value)
  @property
  def one_shot(self): 
    return self.get_one_shot()
  @one_shot.setter 
  def one_shot(self,value): 
    self.set_one_shot(value)
  @property
  def preprocess(self): 
    return self.get_preprocess()
  @preprocess.setter 
  def preprocess(self,value): 
    self.set_preprocess(value)
  @property
  def process_material(self): 
    return self.get_process_material()
  @process_material.setter 
  def process_material(self,value): 
    self.set_process_material(value)
  @property
  def randomness(self): 
    return self.get_randomness()
  @randomness.setter 
  def randomness(self,value): 
    self.set_randomness(value)
  @property
  def speed_scale(self): 
    return self.get_speed_scale()
  @speed_scale.setter 
  def speed_scale(self,value): 
    self.set_speed_scale(value)
  @property
  def texture(self): 
    return self.get_texture()
  @texture.setter 
  def texture(self,value): 
    self.set_texture(value)
  @property
  def visibility_rect(self): 
    return self.get_visibility_rect()
  @visibility_rect.setter 
  def visibility_rect(self,value): 
    self.set_visibility_rect(value)

##################################Generated Methods#########################################
  def  capture_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_capture_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  get_amount(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_amount,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_draw_order(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Particles2D_DrawOrder* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_draw_order,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_explosiveness_ratio(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_explosiveness_ratio,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fixed_fps(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_fixed_fps,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fractional_delta(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_fractional_delta,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_lifetime(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_lifetime,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_normal_map(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_normal_map,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_one_shot(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_one_shot,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pre_process_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_pre_process_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_process_material(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_process_material,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_randomness_ratio(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_randomness_ratio,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_speed_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_use_local_coordinates(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_use_local_coordinates,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_visibility_rect(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rect2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_get_visibility_rect,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Rect2.new_static(dereference(ret))

  def  is_emitting(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_particles2d_is_emitting,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  restart(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_particles2d_restart,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_amount(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_draw_order(self,  int order):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &order
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_draw_order,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_emitting(self,  bool emitting):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &emitting
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_emitting,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_explosiveness_ratio(self,  float ratio):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ratio
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_explosiveness_ratio,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fixed_fps(self,  int fps):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &fps
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_fixed_fps,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fractional_delta(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_fractional_delta,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_lifetime(self,  float secs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &secs
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_lifetime,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_normal_map(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_normal_map,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_one_shot(self,  bool secs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &secs
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_one_shot,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pre_process_time(self,  float secs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &secs
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_pre_process_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_material(self,  classes.Material.Material material):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = material.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_process_material,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_randomness_ratio(self,  float ratio):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ratio
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_randomness_ratio,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_speed_scale(self,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_speed_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_texture(self,  classes.Texture.Texture texture):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = texture.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_texture,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_local_coordinates(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_use_local_coordinates,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_visibility_rect(self,  Rect2 visibility_rect):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &visibility_rect._native
    api_core.godot_method_bind_ptrcall(bind_particles2d_set_visibility_rect,self.godot_owner,args,NULL)
    hello('hallo2')
