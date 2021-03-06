from classes.Material cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_particlesmaterial_get_color
cdef godot_method_bind *bind_particlesmaterial_get_color_ramp
cdef godot_method_bind *bind_particlesmaterial_get_direction
cdef godot_method_bind *bind_particlesmaterial_get_emission_box_extents
cdef godot_method_bind *bind_particlesmaterial_get_emission_color_texture
cdef godot_method_bind *bind_particlesmaterial_get_emission_normal_texture
cdef godot_method_bind *bind_particlesmaterial_get_emission_point_count
cdef godot_method_bind *bind_particlesmaterial_get_emission_point_texture
cdef godot_method_bind *bind_particlesmaterial_get_emission_shape
cdef godot_method_bind *bind_particlesmaterial_get_emission_sphere_radius
cdef godot_method_bind *bind_particlesmaterial_get_flag
cdef godot_method_bind *bind_particlesmaterial_get_flatness
cdef godot_method_bind *bind_particlesmaterial_get_gravity
cdef godot_method_bind *bind_particlesmaterial_get_lifetime_randomness
cdef godot_method_bind *bind_particlesmaterial_get_param
cdef godot_method_bind *bind_particlesmaterial_get_param_randomness
cdef godot_method_bind *bind_particlesmaterial_get_param_texture
cdef godot_method_bind *bind_particlesmaterial_get_spread
cdef godot_method_bind *bind_particlesmaterial_get_trail_color_modifier
cdef godot_method_bind *bind_particlesmaterial_get_trail_divisor
cdef godot_method_bind *bind_particlesmaterial_get_trail_size_modifier
cdef godot_method_bind *bind_particlesmaterial_set_color
cdef godot_method_bind *bind_particlesmaterial_set_color_ramp
cdef godot_method_bind *bind_particlesmaterial_set_direction
cdef godot_method_bind *bind_particlesmaterial_set_emission_box_extents
cdef godot_method_bind *bind_particlesmaterial_set_emission_color_texture
cdef godot_method_bind *bind_particlesmaterial_set_emission_normal_texture
cdef godot_method_bind *bind_particlesmaterial_set_emission_point_count
cdef godot_method_bind *bind_particlesmaterial_set_emission_point_texture
cdef godot_method_bind *bind_particlesmaterial_set_emission_shape
cdef godot_method_bind *bind_particlesmaterial_set_emission_sphere_radius
cdef godot_method_bind *bind_particlesmaterial_set_flag
cdef godot_method_bind *bind_particlesmaterial_set_flatness
cdef godot_method_bind *bind_particlesmaterial_set_gravity
cdef godot_method_bind *bind_particlesmaterial_set_lifetime_randomness
cdef godot_method_bind *bind_particlesmaterial_set_param
cdef godot_method_bind *bind_particlesmaterial_set_param_randomness
cdef godot_method_bind *bind_particlesmaterial_set_param_texture
cdef godot_method_bind *bind_particlesmaterial_set_spread
cdef godot_method_bind *bind_particlesmaterial_set_trail_color_modifier
cdef godot_method_bind *bind_particlesmaterial_set_trail_divisor
cdef godot_method_bind *bind_particlesmaterial_set_trail_size_modifier
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_particlesmaterial_get_color = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_color')
  bind_particlesmaterial_get_color_ramp = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_color_ramp')
  bind_particlesmaterial_get_direction = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_direction')
  bind_particlesmaterial_get_emission_box_extents = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_emission_box_extents')
  bind_particlesmaterial_get_emission_color_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_emission_color_texture')
  bind_particlesmaterial_get_emission_normal_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_emission_normal_texture')
  bind_particlesmaterial_get_emission_point_count = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_emission_point_count')
  bind_particlesmaterial_get_emission_point_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_emission_point_texture')
  bind_particlesmaterial_get_emission_shape = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_emission_shape')
  bind_particlesmaterial_get_emission_sphere_radius = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_emission_sphere_radius')
  bind_particlesmaterial_get_flag = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_flag')
  bind_particlesmaterial_get_flatness = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_flatness')
  bind_particlesmaterial_get_gravity = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_gravity')
  bind_particlesmaterial_get_lifetime_randomness = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_lifetime_randomness')
  bind_particlesmaterial_get_param = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_param')
  bind_particlesmaterial_get_param_randomness = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_param_randomness')
  bind_particlesmaterial_get_param_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_param_texture')
  bind_particlesmaterial_get_spread = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_spread')
  bind_particlesmaterial_get_trail_color_modifier = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_trail_color_modifier')
  bind_particlesmaterial_get_trail_divisor = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_trail_divisor')
  bind_particlesmaterial_get_trail_size_modifier = api_core.godot_method_bind_get_method('ParticlesMaterial', 'get_trail_size_modifier')
  bind_particlesmaterial_set_color = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_color')
  bind_particlesmaterial_set_color_ramp = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_color_ramp')
  bind_particlesmaterial_set_direction = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_direction')
  bind_particlesmaterial_set_emission_box_extents = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_emission_box_extents')
  bind_particlesmaterial_set_emission_color_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_emission_color_texture')
  bind_particlesmaterial_set_emission_normal_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_emission_normal_texture')
  bind_particlesmaterial_set_emission_point_count = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_emission_point_count')
  bind_particlesmaterial_set_emission_point_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_emission_point_texture')
  bind_particlesmaterial_set_emission_shape = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_emission_shape')
  bind_particlesmaterial_set_emission_sphere_radius = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_emission_sphere_radius')
  bind_particlesmaterial_set_flag = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_flag')
  bind_particlesmaterial_set_flatness = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_flatness')
  bind_particlesmaterial_set_gravity = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_gravity')
  bind_particlesmaterial_set_lifetime_randomness = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_lifetime_randomness')
  bind_particlesmaterial_set_param = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_param')
  bind_particlesmaterial_set_param_randomness = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_param_randomness')
  bind_particlesmaterial_set_param_texture = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_param_texture')
  bind_particlesmaterial_set_spread = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_spread')
  bind_particlesmaterial_set_trail_color_modifier = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_trail_color_modifier')
  bind_particlesmaterial_set_trail_divisor = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_trail_divisor')
  bind_particlesmaterial_set_trail_size_modifier = api_core.godot_method_bind_get_method('ParticlesMaterial', 'set_trail_size_modifier')

