from classes.GeometryInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_cpuparticles__update_render_thread
cdef godot_method_bind *bind_cpuparticles_convert_from_particles
cdef godot_method_bind *bind_cpuparticles_get_amount
cdef godot_method_bind *bind_cpuparticles_get_color
cdef godot_method_bind *bind_cpuparticles_get_color_ramp
cdef godot_method_bind *bind_cpuparticles_get_direction
cdef godot_method_bind *bind_cpuparticles_get_draw_order
cdef godot_method_bind *bind_cpuparticles_get_emission_box_extents
cdef godot_method_bind *bind_cpuparticles_get_emission_colors
cdef godot_method_bind *bind_cpuparticles_get_emission_normals
cdef godot_method_bind *bind_cpuparticles_get_emission_points
cdef godot_method_bind *bind_cpuparticles_get_emission_shape
cdef godot_method_bind *bind_cpuparticles_get_emission_sphere_radius
cdef godot_method_bind *bind_cpuparticles_get_explosiveness_ratio
cdef godot_method_bind *bind_cpuparticles_get_fixed_fps
cdef godot_method_bind *bind_cpuparticles_get_flatness
cdef godot_method_bind *bind_cpuparticles_get_fractional_delta
cdef godot_method_bind *bind_cpuparticles_get_gravity
cdef godot_method_bind *bind_cpuparticles_get_lifetime
cdef godot_method_bind *bind_cpuparticles_get_lifetime_randomness
cdef godot_method_bind *bind_cpuparticles_get_mesh
cdef godot_method_bind *bind_cpuparticles_get_one_shot
cdef godot_method_bind *bind_cpuparticles_get_param
cdef godot_method_bind *bind_cpuparticles_get_param_curve
cdef godot_method_bind *bind_cpuparticles_get_param_randomness
cdef godot_method_bind *bind_cpuparticles_get_particle_flag
cdef godot_method_bind *bind_cpuparticles_get_pre_process_time
cdef godot_method_bind *bind_cpuparticles_get_randomness_ratio
cdef godot_method_bind *bind_cpuparticles_get_speed_scale
cdef godot_method_bind *bind_cpuparticles_get_spread
cdef godot_method_bind *bind_cpuparticles_get_use_local_coordinates
cdef godot_method_bind *bind_cpuparticles_is_emitting
cdef godot_method_bind *bind_cpuparticles_restart
cdef godot_method_bind *bind_cpuparticles_set_amount
cdef godot_method_bind *bind_cpuparticles_set_color
cdef godot_method_bind *bind_cpuparticles_set_color_ramp
cdef godot_method_bind *bind_cpuparticles_set_direction
cdef godot_method_bind *bind_cpuparticles_set_draw_order
cdef godot_method_bind *bind_cpuparticles_set_emission_box_extents
cdef godot_method_bind *bind_cpuparticles_set_emission_colors
cdef godot_method_bind *bind_cpuparticles_set_emission_normals
cdef godot_method_bind *bind_cpuparticles_set_emission_points
cdef godot_method_bind *bind_cpuparticles_set_emission_shape
cdef godot_method_bind *bind_cpuparticles_set_emission_sphere_radius
cdef godot_method_bind *bind_cpuparticles_set_emitting
cdef godot_method_bind *bind_cpuparticles_set_explosiveness_ratio
cdef godot_method_bind *bind_cpuparticles_set_fixed_fps
cdef godot_method_bind *bind_cpuparticles_set_flatness
cdef godot_method_bind *bind_cpuparticles_set_fractional_delta
cdef godot_method_bind *bind_cpuparticles_set_gravity
cdef godot_method_bind *bind_cpuparticles_set_lifetime
cdef godot_method_bind *bind_cpuparticles_set_lifetime_randomness
cdef godot_method_bind *bind_cpuparticles_set_mesh
cdef godot_method_bind *bind_cpuparticles_set_one_shot
cdef godot_method_bind *bind_cpuparticles_set_param
cdef godot_method_bind *bind_cpuparticles_set_param_curve
cdef godot_method_bind *bind_cpuparticles_set_param_randomness
cdef godot_method_bind *bind_cpuparticles_set_particle_flag
cdef godot_method_bind *bind_cpuparticles_set_pre_process_time
cdef godot_method_bind *bind_cpuparticles_set_randomness_ratio
cdef godot_method_bind *bind_cpuparticles_set_speed_scale
cdef godot_method_bind *bind_cpuparticles_set_spread
cdef godot_method_bind *bind_cpuparticles_set_use_local_coordinates
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_cpuparticles__update_render_thread = api_core.godot_method_bind_get_method('CPUParticles', '_update_render_thread')
  bind_cpuparticles_convert_from_particles = api_core.godot_method_bind_get_method('CPUParticles', 'convert_from_particles')
  bind_cpuparticles_get_amount = api_core.godot_method_bind_get_method('CPUParticles', 'get_amount')
  bind_cpuparticles_get_color = api_core.godot_method_bind_get_method('CPUParticles', 'get_color')
  bind_cpuparticles_get_color_ramp = api_core.godot_method_bind_get_method('CPUParticles', 'get_color_ramp')
  bind_cpuparticles_get_direction = api_core.godot_method_bind_get_method('CPUParticles', 'get_direction')
  bind_cpuparticles_get_draw_order = api_core.godot_method_bind_get_method('CPUParticles', 'get_draw_order')
  bind_cpuparticles_get_emission_box_extents = api_core.godot_method_bind_get_method('CPUParticles', 'get_emission_box_extents')
  bind_cpuparticles_get_emission_colors = api_core.godot_method_bind_get_method('CPUParticles', 'get_emission_colors')
  bind_cpuparticles_get_emission_normals = api_core.godot_method_bind_get_method('CPUParticles', 'get_emission_normals')
  bind_cpuparticles_get_emission_points = api_core.godot_method_bind_get_method('CPUParticles', 'get_emission_points')
  bind_cpuparticles_get_emission_shape = api_core.godot_method_bind_get_method('CPUParticles', 'get_emission_shape')
  bind_cpuparticles_get_emission_sphere_radius = api_core.godot_method_bind_get_method('CPUParticles', 'get_emission_sphere_radius')
  bind_cpuparticles_get_explosiveness_ratio = api_core.godot_method_bind_get_method('CPUParticles', 'get_explosiveness_ratio')
  bind_cpuparticles_get_fixed_fps = api_core.godot_method_bind_get_method('CPUParticles', 'get_fixed_fps')
  bind_cpuparticles_get_flatness = api_core.godot_method_bind_get_method('CPUParticles', 'get_flatness')
  bind_cpuparticles_get_fractional_delta = api_core.godot_method_bind_get_method('CPUParticles', 'get_fractional_delta')
  bind_cpuparticles_get_gravity = api_core.godot_method_bind_get_method('CPUParticles', 'get_gravity')
  bind_cpuparticles_get_lifetime = api_core.godot_method_bind_get_method('CPUParticles', 'get_lifetime')
  bind_cpuparticles_get_lifetime_randomness = api_core.godot_method_bind_get_method('CPUParticles', 'get_lifetime_randomness')
  bind_cpuparticles_get_mesh = api_core.godot_method_bind_get_method('CPUParticles', 'get_mesh')
  bind_cpuparticles_get_one_shot = api_core.godot_method_bind_get_method('CPUParticles', 'get_one_shot')
  bind_cpuparticles_get_param = api_core.godot_method_bind_get_method('CPUParticles', 'get_param')
  bind_cpuparticles_get_param_curve = api_core.godot_method_bind_get_method('CPUParticles', 'get_param_curve')
  bind_cpuparticles_get_param_randomness = api_core.godot_method_bind_get_method('CPUParticles', 'get_param_randomness')
  bind_cpuparticles_get_particle_flag = api_core.godot_method_bind_get_method('CPUParticles', 'get_particle_flag')
  bind_cpuparticles_get_pre_process_time = api_core.godot_method_bind_get_method('CPUParticles', 'get_pre_process_time')
  bind_cpuparticles_get_randomness_ratio = api_core.godot_method_bind_get_method('CPUParticles', 'get_randomness_ratio')
  bind_cpuparticles_get_speed_scale = api_core.godot_method_bind_get_method('CPUParticles', 'get_speed_scale')
  bind_cpuparticles_get_spread = api_core.godot_method_bind_get_method('CPUParticles', 'get_spread')
  bind_cpuparticles_get_use_local_coordinates = api_core.godot_method_bind_get_method('CPUParticles', 'get_use_local_coordinates')
  bind_cpuparticles_is_emitting = api_core.godot_method_bind_get_method('CPUParticles', 'is_emitting')
  bind_cpuparticles_restart = api_core.godot_method_bind_get_method('CPUParticles', 'restart')
  bind_cpuparticles_set_amount = api_core.godot_method_bind_get_method('CPUParticles', 'set_amount')
  bind_cpuparticles_set_color = api_core.godot_method_bind_get_method('CPUParticles', 'set_color')
  bind_cpuparticles_set_color_ramp = api_core.godot_method_bind_get_method('CPUParticles', 'set_color_ramp')
  bind_cpuparticles_set_direction = api_core.godot_method_bind_get_method('CPUParticles', 'set_direction')
  bind_cpuparticles_set_draw_order = api_core.godot_method_bind_get_method('CPUParticles', 'set_draw_order')
  bind_cpuparticles_set_emission_box_extents = api_core.godot_method_bind_get_method('CPUParticles', 'set_emission_box_extents')
  bind_cpuparticles_set_emission_colors = api_core.godot_method_bind_get_method('CPUParticles', 'set_emission_colors')
  bind_cpuparticles_set_emission_normals = api_core.godot_method_bind_get_method('CPUParticles', 'set_emission_normals')
  bind_cpuparticles_set_emission_points = api_core.godot_method_bind_get_method('CPUParticles', 'set_emission_points')
  bind_cpuparticles_set_emission_shape = api_core.godot_method_bind_get_method('CPUParticles', 'set_emission_shape')
  bind_cpuparticles_set_emission_sphere_radius = api_core.godot_method_bind_get_method('CPUParticles', 'set_emission_sphere_radius')
  bind_cpuparticles_set_emitting = api_core.godot_method_bind_get_method('CPUParticles', 'set_emitting')
  bind_cpuparticles_set_explosiveness_ratio = api_core.godot_method_bind_get_method('CPUParticles', 'set_explosiveness_ratio')
  bind_cpuparticles_set_fixed_fps = api_core.godot_method_bind_get_method('CPUParticles', 'set_fixed_fps')
  bind_cpuparticles_set_flatness = api_core.godot_method_bind_get_method('CPUParticles', 'set_flatness')
  bind_cpuparticles_set_fractional_delta = api_core.godot_method_bind_get_method('CPUParticles', 'set_fractional_delta')
  bind_cpuparticles_set_gravity = api_core.godot_method_bind_get_method('CPUParticles', 'set_gravity')
  bind_cpuparticles_set_lifetime = api_core.godot_method_bind_get_method('CPUParticles', 'set_lifetime')
  bind_cpuparticles_set_lifetime_randomness = api_core.godot_method_bind_get_method('CPUParticles', 'set_lifetime_randomness')
  bind_cpuparticles_set_mesh = api_core.godot_method_bind_get_method('CPUParticles', 'set_mesh')
  bind_cpuparticles_set_one_shot = api_core.godot_method_bind_get_method('CPUParticles', 'set_one_shot')
  bind_cpuparticles_set_param = api_core.godot_method_bind_get_method('CPUParticles', 'set_param')
  bind_cpuparticles_set_param_curve = api_core.godot_method_bind_get_method('CPUParticles', 'set_param_curve')
  bind_cpuparticles_set_param_randomness = api_core.godot_method_bind_get_method('CPUParticles', 'set_param_randomness')
  bind_cpuparticles_set_particle_flag = api_core.godot_method_bind_get_method('CPUParticles', 'set_particle_flag')
  bind_cpuparticles_set_pre_process_time = api_core.godot_method_bind_get_method('CPUParticles', 'set_pre_process_time')
  bind_cpuparticles_set_randomness_ratio = api_core.godot_method_bind_get_method('CPUParticles', 'set_randomness_ratio')
  bind_cpuparticles_set_speed_scale = api_core.godot_method_bind_get_method('CPUParticles', 'set_speed_scale')
  bind_cpuparticles_set_spread = api_core.godot_method_bind_get_method('CPUParticles', 'set_spread')
  bind_cpuparticles_set_use_local_coordinates = api_core.godot_method_bind_get_method('CPUParticles', 'set_use_local_coordinates')

