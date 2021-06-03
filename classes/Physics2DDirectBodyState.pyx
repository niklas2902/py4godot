
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
cimport classes.Object 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_physics2ddirectbodystate_add_central_force
cdef godot_method_bind *bind_physics2ddirectbodystate_add_force
cdef godot_method_bind *bind_physics2ddirectbodystate_add_torque
cdef godot_method_bind *bind_physics2ddirectbodystate_apply_central_impulse
cdef godot_method_bind *bind_physics2ddirectbodystate_apply_impulse
cdef godot_method_bind *bind_physics2ddirectbodystate_apply_torque_impulse
cdef godot_method_bind *bind_physics2ddirectbodystate_get_angular_velocity
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_collider
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_collider_id
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_collider_object
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_collider_position
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_collider_shape
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_collider_shape_metadata
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_collider_velocity_at_position
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_count
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_local_normal
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_local_position
cdef godot_method_bind *bind_physics2ddirectbodystate_get_contact_local_shape
cdef godot_method_bind *bind_physics2ddirectbodystate_get_inverse_inertia
cdef godot_method_bind *bind_physics2ddirectbodystate_get_inverse_mass
cdef godot_method_bind *bind_physics2ddirectbodystate_get_linear_velocity
cdef godot_method_bind *bind_physics2ddirectbodystate_get_space_state
cdef godot_method_bind *bind_physics2ddirectbodystate_get_step
cdef godot_method_bind *bind_physics2ddirectbodystate_get_total_angular_damp
cdef godot_method_bind *bind_physics2ddirectbodystate_get_total_gravity
cdef godot_method_bind *bind_physics2ddirectbodystate_get_total_linear_damp
cdef godot_method_bind *bind_physics2ddirectbodystate_get_transform
cdef godot_method_bind *bind_physics2ddirectbodystate_integrate_forces
cdef godot_method_bind *bind_physics2ddirectbodystate_is_sleeping
cdef godot_method_bind *bind_physics2ddirectbodystate_set_angular_velocity
cdef godot_method_bind *bind_physics2ddirectbodystate_set_linear_velocity
cdef godot_method_bind *bind_physics2ddirectbodystate_set_sleep_state
cdef godot_method_bind *bind_physics2ddirectbodystate_set_transform
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_physics2ddirectbodystate_add_central_force = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'add_central_force')
  bind_physics2ddirectbodystate_add_force = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'add_force')
  bind_physics2ddirectbodystate_add_torque = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'add_torque')
  bind_physics2ddirectbodystate_apply_central_impulse = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'apply_central_impulse')
  bind_physics2ddirectbodystate_apply_impulse = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'apply_impulse')
  bind_physics2ddirectbodystate_apply_torque_impulse = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'apply_torque_impulse')
  bind_physics2ddirectbodystate_get_angular_velocity = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_angular_velocity')
  bind_physics2ddirectbodystate_get_contact_collider = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_collider')
  bind_physics2ddirectbodystate_get_contact_collider_id = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_collider_id')
  bind_physics2ddirectbodystate_get_contact_collider_object = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_collider_object')
  bind_physics2ddirectbodystate_get_contact_collider_position = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_collider_position')
  bind_physics2ddirectbodystate_get_contact_collider_shape = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_collider_shape')
  bind_physics2ddirectbodystate_get_contact_collider_shape_metadata = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_collider_shape_metadata')
  bind_physics2ddirectbodystate_get_contact_collider_velocity_at_position = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_collider_velocity_at_position')
  bind_physics2ddirectbodystate_get_contact_count = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_count')
  bind_physics2ddirectbodystate_get_contact_local_normal = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_local_normal')
  bind_physics2ddirectbodystate_get_contact_local_position = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_local_position')
  bind_physics2ddirectbodystate_get_contact_local_shape = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_contact_local_shape')
  bind_physics2ddirectbodystate_get_inverse_inertia = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_inverse_inertia')
  bind_physics2ddirectbodystate_get_inverse_mass = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_inverse_mass')
  bind_physics2ddirectbodystate_get_linear_velocity = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_linear_velocity')
  bind_physics2ddirectbodystate_get_space_state = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_space_state')
  bind_physics2ddirectbodystate_get_step = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_step')
  bind_physics2ddirectbodystate_get_total_angular_damp = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_total_angular_damp')
  bind_physics2ddirectbodystate_get_total_gravity = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_total_gravity')
  bind_physics2ddirectbodystate_get_total_linear_damp = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_total_linear_damp')
  bind_physics2ddirectbodystate_get_transform = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'get_transform')
  bind_physics2ddirectbodystate_integrate_forces = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'integrate_forces')
  bind_physics2ddirectbodystate_is_sleeping = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'is_sleeping')
  bind_physics2ddirectbodystate_set_angular_velocity = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'set_angular_velocity')
  bind_physics2ddirectbodystate_set_linear_velocity = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'set_linear_velocity')
  bind_physics2ddirectbodystate_set_sleep_state = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'set_sleep_state')
  bind_physics2ddirectbodystate_set_transform = api_core.godot_method_bind_get_method('Physics2DDirectBodyState', 'set_transform')

############################Generated class###################################
cdef class Physics2DDirectBodyState(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Physics2DDirectBodyState")())
##################################Generated Properties#########################################
  @property
  def angular_velocity(self): 
    return self.get_angular_velocity()
  @angular_velocity.setter 
  def angular_velocity(self,value): 
    self.set_angular_velocity(value)
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
  def  add_central_force(self,  Vector2 force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &force._native
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_add_central_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_force(self,  Vector2 offset,  Vector2 force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &offset._native
    args[1] = &force._native
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_add_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_torque(self,  float torque):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &torque
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_add_torque,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply_central_impulse(self,  Vector2 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_apply_central_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply_impulse(self,  Vector2 offset,  Vector2 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &offset._native
    args[1] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_apply_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply_torque_impulse(self,  float impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &impulse
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_apply_torque_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_angular_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_angular_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_contact_collider(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_rid* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_collider,self.godot_owner,args,&ret)
    hello('hallo2')
    return RID.new_static(dereference(ret))

  def  get_contact_collider_id(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_collider_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_contact_collider_object(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_collider_object,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_contact_collider_position(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_collider_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_contact_collider_shape(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_collider_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_contact_collider_shape_metadata(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_collider_shape_metadata,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_contact_collider_velocity_at_position(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_collider_velocity_at_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_contact_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_contact_local_normal(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_local_normal,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_contact_local_position(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_local_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_contact_local_shape(self,  int contact_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &contact_idx
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_contact_local_shape,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_inverse_inertia(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_inverse_inertia,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_inverse_mass(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_inverse_mass,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_linear_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_linear_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_space_state(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_space_state,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_step(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_step,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_total_angular_damp(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_total_angular_damp,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_total_gravity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_total_gravity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_total_linear_damp(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_total_linear_damp,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform2d* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_get_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform2D.new_static(dereference(ret))

  def  integrate_forces(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_integrate_forces,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  is_sleeping(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_is_sleeping,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_angular_velocity(self,  float velocity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &velocity
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_set_angular_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_linear_velocity(self,  Vector2 velocity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &velocity._native
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_set_linear_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sleep_state(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_set_sleep_state,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transform(self,  Transform2D transform):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &transform._native
    api_core.godot_method_bind_ptrcall(bind_physics2ddirectbodystate_set_transform,self.godot_owner,args,NULL)
    hello('hallo2')