############################Generated class###################################
cdef class ParticlesMaterial(Material):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ParticlesMaterial")())
##################################Generated Properties#########################################
  @property
  def angle(self): 
    return self.get_angle()
  @angle.setter 
  def angle(self,value): 
    self.set_angle(value)
  @property
  def angle_curve(self): 
    return self.get_angle_curve()
  @angle_curve.setter 
  def angle_curve(self,value): 
    self.set_angle_curve(value)
  @property
  def angle_random(self): 
    return self.get_angle_random()
  @angle_random.setter 
  def angle_random(self,value): 
    self.set_angle_random(value)
  @property
  def angular_velocity(self): 
    return self.get_angular_velocity()
  @angular_velocity.setter 
  def angular_velocity(self,value): 
    self.set_angular_velocity(value)
  @property
  def angular_velocity_curve(self): 
    return self.get_angular_velocity_curve()
  @angular_velocity_curve.setter 
  def angular_velocity_curve(self,value): 
    self.set_angular_velocity_curve(value)
  @property
  def angular_velocity_random(self): 
    return self.get_angular_velocity_random()
  @angular_velocity_random.setter 
  def angular_velocity_random(self,value): 
    self.set_angular_velocity_random(value)
  @property
  def anim_offset(self): 
    return self.get_anim_offset()
  @anim_offset.setter 
  def anim_offset(self,value): 
    self.set_anim_offset(value)
  @property
  def anim_offset_curve(self): 
    return self.get_anim_offset_curve()
  @anim_offset_curve.setter 
  def anim_offset_curve(self,value): 
    self.set_anim_offset_curve(value)
  @property
  def anim_offset_random(self): 
    return self.get_anim_offset_random()
  @anim_offset_random.setter 
  def anim_offset_random(self,value): 
    self.set_anim_offset_random(value)
  @property
  def anim_speed(self): 
    return self.get_anim_speed()
  @anim_speed.setter 
  def anim_speed(self,value): 
    self.set_anim_speed(value)
  @property
  def anim_speed_curve(self): 
    return self.get_anim_speed_curve()
  @anim_speed_curve.setter 
  def anim_speed_curve(self,value): 
    self.set_anim_speed_curve(value)
  @property
  def anim_speed_random(self): 
    return self.get_anim_speed_random()
  @anim_speed_random.setter 
  def anim_speed_random(self,value): 
    self.set_anim_speed_random(value)
  @property
  def color(self): 
    return self.get_color()
  @color.setter 
  def color(self,value): 
    self.set_color(value)
  @property
  def color_ramp(self): 
    return self.get_color_ramp()
  @color_ramp.setter 
  def color_ramp(self,value): 
    self.set_color_ramp(value)
  @property
  def damping(self): 
    return self.get_damping()
  @damping.setter 
  def damping(self,value): 
    self.set_damping(value)
  @property
  def damping_curve(self): 
    return self.get_damping_curve()
  @damping_curve.setter 
  def damping_curve(self,value): 
    self.set_damping_curve(value)
  @property
  def damping_random(self): 
    return self.get_damping_random()
  @damping_random.setter 
  def damping_random(self,value): 
    self.set_damping_random(value)
  @property
  def direction(self): 
    return self.get_direction()
  @direction.setter 
  def direction(self,value): 
    self.set_direction(value)
  @property
  def emission_box_extents(self): 
    return self.get_emission_box_extents()
  @emission_box_extents.setter 
  def emission_box_extents(self,value): 
    self.set_emission_box_extents(value)
  @property
  def emission_color_texture(self): 
    return self.get_emission_color_texture()
  @emission_color_texture.setter 
  def emission_color_texture(self,value): 
    self.set_emission_color_texture(value)
  @property
  def emission_normal_texture(self): 
    return self.get_emission_normal_texture()
  @emission_normal_texture.setter 
  def emission_normal_texture(self,value): 
    self.set_emission_normal_texture(value)
  @property
  def emission_point_count(self): 
    return self.get_emission_point_count()
  @emission_point_count.setter 
  def emission_point_count(self,value): 
    self.set_emission_point_count(value)
  @property
  def emission_point_texture(self): 
    return self.get_emission_point_texture()
  @emission_point_texture.setter 
  def emission_point_texture(self,value): 
    self.set_emission_point_texture(value)
  @property
  def emission_shape(self): 
    return self.get_emission_shape()
  @emission_shape.setter 
  def emission_shape(self,value): 
    self.set_emission_shape(value)
  @property
  def emission_sphere_radius(self): 
    return self.get_emission_sphere_radius()
  @emission_sphere_radius.setter 
  def emission_sphere_radius(self,value): 
    self.set_emission_sphere_radius(value)
  @property
  def flag_align_y(self): 
    return self.get_flag_align_y()
  @flag_align_y.setter 
  def flag_align_y(self,value): 
    self.set_flag_align_y(value)
  @property
  def flag_disable_z(self): 
    return self.get_flag_disable_z()
  @flag_disable_z.setter 
  def flag_disable_z(self,value): 
    self.set_flag_disable_z(value)
  @property
  def flag_rotate_y(self): 
    return self.get_flag_rotate_y()
  @flag_rotate_y.setter 
  def flag_rotate_y(self,value): 
    self.set_flag_rotate_y(value)
  @property
  def flatness(self): 
    return self.get_flatness()
  @flatness.setter 
  def flatness(self,value): 
    self.set_flatness(value)
  @property
  def gravity(self): 
    return self.get_gravity()
  @gravity.setter 
  def gravity(self,value): 
    self.set_gravity(value)
  @property
  def hue_variation(self): 
    return self.get_hue_variation()
  @hue_variation.setter 
  def hue_variation(self,value): 
    self.set_hue_variation(value)
  @property
  def hue_variation_curve(self): 
    return self.get_hue_variation_curve()
  @hue_variation_curve.setter 
  def hue_variation_curve(self,value): 
    self.set_hue_variation_curve(value)
  @property
  def hue_variation_random(self): 
    return self.get_hue_variation_random()
  @hue_variation_random.setter 
  def hue_variation_random(self,value): 
    self.set_hue_variation_random(value)
  @property
  def initial_velocity(self): 
    return self.get_initial_velocity()
  @initial_velocity.setter 
  def initial_velocity(self,value): 
    self.set_initial_velocity(value)
  @property
  def initial_velocity_random(self): 
    return self.get_initial_velocity_random()
  @initial_velocity_random.setter 
  def initial_velocity_random(self,value): 
    self.set_initial_velocity_random(value)
  @property
  def lifetime_randomness(self): 
    return self.get_lifetime_randomness()
  @lifetime_randomness.setter 
  def lifetime_randomness(self,value): 
    self.set_lifetime_randomness(value)
  @property
  def linear_accel(self): 
    return self.get_linear_accel()
  @linear_accel.setter 
  def linear_accel(self,value): 
    self.set_linear_accel(value)
  @property
  def linear_accel_curve(self): 
    return self.get_linear_accel_curve()
  @linear_accel_curve.setter 
  def linear_accel_curve(self,value): 
    self.set_linear_accel_curve(value)
  @property
  def linear_accel_random(self): 
    return self.get_linear_accel_random()
  @linear_accel_random.setter 
  def linear_accel_random(self,value): 
    self.set_linear_accel_random(value)
  @property
  def orbit_velocity(self): 
    return self.get_orbit_velocity()
  @orbit_velocity.setter 
  def orbit_velocity(self,value): 
    self.set_orbit_velocity(value)
  @property
  def orbit_velocity_curve(self): 
    return self.get_orbit_velocity_curve()
  @orbit_velocity_curve.setter 
  def orbit_velocity_curve(self,value): 
    self.set_orbit_velocity_curve(value)
  @property
  def orbit_velocity_random(self): 
    return self.get_orbit_velocity_random()
  @orbit_velocity_random.setter 
  def orbit_velocity_random(self,value): 
    self.set_orbit_velocity_random(value)
  @property
  def radial_accel(self): 
    return self.get_radial_accel()
  @radial_accel.setter 
  def radial_accel(self,value): 
    self.set_radial_accel(value)
  @property
  def radial_accel_curve(self): 
    return self.get_radial_accel_curve()
  @radial_accel_curve.setter 
  def radial_accel_curve(self,value): 
    self.set_radial_accel_curve(value)
  @property
  def radial_accel_random(self): 
    return self.get_radial_accel_random()
  @radial_accel_random.setter 
  def radial_accel_random(self,value): 
    self.set_radial_accel_random(value)
  @property
  def scale(self): 
    return self.get_scale()
  @scale.setter 
  def scale(self,value): 
    self.set_scale(value)
  @property
  def scale_curve(self): 
    return self.get_scale_curve()
  @scale_curve.setter 
  def scale_curve(self,value): 
    self.set_scale_curve(value)
  @property
  def scale_random(self): 
    return self.get_scale_random()
  @scale_random.setter 
  def scale_random(self,value): 
    self.set_scale_random(value)
  @property
  def spread(self): 
    return self.get_spread()
  @spread.setter 
  def spread(self,value): 
    self.set_spread(value)
  @property
  def tangential_accel(self): 
    return self.get_tangential_accel()
  @tangential_accel.setter 
  def tangential_accel(self,value): 
    self.set_tangential_accel(value)
  @property
  def tangential_accel_curve(self): 
    return self.get_tangential_accel_curve()
  @tangential_accel_curve.setter 
  def tangential_accel_curve(self,value): 
    self.set_tangential_accel_curve(value)
  @property
  def tangential_accel_random(self): 
    return self.get_tangential_accel_random()
  @tangential_accel_random.setter 
  def tangential_accel_random(self,value): 
    self.set_tangential_accel_random(value)
  @property
  def trail_color_modifier(self): 
    return self.get_trail_color_modifier()
  @trail_color_modifier.setter 
  def trail_color_modifier(self,value): 
    self.set_trail_color_modifier(value)
  @property
  def trail_divisor(self): 
    return self.get_trail_divisor()
  @trail_divisor.setter 
  def trail_divisor(self,value): 
    self.set_trail_divisor(value)
  @property
  def trail_size_modifier(self): 
    return self.get_trail_size_modifier()
  @trail_size_modifier.setter 
  def trail_size_modifier(self,value): 
    self.set_trail_size_modifier(value)