############################Generated class###################################
cdef class CPUParticles(GeometryInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("CPUParticles")())
##################################Generated Properties#########################################
  @property
  def amount(self): 
    return self.get_amount()
  @amount.setter 
  def amount(self,value): 
    self.set_amount(value)
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
  def draw_order(self): 
    return self.get_draw_order()
  @draw_order.setter 
  def draw_order(self,value): 
    self.set_draw_order(value)
  @property
  def emission_box_extents(self): 
    return self.get_emission_box_extents()
  @emission_box_extents.setter 
  def emission_box_extents(self,value): 
    self.set_emission_box_extents(value)
  @property
  def emission_colors(self): 
    return self.get_emission_colors()
  @emission_colors.setter 
  def emission_colors(self,value): 
    self.set_emission_colors(value)
  @property
  def emission_normals(self): 
    return self.get_emission_normals()
  @emission_normals.setter 
  def emission_normals(self,value): 
    self.set_emission_normals(value)
  @property
  def emission_points(self): 
    return self.get_emission_points()
  @emission_points.setter 
  def emission_points(self,value): 
    self.set_emission_points(value)
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
  def fract_delta(self): 
    return self.get_fract_delta()
  @fract_delta.setter 
  def fract_delta(self,value): 
    self.set_fract_delta(value)
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
  def lifetime(self): 
    return self.get_lifetime()
  @lifetime.setter 
  def lifetime(self,value): 
    self.set_lifetime(value)
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
  def local_coords(self): 
    return self.get_local_coords()
  @local_coords.setter 
  def local_coords(self,value): 
    self.set_local_coords(value)
  @property
  def mesh(self): 
    return self.get_mesh()
  @mesh.setter 
  def mesh(self,value): 
    self.set_mesh(value)
  @property
  def one_shot(self): 
    return self.get_one_shot()
  @one_shot.setter 
  def one_shot(self,value): 
    self.set_one_shot(value)
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
  def preprocess(self): 
    return self.get_preprocess()
  @preprocess.setter 
  def preprocess(self,value): 
    self.set_preprocess(value)
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
  def randomness(self): 
    return self.get_randomness()
  @randomness.setter 
  def randomness(self,value): 
    self.set_randomness(value)
  @property
  def scale_amount(self): 
    return self.get_scale_amount()
  @scale_amount.setter 
  def scale_amount(self,value): 
    self.set_scale_amount(value)
  @property
  def scale_amount_curve(self): 
    return self.get_scale_amount_curve()
  @scale_amount_curve.setter 
  def scale_amount_curve(self,value): 
    self.set_scale_amount_curve(value)
  @property
  def scale_amount_random(self): 
    return self.get_scale_amount_random()
  @scale_amount_random.setter 
  def scale_amount_random(self,value): 
    self.set_scale_amount_random(value)
  @property
  def speed_scale(self): 
    return self.get_speed_scale()
  @speed_scale.setter 
  def speed_scale(self,value): 
    self.set_speed_scale(value)
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

