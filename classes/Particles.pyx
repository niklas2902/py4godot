from classes.GeometryInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_particles_capture_aabb
cdef godot_method_bind *bind_particles_get_amount
cdef godot_method_bind *bind_particles_get_draw_order
cdef godot_method_bind *bind_particles_get_draw_pass_mesh
cdef godot_method_bind *bind_particles_get_draw_passes
cdef godot_method_bind *bind_particles_get_explosiveness_ratio
cdef godot_method_bind *bind_particles_get_fixed_fps
cdef godot_method_bind *bind_particles_get_fractional_delta
cdef godot_method_bind *bind_particles_get_lifetime
cdef godot_method_bind *bind_particles_get_one_shot
cdef godot_method_bind *bind_particles_get_pre_process_time
cdef godot_method_bind *bind_particles_get_process_material
cdef godot_method_bind *bind_particles_get_randomness_ratio
cdef godot_method_bind *bind_particles_get_speed_scale
cdef godot_method_bind *bind_particles_get_use_local_coordinates
cdef godot_method_bind *bind_particles_get_visibility_aabb
cdef godot_method_bind *bind_particles_is_emitting
cdef godot_method_bind *bind_particles_restart
cdef godot_method_bind *bind_particles_set_amount
cdef godot_method_bind *bind_particles_set_draw_order
cdef godot_method_bind *bind_particles_set_draw_pass_mesh
cdef godot_method_bind *bind_particles_set_draw_passes
cdef godot_method_bind *bind_particles_set_emitting
cdef godot_method_bind *bind_particles_set_explosiveness_ratio
cdef godot_method_bind *bind_particles_set_fixed_fps
cdef godot_method_bind *bind_particles_set_fractional_delta
cdef godot_method_bind *bind_particles_set_lifetime
cdef godot_method_bind *bind_particles_set_one_shot
cdef godot_method_bind *bind_particles_set_pre_process_time
cdef godot_method_bind *bind_particles_set_process_material
cdef godot_method_bind *bind_particles_set_randomness_ratio
cdef godot_method_bind *bind_particles_set_speed_scale
cdef godot_method_bind *bind_particles_set_use_local_coordinates
cdef godot_method_bind *bind_particles_set_visibility_aabb
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_particles_capture_aabb = api_core.godot_method_bind_get_method('Particles', 'capture_aabb')
  bind_particles_get_amount = api_core.godot_method_bind_get_method('Particles', 'get_amount')
  bind_particles_get_draw_order = api_core.godot_method_bind_get_method('Particles', 'get_draw_order')
  bind_particles_get_draw_pass_mesh = api_core.godot_method_bind_get_method('Particles', 'get_draw_pass_mesh')
  bind_particles_get_draw_passes = api_core.godot_method_bind_get_method('Particles', 'get_draw_passes')
  bind_particles_get_explosiveness_ratio = api_core.godot_method_bind_get_method('Particles', 'get_explosiveness_ratio')
  bind_particles_get_fixed_fps = api_core.godot_method_bind_get_method('Particles', 'get_fixed_fps')
  bind_particles_get_fractional_delta = api_core.godot_method_bind_get_method('Particles', 'get_fractional_delta')
  bind_particles_get_lifetime = api_core.godot_method_bind_get_method('Particles', 'get_lifetime')
  bind_particles_get_one_shot = api_core.godot_method_bind_get_method('Particles', 'get_one_shot')
  bind_particles_get_pre_process_time = api_core.godot_method_bind_get_method('Particles', 'get_pre_process_time')
  bind_particles_get_process_material = api_core.godot_method_bind_get_method('Particles', 'get_process_material')
  bind_particles_get_randomness_ratio = api_core.godot_method_bind_get_method('Particles', 'get_randomness_ratio')
  bind_particles_get_speed_scale = api_core.godot_method_bind_get_method('Particles', 'get_speed_scale')
  bind_particles_get_use_local_coordinates = api_core.godot_method_bind_get_method('Particles', 'get_use_local_coordinates')
  bind_particles_get_visibility_aabb = api_core.godot_method_bind_get_method('Particles', 'get_visibility_aabb')
  bind_particles_is_emitting = api_core.godot_method_bind_get_method('Particles', 'is_emitting')
  bind_particles_restart = api_core.godot_method_bind_get_method('Particles', 'restart')
  bind_particles_set_amount = api_core.godot_method_bind_get_method('Particles', 'set_amount')
  bind_particles_set_draw_order = api_core.godot_method_bind_get_method('Particles', 'set_draw_order')
  bind_particles_set_draw_pass_mesh = api_core.godot_method_bind_get_method('Particles', 'set_draw_pass_mesh')
  bind_particles_set_draw_passes = api_core.godot_method_bind_get_method('Particles', 'set_draw_passes')
  bind_particles_set_emitting = api_core.godot_method_bind_get_method('Particles', 'set_emitting')
  bind_particles_set_explosiveness_ratio = api_core.godot_method_bind_get_method('Particles', 'set_explosiveness_ratio')
  bind_particles_set_fixed_fps = api_core.godot_method_bind_get_method('Particles', 'set_fixed_fps')
  bind_particles_set_fractional_delta = api_core.godot_method_bind_get_method('Particles', 'set_fractional_delta')
  bind_particles_set_lifetime = api_core.godot_method_bind_get_method('Particles', 'set_lifetime')
  bind_particles_set_one_shot = api_core.godot_method_bind_get_method('Particles', 'set_one_shot')
  bind_particles_set_pre_process_time = api_core.godot_method_bind_get_method('Particles', 'set_pre_process_time')
  bind_particles_set_process_material = api_core.godot_method_bind_get_method('Particles', 'set_process_material')
  bind_particles_set_randomness_ratio = api_core.godot_method_bind_get_method('Particles', 'set_randomness_ratio')
  bind_particles_set_speed_scale = api_core.godot_method_bind_get_method('Particles', 'set_speed_scale')
  bind_particles_set_use_local_coordinates = api_core.godot_method_bind_get_method('Particles', 'set_use_local_coordinates')
  bind_particles_set_visibility_aabb = api_core.godot_method_bind_get_method('Particles', 'set_visibility_aabb')

