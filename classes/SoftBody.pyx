from classes.MeshInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_softbody__draw_soft_mesh
cdef godot_method_bind *bind_softbody_add_collision_exception_with
cdef godot_method_bind *bind_softbody_get_areaAngular_stiffness
cdef godot_method_bind *bind_softbody_get_collision_exceptions
cdef godot_method_bind *bind_softbody_get_collision_layer
cdef godot_method_bind *bind_softbody_get_collision_layer_bit
cdef godot_method_bind *bind_softbody_get_collision_mask
cdef godot_method_bind *bind_softbody_get_collision_mask_bit
cdef godot_method_bind *bind_softbody_get_damping_coefficient
cdef godot_method_bind *bind_softbody_get_drag_coefficient
cdef godot_method_bind *bind_softbody_get_linear_stiffness
cdef godot_method_bind *bind_softbody_get_parent_collision_ignore
cdef godot_method_bind *bind_softbody_get_pose_matching_coefficient
cdef godot_method_bind *bind_softbody_get_pressure_coefficient
cdef godot_method_bind *bind_softbody_get_simulation_precision
cdef godot_method_bind *bind_softbody_get_total_mass
cdef godot_method_bind *bind_softbody_get_volume_stiffness
cdef godot_method_bind *bind_softbody_is_ray_pickable
cdef godot_method_bind *bind_softbody_remove_collision_exception_with
cdef godot_method_bind *bind_softbody_set_areaAngular_stiffness
cdef godot_method_bind *bind_softbody_set_collision_layer
cdef godot_method_bind *bind_softbody_set_collision_layer_bit
cdef godot_method_bind *bind_softbody_set_collision_mask
cdef godot_method_bind *bind_softbody_set_collision_mask_bit
cdef godot_method_bind *bind_softbody_set_damping_coefficient
cdef godot_method_bind *bind_softbody_set_drag_coefficient
cdef godot_method_bind *bind_softbody_set_linear_stiffness
cdef godot_method_bind *bind_softbody_set_parent_collision_ignore
cdef godot_method_bind *bind_softbody_set_pose_matching_coefficient
cdef godot_method_bind *bind_softbody_set_pressure_coefficient
cdef godot_method_bind *bind_softbody_set_ray_pickable
cdef godot_method_bind *bind_softbody_set_simulation_precision
cdef godot_method_bind *bind_softbody_set_total_mass
cdef godot_method_bind *bind_softbody_set_volume_stiffness
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_softbody__draw_soft_mesh = api_core.godot_method_bind_get_method('SoftBody', '_draw_soft_mesh')
  bind_softbody_add_collision_exception_with = api_core.godot_method_bind_get_method('SoftBody', 'add_collision_exception_with')
  bind_softbody_get_areaAngular_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'get_areaAngular_stiffness')
  bind_softbody_get_collision_exceptions = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_exceptions')
  bind_softbody_get_collision_layer = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_layer')
  bind_softbody_get_collision_layer_bit = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_layer_bit')
  bind_softbody_get_collision_mask = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_mask')
  bind_softbody_get_collision_mask_bit = api_core.godot_method_bind_get_method('SoftBody', 'get_collision_mask_bit')
  bind_softbody_get_damping_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_damping_coefficient')
  bind_softbody_get_drag_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_drag_coefficient')
  bind_softbody_get_linear_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'get_linear_stiffness')
  bind_softbody_get_parent_collision_ignore = api_core.godot_method_bind_get_method('SoftBody', 'get_parent_collision_ignore')
  bind_softbody_get_pose_matching_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_pose_matching_coefficient')
  bind_softbody_get_pressure_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'get_pressure_coefficient')
  bind_softbody_get_simulation_precision = api_core.godot_method_bind_get_method('SoftBody', 'get_simulation_precision')
  bind_softbody_get_total_mass = api_core.godot_method_bind_get_method('SoftBody', 'get_total_mass')
  bind_softbody_get_volume_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'get_volume_stiffness')
  bind_softbody_is_ray_pickable = api_core.godot_method_bind_get_method('SoftBody', 'is_ray_pickable')
  bind_softbody_remove_collision_exception_with = api_core.godot_method_bind_get_method('SoftBody', 'remove_collision_exception_with')
  bind_softbody_set_areaAngular_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'set_areaAngular_stiffness')
  bind_softbody_set_collision_layer = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_layer')
  bind_softbody_set_collision_layer_bit = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_layer_bit')
  bind_softbody_set_collision_mask = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_mask')
  bind_softbody_set_collision_mask_bit = api_core.godot_method_bind_get_method('SoftBody', 'set_collision_mask_bit')
  bind_softbody_set_damping_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_damping_coefficient')
  bind_softbody_set_drag_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_drag_coefficient')
  bind_softbody_set_linear_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'set_linear_stiffness')
  bind_softbody_set_parent_collision_ignore = api_core.godot_method_bind_get_method('SoftBody', 'set_parent_collision_ignore')
  bind_softbody_set_pose_matching_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_pose_matching_coefficient')
  bind_softbody_set_pressure_coefficient = api_core.godot_method_bind_get_method('SoftBody', 'set_pressure_coefficient')
  bind_softbody_set_ray_pickable = api_core.godot_method_bind_get_method('SoftBody', 'set_ray_pickable')
  bind_softbody_set_simulation_precision = api_core.godot_method_bind_get_method('SoftBody', 'set_simulation_precision')
  bind_softbody_set_total_mass = api_core.godot_method_bind_get_method('SoftBody', 'set_total_mass')
  bind_softbody_set_volume_stiffness = api_core.godot_method_bind_get_method('SoftBody', 'set_volume_stiffness')