##################################Generated Methods#########################################
  def  _update_render_thread(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles__update_render_thread,self.godot_owner,[NULL,],NULL)
  def  convert_from_particles(self, particles):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_convert_from_particles,self.godot_owner,[NULL,],NULL)
  def  get_amount(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_amount,self.godot_owner,[NULL,],&ret)
  def  get_color(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Color ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_color,self.godot_owner,[NULL,],&ret)
  def  get_color_ramp(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Gradient ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_color_ramp,self.godot_owner,[NULL,],&ret)
  def  get_direction(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_direction,self.godot_owner,[NULL,],&ret)
  def  get_draw_order(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CPUParticles::DrawOrder ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_draw_order,self.godot_owner,[NULL,],&ret)
  def  get_emission_box_extents(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_emission_box_extents,self.godot_owner,[NULL,],&ret)
  def  get_emission_colors(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolColorArray ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_emission_colors,self.godot_owner,[NULL,],&ret)
  def  get_emission_normals(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector3Array ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_emission_normals,self.godot_owner,[NULL,],&ret)
  def  get_emission_points(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolVector3Array ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_emission_points,self.godot_owner,[NULL,],&ret)
  def  get_emission_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CPUParticles::EmissionShape ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_emission_shape,self.godot_owner,[NULL,],&ret)
  def  get_emission_sphere_radius(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_emission_sphere_radius,self.godot_owner,[NULL,],&ret)
  def  get_explosiveness_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_explosiveness_ratio,self.godot_owner,[NULL,],&ret)
  def  get_fixed_fps(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_fixed_fps,self.godot_owner,[NULL,],&ret)
  def  get_flatness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_flatness,self.godot_owner,[NULL,],&ret)
  def  get_fractional_delta(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_fractional_delta,self.godot_owner,[NULL,],&ret)
  def  get_gravity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_gravity,self.godot_owner,[NULL,],&ret)
  def  get_lifetime(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_lifetime,self.godot_owner,[NULL,],&ret)
  def  get_lifetime_randomness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_lifetime_randomness,self.godot_owner,[NULL,],&ret)
  def  get_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Mesh ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_mesh,self.godot_owner,[NULL,],&ret)
  def  get_one_shot(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_one_shot,self.godot_owner,[NULL,],&ret)
  def  get_param(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_param,self.godot_owner,[NULL,],&ret)
  def  get_param_curve(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef Curve ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_param_curve,self.godot_owner,[NULL,],&ret)
  def  get_param_randomness(self, param):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_param_randomness,self.godot_owner,[NULL,],&ret)
  def  get_particle_flag(self, flag):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_particle_flag,self.godot_owner,[NULL,],&ret)
  def  get_pre_process_time(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_pre_process_time,self.godot_owner,[NULL,],&ret)
  def  get_randomness_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_randomness_ratio,self.godot_owner,[NULL,],&ret)
  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_speed_scale,self.godot_owner,[NULL,],&ret)
  def  get_spread(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_spread,self.godot_owner,[NULL,],&ret)
  def  get_use_local_coordinates(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_get_use_local_coordinates,self.godot_owner,[NULL,],&ret)
  def  is_emitting(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_is_emitting,self.godot_owner,[NULL,],&ret)
  def  restart(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_restart,self.godot_owner,[NULL,],NULL)
  def  set_amount(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_amount,self.godot_owner,[NULL,],NULL)
  def  set_color(self, color):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_color,self.godot_owner,[NULL,],NULL)
  def  set_color_ramp(self, ramp):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_color_ramp,self.godot_owner,[NULL,],NULL)
  def  set_direction(self, direction):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_direction,self.godot_owner,[NULL,],NULL)
  def  set_draw_order(self, order):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_draw_order,self.godot_owner,[NULL,],NULL)
  def  set_emission_box_extents(self, extents):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_emission_box_extents,self.godot_owner,[NULL,],NULL)
  def  set_emission_colors(self, array):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_emission_colors,self.godot_owner,[NULL,],NULL)
  def  set_emission_normals(self, array):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_emission_normals,self.godot_owner,[NULL,],NULL)
  def  set_emission_points(self, array):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_emission_points,self.godot_owner,[NULL,],NULL)
  def  set_emission_shape(self, shape):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_emission_shape,self.godot_owner,[NULL,],NULL)
  def  set_emission_sphere_radius(self, radius):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_emission_sphere_radius,self.godot_owner,[NULL,],NULL)
  def  set_emitting(self, emitting):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_emitting,self.godot_owner,[NULL,],NULL)
  def  set_explosiveness_ratio(self, ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_explosiveness_ratio,self.godot_owner,[NULL,],NULL)
  def  set_fixed_fps(self, fps):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_fixed_fps,self.godot_owner,[NULL,],NULL)
  def  set_flatness(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_flatness,self.godot_owner,[NULL,],NULL)
  def  set_fractional_delta(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_fractional_delta,self.godot_owner,[NULL,],NULL)
  def  set_gravity(self, accel_vec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_gravity,self.godot_owner,[NULL,],NULL)
  def  set_lifetime(self, secs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_lifetime,self.godot_owner,[NULL,],NULL)
  def  set_lifetime_randomness(self, random):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_lifetime_randomness,self.godot_owner,[NULL,],NULL)
  def  set_mesh(self, mesh):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_mesh,self.godot_owner,[NULL,],NULL)
  def  set_one_shot(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_one_shot,self.godot_owner,[NULL,],NULL)
  def  set_param(self, paramvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_param,self.godot_owner,[NULL,],NULL)
  def  set_param_curve(self, paramcurve):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_param_curve,self.godot_owner,[NULL,],NULL)
  def  set_param_randomness(self, paramrandomness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_param_randomness,self.godot_owner,[NULL,],NULL)
  def  set_particle_flag(self, flagenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_particle_flag,self.godot_owner,[NULL,],NULL)
  def  set_pre_process_time(self, secs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_pre_process_time,self.godot_owner,[NULL,],NULL)
  def  set_randomness_ratio(self, ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_randomness_ratio,self.godot_owner,[NULL,],NULL)
  def  set_speed_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_speed_scale,self.godot_owner,[NULL,],NULL)
  def  set_spread(self, degrees):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_spread,self.godot_owner,[NULL,],NULL)
  def  set_use_local_coordinates(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_cpuparticles_set_use_local_coordinates,self.godot_owner,[NULL,],NULL)