############################Generated class###################################
cdef class Particles(GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Particles")())
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
  def draw_pass_1(self): 
    return self.get_draw_pass_1()
  @draw_pass_1.setter 
  def draw_pass_1(self,value): 
    self.set_draw_pass_1(value)
  @property
  def draw_pass_2(self): 
    return self.get_draw_pass_2()
  @draw_pass_2.setter 
  def draw_pass_2(self,value): 
    self.set_draw_pass_2(value)
  @property
  def draw_pass_3(self): 
    return self.get_draw_pass_3()
  @draw_pass_3.setter 
  def draw_pass_3(self,value): 
    self.set_draw_pass_3(value)
  @property
  def draw_pass_4(self): 
    return self.get_draw_pass_4()
  @draw_pass_4.setter 
  def draw_pass_4(self,value): 
    self.set_draw_pass_4(value)
  @property
  def draw_passes(self): 
    return self.get_draw_passes()
  @draw_passes.setter 
  def draw_passes(self,value): 
    self.set_draw_passes(value)
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
  def visibility_aabb(self): 
    return self.get_visibility_aabb()
  @visibility_aabb.setter 
  def visibility_aabb(self,value): 
    self.set_visibility_aabb(value)

##################################Generated Methods#########################################
  def  capture_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_particles_capture_aabb,self.godot_owner,[NULL,],&ret)
  def  get_amount(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_amount,self.godot_owner,[NULL,],&ret)
  def  get_draw_order(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Particles::DrawOrder ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_draw_order,self.godot_owner,[NULL,],&ret)
  def  get_draw_pass_mesh(self, pass_):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_draw_pass_mesh,self.godot_owner,[NULL,],&ret)
  def  get_draw_passes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_draw_passes,self.godot_owner,[NULL,],&ret)
  def  get_explosiveness_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_explosiveness_ratio,self.godot_owner,[NULL,],&ret)
  def  get_fixed_fps(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_fixed_fps,self.godot_owner,[NULL,],&ret)
  def  get_fractional_delta(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_fractional_delta,self.godot_owner,[NULL,],&ret)
  def  get_lifetime(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_lifetime,self.godot_owner,[NULL,],&ret)
  def  get_one_shot(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_one_shot,self.godot_owner,[NULL,],&ret)
  def  get_pre_process_time(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_pre_process_time,self.godot_owner,[NULL,],&ret)
  def  get_process_material(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Material ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_process_material,self.godot_owner,[NULL,],&ret)
  def  get_randomness_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_randomness_ratio,self.godot_owner,[NULL,],&ret)
  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_speed_scale,self.godot_owner,[NULL,],&ret)
  def  get_use_local_coordinates(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_use_local_coordinates,self.godot_owner,[NULL,],&ret)
  def  get_visibility_aabb(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AABB ret
    api_core.godot_method_bind_ptrcall(bind_particles_get_visibility_aabb,self.godot_owner,[NULL,],&ret)
  def  is_emitting(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_particles_is_emitting,self.godot_owner,[NULL,],&ret)
  def  restart(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_restart,self.godot_owner,[NULL,],NULL)
  def  set_amount(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_amount,self.godot_owner,[NULL,],NULL)
  def  set_draw_order(self, order):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_draw_order,self.godot_owner,[NULL,],NULL)
  def  set_draw_pass_mesh(self, pass_, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_draw_pass_mesh,self.godot_owner,[NULL,],NULL)
  def  set_draw_passes(self, passes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_draw_passes,self.godot_owner,[NULL,],NULL)
  def  set_emitting(self, emitting):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_emitting,self.godot_owner,[NULL,],NULL)
  def  set_explosiveness_ratio(self, ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_explosiveness_ratio,self.godot_owner,[NULL,],NULL)
  def  set_fixed_fps(self, fps):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_fixed_fps,self.godot_owner,[NULL,],NULL)
  def  set_fractional_delta(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_fractional_delta,self.godot_owner,[NULL,],NULL)
  def  set_lifetime(self, secs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_lifetime,self.godot_owner,[NULL,],NULL)
  def  set_one_shot(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_one_shot,self.godot_owner,[NULL,],NULL)
  def  set_pre_process_time(self, secs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_pre_process_time,self.godot_owner,[NULL,],NULL)
  def  set_process_material(self, material):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_process_material,self.godot_owner,[NULL,],NULL)
  def  set_randomness_ratio(self, ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_randomness_ratio,self.godot_owner,[NULL,],NULL)
  def  set_speed_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_speed_scale,self.godot_owner,[NULL,],NULL)
  def  set_use_local_coordinates(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_use_local_coordinates,self.godot_owner,[NULL,],NULL)
  def  set_visibility_aabb(self, aabb):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particles_set_visibility_aabb,self.godot_owner,[NULL,],NULL)
