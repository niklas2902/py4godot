from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physicsdirectbodystate_add_central_force
cdef godot_method_bind *bind_physicsdirectbodystate_add_force
cdef godot_method_bind *bind_physicsdirectbodystate_add_torque
cdef godot_method_bind *bind_physicsdirectbodystate_apply_central_impulse
cdef godot_method_bind *bind_physicsdirectbodystate_apply_impulse
cdef godot_method_bind *bind_physicsdirectbodystate_apply_torque_impulse
cdef godot_method_bind *bind_physicsdirectbodystate_get_angular_velocity
cdef godot_method_bind *bind_physicsdirectbodystate_get_center_of_mass
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_collider
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_collider_id
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_collider_object
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_collider_position
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_collider_shape
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_collider_velocity_at_position
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_count
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_impulse
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_local_normal
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_local_position
cdef godot_method_bind *bind_physicsdirectbodystate_get_contact_local_shape
cdef godot_method_bind *bind_physicsdirectbodystate_get_inverse_inertia
cdef godot_method_bind *bind_physicsdirectbodystate_get_inverse_mass
cdef godot_method_bind *bind_physicsdirectbodystate_get_linear_velocity
cdef godot_method_bind *bind_physicsdirectbodystate_get_principal_inertia_axes
cdef godot_method_bind *bind_physicsdirectbodystate_get_space_state
cdef godot_method_bind *bind_physicsdirectbodystate_get_step
cdef godot_method_bind *bind_physicsdirectbodystate_get_total_angular_damp
cdef godot_method_bind *bind_physicsdirectbodystate_get_total_gravity
cdef godot_method_bind *bind_physicsdirectbodystate_get_total_linear_damp
cdef godot_method_bind *bind_physicsdirectbodystate_get_transform
cdef godot_method_bind *bind_physicsdirectbodystate_integrate_forces
cdef godot_method_bind *bind_physicsdirectbodystate_is_sleeping
cdef godot_method_bind *bind_physicsdirectbodystate_set_angular_velocity
cdef godot_method_bind *bind_physicsdirectbodystate_set_linear_velocity
cdef godot_method_bind *bind_physicsdirectbodystate_set_sleep_state
cdef godot_method_bind *bind_physicsdirectbodystate_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physicsdirectbodystate_add_central_force = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'add_central_force')
  bind_physicsdirectbodystate_add_force = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'add_force')
  bind_physicsdirectbodystate_add_torque = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'add_torque')
  bind_physicsdirectbodystate_apply_central_impulse = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'apply_central_impulse')
  bind_physicsdirectbodystate_apply_impulse = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'apply_impulse')
  bind_physicsdirectbodystate_apply_torque_impulse = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'apply_torque_impulse')
  bind_physicsdirectbodystate_get_angular_velocity = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_angular_velocity')
  bind_physicsdirectbodystate_get_center_of_mass = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_center_of_mass')
  bind_physicsdirectbodystate_get_contact_collider = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_collider')
  bind_physicsdirectbodystate_get_contact_collider_id = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_collider_id')
  bind_physicsdirectbodystate_get_contact_collider_object = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_collider_object')
  bind_physicsdirectbodystate_get_contact_collider_position = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_collider_position')
  bind_physicsdirectbodystate_get_contact_collider_shape = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_collider_shape')
  bind_physicsdirectbodystate_get_contact_collider_velocity_at_position = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_collider_velocity_at_position')
  bind_physicsdirectbodystate_get_contact_count = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_count')
  bind_physicsdirectbodystate_get_contact_impulse = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_impulse')
  bind_physicsdirectbodystate_get_contact_local_normal = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_local_normal')
  bind_physicsdirectbodystate_get_contact_local_position = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_local_position')
  bind_physicsdirectbodystate_get_contact_local_shape = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_contact_local_shape')
  bind_physicsdirectbodystate_get_inverse_inertia = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_inverse_inertia')
  bind_physicsdirectbodystate_get_inverse_mass = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_inverse_mass')
  bind_physicsdirectbodystate_get_linear_velocity = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_linear_velocity')
  bind_physicsdirectbodystate_get_principal_inertia_axes = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_principal_inertia_axes')
  bind_physicsdirectbodystate_get_space_state = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_space_state')
  bind_physicsdirectbodystate_get_step = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_step')
  bind_physicsdirectbodystate_get_total_angular_damp = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_total_angular_damp')
  bind_physicsdirectbodystate_get_total_gravity = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_total_gravity')
  bind_physicsdirectbodystate_get_total_linear_damp = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_total_linear_damp')
  bind_physicsdirectbodystate_get_transform = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'get_transform')
  bind_physicsdirectbodystate_integrate_forces = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'integrate_forces')
  bind_physicsdirectbodystate_is_sleeping = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'is_sleeping')
  bind_physicsdirectbodystate_set_angular_velocity = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'set_angular_velocity')
  bind_physicsdirectbodystate_set_linear_velocity = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'set_linear_velocity')
  bind_physicsdirectbodystate_set_sleep_state = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'set_sleep_state')
  bind_physicsdirectbodystate_set_transform = api_core.godot_method_bind_get_method('PhysicsDirectBodyState', 'set_transform')