##################################Generated Methods#########################################
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_color,self.godot_owner,[NULL,],&ret)
  def  get_color_ramp(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_color_ramp,self.godot_owner,[NULL,],&ret)
  def  get_direction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_direction,self.godot_owner,[NULL,],&ret)
  def  get_emission_box_extents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_emission_box_extents,self.godot_owner,[NULL,],&ret)
  def  get_emission_color_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_emission_color_texture,self.godot_owner,[NULL,],&ret)
  def  get_emission_normal_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_emission_normal_texture,self.godot_owner,[NULL,],&ret)
  def  get_emission_point_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_emission_point_count,self.godot_owner,[NULL,],&ret)
  def  get_emission_point_texture(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_emission_point_texture,self.godot_owner,[NULL,],&ret)
  def  get_emission_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ParticlesMaterial::EmissionShape ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_emission_shape,self.godot_owner,[NULL,],&ret)
  def  get_emission_sphere_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_emission_sphere_radius,self.godot_owner,[NULL,],&ret)
  def  get_flag(self, flag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_flag,self.godot_owner,[NULL,],&ret)
  def  get_flatness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_flatness,self.godot_owner,[NULL,],&ret)
  def  get_gravity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_gravity,self.godot_owner,[NULL,],&ret)
  def  get_lifetime_randomness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_lifetime_randomness,self.godot_owner,[NULL,],&ret)
  def  get_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_param,self.godot_owner,[NULL,],&ret)
  def  get_param_randomness(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_param_randomness,self.godot_owner,[NULL,],&ret)
  def  get_param_texture(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_param_texture,self.godot_owner,[NULL,],&ret)
  def  get_spread(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_spread,self.godot_owner,[NULL,],&ret)
  def  get_trail_color_modifier(self):
    cdef godot_object *_owner = self.godot_owner
    cdef GradientTexture ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_trail_color_modifier,self.godot_owner,[NULL,],&ret)
  def  get_trail_divisor(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_trail_divisor,self.godot_owner,[NULL,],&ret)
  def  get_trail_size_modifier(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CurveTexture ret
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_get_trail_size_modifier,self.godot_owner,[NULL,],&ret)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_color,self.godot_owner,[NULL,],NULL)
  def  set_color_ramp(self, ramp):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_color_ramp,self.godot_owner,[NULL,],NULL)
  def  set_direction(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_direction,self.godot_owner,[NULL,],NULL)
  def  set_emission_box_extents(self, extents):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_emission_box_extents,self.godot_owner,[NULL,],NULL)
  def  set_emission_color_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_emission_color_texture,self.godot_owner,[NULL,],NULL)
  def  set_emission_normal_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_emission_normal_texture,self.godot_owner,[NULL,],NULL)
  def  set_emission_point_count(self, point_count):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_emission_point_count,self.godot_owner,[NULL,],NULL)
  def  set_emission_point_texture(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_emission_point_texture,self.godot_owner,[NULL,],NULL)
  def  set_emission_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_emission_shape,self.godot_owner,[NULL,],NULL)
  def  set_emission_sphere_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_emission_sphere_radius,self.godot_owner,[NULL,],NULL)
  def  set_flag(self, flagenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_flag,self.godot_owner,[NULL,],NULL)
  def  set_flatness(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_flatness,self.godot_owner,[NULL,],NULL)
  def  set_gravity(self, accel_vec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_gravity,self.godot_owner,[NULL,],NULL)
  def  set_lifetime_randomness(self, randomness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_lifetime_randomness,self.godot_owner,[NULL,],NULL)
  def  set_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_param,self.godot_owner,[NULL,],NULL)
  def  set_param_randomness(self, paramrandomness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_param_randomness,self.godot_owner,[NULL,],NULL)
  def  set_param_texture(self, paramtexture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_param_texture,self.godot_owner,[NULL,],NULL)
  def  set_spread(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_spread,self.godot_owner,[NULL,],NULL)
  def  set_trail_color_modifier(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_trail_color_modifier,self.godot_owner,[NULL,],NULL)
  def  set_trail_divisor(self, divisor):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_trail_divisor,self.godot_owner,[NULL,],NULL)
  def  set_trail_size_modifier(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_particlesmaterial_set_trail_size_modifier,self.godot_owner,[NULL,],NULL)