############################Generated class###################################
cdef class SoftBody(MeshInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SoftBody")())
##################################Generated Properties#########################################
  @property
  def areaAngular_stiffness(self): 
    return self.get_areaAngular_stiffness()
  @areaAngular_stiffness.setter 
  def areaAngular_stiffness(self,value): 
    self.set_areaAngular_stiffness(value)
  @property
  def collision_layer(self): 
    return self.get_collision_layer()
  @collision_layer.setter 
  def collision_layer(self,value): 
    self.set_collision_layer(value)
  @property
  def collision_mask(self): 
    return self.get_collision_mask()
  @collision_mask.setter 
  def collision_mask(self,value): 
    self.set_collision_mask(value)
  @property
  def damping_coefficient(self): 
    return self.get_damping_coefficient()
  @damping_coefficient.setter 
  def damping_coefficient(self,value): 
    self.set_damping_coefficient(value)
  @property
  def drag_coefficient(self): 
    return self.get_drag_coefficient()
  @drag_coefficient.setter 
  def drag_coefficient(self,value): 
    self.set_drag_coefficient(value)
  @property
  def linear_stiffness(self): 
    return self.get_linear_stiffness()
  @linear_stiffness.setter 
  def linear_stiffness(self,value): 
    self.set_linear_stiffness(value)
  @property
  def parent_collision_ignore(self): 
    return self.get_parent_collision_ignore()
  @parent_collision_ignore.setter 
  def parent_collision_ignore(self,value): 
    self.set_parent_collision_ignore(value)
  @property
  def pose_matching_coefficient(self): 
    return self.get_pose_matching_coefficient()
  @pose_matching_coefficient.setter 
  def pose_matching_coefficient(self,value): 
    self.set_pose_matching_coefficient(value)
  @property
  def pressure_coefficient(self): 
    return self.get_pressure_coefficient()
  @pressure_coefficient.setter 
  def pressure_coefficient(self,value): 
    self.set_pressure_coefficient(value)
  @property
  def ray_pickable(self): 
    return self.get_ray_pickable()
  @ray_pickable.setter 
  def ray_pickable(self,value): 
    self.set_ray_pickable(value)
  @property
  def simulation_precision(self): 
    return self.get_simulation_precision()
  @simulation_precision.setter 
  def simulation_precision(self,value): 
    self.set_simulation_precision(value)
  @property
  def total_mass(self): 
    return self.get_total_mass()
  @total_mass.setter 
  def total_mass(self,value): 
    self.set_total_mass(value)
  @property
  def volume_stiffness(self): 
    return self.get_volume_stiffness()
  @volume_stiffness.setter 
  def volume_stiffness(self,value): 
    self.set_volume_stiffness(value)

##################################Generated Methods#########################################
  def  _draw_soft_mesh(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody__draw_soft_mesh,self.godot_owner,[NULL,],NULL)
  def  add_collision_exception_with(self, body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_add_collision_exception_with,self.godot_owner,[NULL,],NULL)
  def  get_areaAngular_stiffness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_areaAngular_stiffness,self.godot_owner,[NULL,],&ret)
  def  get_collision_exceptions(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_exceptions,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_layer,self.godot_owner,[NULL,],&ret)
  def  get_collision_layer_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_layer_bit,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_mask,self.godot_owner,[NULL,],&ret)
  def  get_collision_mask_bit(self, bit):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_collision_mask_bit,self.godot_owner,[NULL,],&ret)
  def  get_damping_coefficient(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_damping_coefficient,self.godot_owner,[NULL,],&ret)
  def  get_drag_coefficient(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_drag_coefficient,self.godot_owner,[NULL,],&ret)
  def  get_linear_stiffness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_linear_stiffness,self.godot_owner,[NULL,],&ret)
  def  get_parent_collision_ignore(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_parent_collision_ignore,self.godot_owner,[NULL,],&ret)
  def  get_pose_matching_coefficient(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_pose_matching_coefficient,self.godot_owner,[NULL,],&ret)
  def  get_pressure_coefficient(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_pressure_coefficient,self.godot_owner,[NULL,],&ret)
  def  get_simulation_precision(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_simulation_precision,self.godot_owner,[NULL,],&ret)
  def  get_total_mass(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_total_mass,self.godot_owner,[NULL,],&ret)
  def  get_volume_stiffness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_softbody_get_volume_stiffness,self.godot_owner,[NULL,],&ret)
  def  is_ray_pickable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_softbody_is_ray_pickable,self.godot_owner,[NULL,],&ret)
  def  remove_collision_exception_with(self, body):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_remove_collision_exception_with,self.godot_owner,[NULL,],NULL)
  def  set_areaAngular_stiffness(self, areaAngular_stiffness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_areaAngular_stiffness,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer(self, collision_layer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_layer,self.godot_owner,[NULL,],NULL)
  def  set_collision_layer_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_layer_bit,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask(self, collision_mask):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_mask,self.godot_owner,[NULL,],NULL)
  def  set_collision_mask_bit(self, bitvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_collision_mask_bit,self.godot_owner,[NULL,],NULL)
  def  set_damping_coefficient(self, damping_coefficient):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_damping_coefficient,self.godot_owner,[NULL,],NULL)
  def  set_drag_coefficient(self, drag_coefficient):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_drag_coefficient,self.godot_owner,[NULL,],NULL)
  def  set_linear_stiffness(self, linear_stiffness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_linear_stiffness,self.godot_owner,[NULL,],NULL)
  def  set_parent_collision_ignore(self, parent_collision_ignore):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_parent_collision_ignore,self.godot_owner,[NULL,],NULL)
  def  set_pose_matching_coefficient(self, pose_matching_coefficient):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_pose_matching_coefficient,self.godot_owner,[NULL,],NULL)
  def  set_pressure_coefficient(self, pressure_coefficient):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_pressure_coefficient,self.godot_owner,[NULL,],NULL)
  def  set_ray_pickable(self, ray_pickable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_ray_pickable,self.godot_owner,[NULL,],NULL)
  def  set_simulation_precision(self, simulation_precision):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_simulation_precision,self.godot_owner,[NULL,],NULL)
  def  set_total_mass(self, mass):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_total_mass,self.godot_owner,[NULL,],NULL)
  def  set_volume_stiffness(self, volume_stiffness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_softbody_set_volume_stiffness,self.godot_owner,[NULL,],NULL)