############################Generated class###################################
cdef class PhysicsDirectBodyState(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PhysicsDirectBodyState")())
##################################Generated Properties#########################################
  @property
  def angular_velocity(self): 
    return self.get_angular_velocity()
  @angular_velocity.setter 
  def angular_velocity(self,value): 
    self.set_angular_velocity(value)
  @property
  def center_of_mass(self): 
    return self.get_center_of_mass()
  @center_of_mass.setter 
  def center_of_mass(self,value): 
    self.set_center_of_mass(value)
  @property
  def inverse_inertia(self): 
    return self.get_inverse_inertia()
  @inverse_inertia.setter 
  def inverse_inertia(self,value): 
    self.set_inverse_inertia(value)
  @property
  def inverse_mass(self): 
    return self.get_inverse_mass()
  @inverse_mass.setter 
  def inverse_mass(self,value): 
    self.set_inverse_mass(value)
  @property
  def linear_velocity(self): 
    return self.get_linear_velocity()
  @linear_velocity.setter 
  def linear_velocity(self,value): 
    self.set_linear_velocity(value)
  @property
  def principal_inertia_axes(self): 
    return self.get_principal_inertia_axes()
  @principal_inertia_axes.setter 
  def principal_inertia_axes(self,value): 
    self.set_principal_inertia_axes(value)
  @property
  def sleeping(self): 
    return self.get_sleeping()
  @sleeping.setter 
  def sleeping(self,value): 
    self.set_sleeping(value)
  @property
  def step(self): 
    return self.get_step()
  @step.setter 
  def step(self,value): 
    self.set_step(value)
  @property
  def total_angular_damp(self): 
    return self.get_total_angular_damp()
  @total_angular_damp.setter 
  def total_angular_damp(self,value): 
    self.set_total_angular_damp(value)
  @property
  def total_gravity(self): 
    return self.get_total_gravity()
  @total_gravity.setter 
  def total_gravity(self,value): 
    self.set_total_gravity(value)
  @property
  def total_linear_damp(self): 
    return self.get_total_linear_damp()
  @total_linear_damp.setter 
  def total_linear_damp(self,value): 
    self.set_total_linear_damp(value)
  @property
  def transform(self): 
    return self.get_transform()
  @transform.setter 
  def transform(self,value): 
    self.set_transform(value)

##################################Generated Methods#########################################
  def  add_central_force(self, force):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_add_central_force,self.godot_owner,[NULL,],NULL)
  def  add_force(self, forceposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_add_force,self.godot_owner,[NULL,],NULL)
  def  add_torque(self, torque):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_add_torque,self.godot_owner,[NULL,],NULL)
  def  apply_central_impulse(self, j):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_apply_central_impulse,self.godot_owner,[NULL,],NULL)
  def  apply_impulse(self, positionj):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_apply_impulse,self.godot_owner,[NULL,],NULL)
  def  apply_torque_impulse(self, j):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_apply_torque_impulse,self.godot_owner,[NULL,],NULL)
  def  get_angular_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_angular_velocity,self.godot_owner,[NULL,],&ret)
  def  get_center_of_mass(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_center_of_mass,self.godot_owner,[NULL,],&ret)
  def  get_contact_collider(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_collider,self.godot_owner,[NULL,],&ret)
  def  get_contact_collider_id(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_collider_id,self.godot_owner,[NULL,],&ret)
  def  get_contact_collider_object(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_collider_object,self.godot_owner,[NULL,],&ret)
  def  get_contact_collider_position(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_collider_position,self.godot_owner,[NULL,],&ret)
  def  get_contact_collider_shape(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_collider_shape,self.godot_owner,[NULL,],&ret)
  def  get_contact_collider_velocity_at_position(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_collider_velocity_at_position,self.godot_owner,[NULL,],&ret)
  def  get_contact_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_count,self.godot_owner,[NULL,],&ret)
  def  get_contact_impulse(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_impulse,self.godot_owner,[NULL,],&ret)
  def  get_contact_local_normal(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_local_normal,self.godot_owner,[NULL,],&ret)
  def  get_contact_local_position(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_local_position,self.godot_owner,[NULL,],&ret)
  def  get_contact_local_shape(self, contact_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_contact_local_shape,self.godot_owner,[NULL,],&ret)
  def  get_inverse_inertia(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_inverse_inertia,self.godot_owner,[NULL,],&ret)
  def  get_inverse_mass(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_inverse_mass,self.godot_owner,[NULL,],&ret)
  def  get_linear_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_linear_velocity,self.godot_owner,[NULL,],&ret)
  def  get_principal_inertia_axes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Basis ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_principal_inertia_axes,self.godot_owner,[NULL,],&ret)
  def  get_space_state(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsDirectSpaceState ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_space_state,self.godot_owner,[NULL,],&ret)
  def  get_step(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_step,self.godot_owner,[NULL,],&ret)
  def  get_total_angular_damp(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_total_angular_damp,self.godot_owner,[NULL,],&ret)
  def  get_total_gravity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_total_gravity,self.godot_owner,[NULL,],&ret)
  def  get_total_linear_damp(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_total_linear_damp,self.godot_owner,[NULL,],&ret)
  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_get_transform,self.godot_owner,[NULL,],&ret)
  def  integrate_forces(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_integrate_forces,self.godot_owner,[NULL,],NULL)
  def  is_sleeping(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_is_sleeping,self.godot_owner,[NULL,],&ret)
  def  set_angular_velocity(self, velocity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_set_angular_velocity,self.godot_owner,[NULL,],NULL)
  def  set_linear_velocity(self, velocity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_set_linear_velocity,self.godot_owner,[NULL,],NULL)
  def  set_sleep_state(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_set_sleep_state,self.godot_owner,[NULL,],NULL)
  def  set_transform(self, transform):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_physicsdirectbodystate_set_transform,self.godot_owner,[NULL,],NULL)
