
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
cimport classes.PhysicsDirectBodyState
cimport classes.PhysicsMaterial
cimport classes.PhysicsBody 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_rigidbody__body_enter_tree
cdef godot_method_bind *bind_rigidbody__body_exit_tree
cdef godot_method_bind *bind_rigidbody__direct_state_changed
cdef godot_method_bind *bind_rigidbody__integrate_forces
cdef godot_method_bind *bind_rigidbody__reload_physics_characteristics
cdef godot_method_bind *bind_rigidbody_add_central_force
cdef godot_method_bind *bind_rigidbody_add_force
cdef godot_method_bind *bind_rigidbody_add_torque
cdef godot_method_bind *bind_rigidbody_apply_central_impulse
cdef godot_method_bind *bind_rigidbody_apply_impulse
cdef godot_method_bind *bind_rigidbody_apply_torque_impulse
cdef godot_method_bind *bind_rigidbody_get_angular_damp
cdef godot_method_bind *bind_rigidbody_get_angular_velocity
cdef godot_method_bind *bind_rigidbody_get_axis_lock
cdef godot_method_bind *bind_rigidbody_get_bounce
cdef godot_method_bind *bind_rigidbody_get_colliding_bodies
cdef godot_method_bind *bind_rigidbody_get_friction
cdef godot_method_bind *bind_rigidbody_get_gravity_scale
cdef godot_method_bind *bind_rigidbody_get_linear_damp
cdef godot_method_bind *bind_rigidbody_get_linear_velocity
cdef godot_method_bind *bind_rigidbody_get_mass
cdef godot_method_bind *bind_rigidbody_get_max_contacts_reported
cdef godot_method_bind *bind_rigidbody_get_mode
cdef godot_method_bind *bind_rigidbody_get_physics_material_override
cdef godot_method_bind *bind_rigidbody_get_weight
cdef godot_method_bind *bind_rigidbody_is_able_to_sleep
cdef godot_method_bind *bind_rigidbody_is_contact_monitor_enabled
cdef godot_method_bind *bind_rigidbody_is_sleeping
cdef godot_method_bind *bind_rigidbody_is_using_continuous_collision_detection
cdef godot_method_bind *bind_rigidbody_is_using_custom_integrator
cdef godot_method_bind *bind_rigidbody_set_angular_damp
cdef godot_method_bind *bind_rigidbody_set_angular_velocity
cdef godot_method_bind *bind_rigidbody_set_axis_lock
cdef godot_method_bind *bind_rigidbody_set_axis_velocity
cdef godot_method_bind *bind_rigidbody_set_bounce
cdef godot_method_bind *bind_rigidbody_set_can_sleep
cdef godot_method_bind *bind_rigidbody_set_contact_monitor
cdef godot_method_bind *bind_rigidbody_set_friction
cdef godot_method_bind *bind_rigidbody_set_gravity_scale
cdef godot_method_bind *bind_rigidbody_set_linear_damp
cdef godot_method_bind *bind_rigidbody_set_linear_velocity
cdef godot_method_bind *bind_rigidbody_set_mass
cdef godot_method_bind *bind_rigidbody_set_max_contacts_reported
cdef godot_method_bind *bind_rigidbody_set_mode
cdef godot_method_bind *bind_rigidbody_set_physics_material_override
cdef godot_method_bind *bind_rigidbody_set_sleeping
cdef godot_method_bind *bind_rigidbody_set_use_continuous_collision_detection
cdef godot_method_bind *bind_rigidbody_set_use_custom_integrator
cdef godot_method_bind *bind_rigidbody_set_weight
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_rigidbody__body_enter_tree = api_core.godot_method_bind_get_method('RigidBody', '_body_enter_tree')
  bind_rigidbody__body_exit_tree = api_core.godot_method_bind_get_method('RigidBody', '_body_exit_tree')
  bind_rigidbody__direct_state_changed = api_core.godot_method_bind_get_method('RigidBody', '_direct_state_changed')
  bind_rigidbody__integrate_forces = api_core.godot_method_bind_get_method('RigidBody', '_integrate_forces')
  bind_rigidbody__reload_physics_characteristics = api_core.godot_method_bind_get_method('RigidBody', '_reload_physics_characteristics')
  bind_rigidbody_add_central_force = api_core.godot_method_bind_get_method('RigidBody', 'add_central_force')
  bind_rigidbody_add_force = api_core.godot_method_bind_get_method('RigidBody', 'add_force')
  bind_rigidbody_add_torque = api_core.godot_method_bind_get_method('RigidBody', 'add_torque')
  bind_rigidbody_apply_central_impulse = api_core.godot_method_bind_get_method('RigidBody', 'apply_central_impulse')
  bind_rigidbody_apply_impulse = api_core.godot_method_bind_get_method('RigidBody', 'apply_impulse')
  bind_rigidbody_apply_torque_impulse = api_core.godot_method_bind_get_method('RigidBody', 'apply_torque_impulse')
  bind_rigidbody_get_angular_damp = api_core.godot_method_bind_get_method('RigidBody', 'get_angular_damp')
  bind_rigidbody_get_angular_velocity = api_core.godot_method_bind_get_method('RigidBody', 'get_angular_velocity')
  bind_rigidbody_get_axis_lock = api_core.godot_method_bind_get_method('RigidBody', 'get_axis_lock')
  bind_rigidbody_get_bounce = api_core.godot_method_bind_get_method('RigidBody', 'get_bounce')
  bind_rigidbody_get_colliding_bodies = api_core.godot_method_bind_get_method('RigidBody', 'get_colliding_bodies')
  bind_rigidbody_get_friction = api_core.godot_method_bind_get_method('RigidBody', 'get_friction')
  bind_rigidbody_get_gravity_scale = api_core.godot_method_bind_get_method('RigidBody', 'get_gravity_scale')
  bind_rigidbody_get_linear_damp = api_core.godot_method_bind_get_method('RigidBody', 'get_linear_damp')
  bind_rigidbody_get_linear_velocity = api_core.godot_method_bind_get_method('RigidBody', 'get_linear_velocity')
  bind_rigidbody_get_mass = api_core.godot_method_bind_get_method('RigidBody', 'get_mass')
  bind_rigidbody_get_max_contacts_reported = api_core.godot_method_bind_get_method('RigidBody', 'get_max_contacts_reported')
  bind_rigidbody_get_mode = api_core.godot_method_bind_get_method('RigidBody', 'get_mode')
  bind_rigidbody_get_physics_material_override = api_core.godot_method_bind_get_method('RigidBody', 'get_physics_material_override')
  bind_rigidbody_get_weight = api_core.godot_method_bind_get_method('RigidBody', 'get_weight')
  bind_rigidbody_is_able_to_sleep = api_core.godot_method_bind_get_method('RigidBody', 'is_able_to_sleep')
  bind_rigidbody_is_contact_monitor_enabled = api_core.godot_method_bind_get_method('RigidBody', 'is_contact_monitor_enabled')
  bind_rigidbody_is_sleeping = api_core.godot_method_bind_get_method('RigidBody', 'is_sleeping')
  bind_rigidbody_is_using_continuous_collision_detection = api_core.godot_method_bind_get_method('RigidBody', 'is_using_continuous_collision_detection')
  bind_rigidbody_is_using_custom_integrator = api_core.godot_method_bind_get_method('RigidBody', 'is_using_custom_integrator')
  bind_rigidbody_set_angular_damp = api_core.godot_method_bind_get_method('RigidBody', 'set_angular_damp')
  bind_rigidbody_set_angular_velocity = api_core.godot_method_bind_get_method('RigidBody', 'set_angular_velocity')
  bind_rigidbody_set_axis_lock = api_core.godot_method_bind_get_method('RigidBody', 'set_axis_lock')
  bind_rigidbody_set_axis_velocity = api_core.godot_method_bind_get_method('RigidBody', 'set_axis_velocity')
  bind_rigidbody_set_bounce = api_core.godot_method_bind_get_method('RigidBody', 'set_bounce')
  bind_rigidbody_set_can_sleep = api_core.godot_method_bind_get_method('RigidBody', 'set_can_sleep')
  bind_rigidbody_set_contact_monitor = api_core.godot_method_bind_get_method('RigidBody', 'set_contact_monitor')
  bind_rigidbody_set_friction = api_core.godot_method_bind_get_method('RigidBody', 'set_friction')
  bind_rigidbody_set_gravity_scale = api_core.godot_method_bind_get_method('RigidBody', 'set_gravity_scale')
  bind_rigidbody_set_linear_damp = api_core.godot_method_bind_get_method('RigidBody', 'set_linear_damp')
  bind_rigidbody_set_linear_velocity = api_core.godot_method_bind_get_method('RigidBody', 'set_linear_velocity')
  bind_rigidbody_set_mass = api_core.godot_method_bind_get_method('RigidBody', 'set_mass')
  bind_rigidbody_set_max_contacts_reported = api_core.godot_method_bind_get_method('RigidBody', 'set_max_contacts_reported')
  bind_rigidbody_set_mode = api_core.godot_method_bind_get_method('RigidBody', 'set_mode')
  bind_rigidbody_set_physics_material_override = api_core.godot_method_bind_get_method('RigidBody', 'set_physics_material_override')
  bind_rigidbody_set_sleeping = api_core.godot_method_bind_get_method('RigidBody', 'set_sleeping')
  bind_rigidbody_set_use_continuous_collision_detection = api_core.godot_method_bind_get_method('RigidBody', 'set_use_continuous_collision_detection')
  bind_rigidbody_set_use_custom_integrator = api_core.godot_method_bind_get_method('RigidBody', 'set_use_custom_integrator')
  bind_rigidbody_set_weight = api_core.godot_method_bind_get_method('RigidBody', 'set_weight')

############################Generated class###################################
cdef class RigidBody(classes.PhysicsBody.PhysicsBody):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RigidBody")())
##################################Generated Properties#########################################
  @property
  def angular_damp(self): 
    return self.get_angular_damp()
  @angular_damp.setter 
  def angular_damp(self,value): 
    self.set_angular_damp(value)
  @property
  def angular_velocity(self): 
    return self.get_angular_velocity()
  @angular_velocity.setter 
  def angular_velocity(self,value): 
    self.set_angular_velocity(value)
  @property
  def axis_lock_angular_x(self): 
    return self.get_axis_lock_angular_x()
  @axis_lock_angular_x.setter 
  def axis_lock_angular_x(self,value): 
    self.set_axis_lock_angular_x(value)
  @property
  def axis_lock_angular_y(self): 
    return self.get_axis_lock_angular_y()
  @axis_lock_angular_y.setter 
  def axis_lock_angular_y(self,value): 
    self.set_axis_lock_angular_y(value)
  @property
  def axis_lock_angular_z(self): 
    return self.get_axis_lock_angular_z()
  @axis_lock_angular_z.setter 
  def axis_lock_angular_z(self,value): 
    self.set_axis_lock_angular_z(value)
  @property
  def axis_lock_linear_x(self): 
    return self.get_axis_lock_linear_x()
  @axis_lock_linear_x.setter 
  def axis_lock_linear_x(self,value): 
    self.set_axis_lock_linear_x(value)
  @property
  def axis_lock_linear_y(self): 
    return self.get_axis_lock_linear_y()
  @axis_lock_linear_y.setter 
  def axis_lock_linear_y(self,value): 
    self.set_axis_lock_linear_y(value)
  @property
  def axis_lock_linear_z(self): 
    return self.get_axis_lock_linear_z()
  @axis_lock_linear_z.setter 
  def axis_lock_linear_z(self,value): 
    self.set_axis_lock_linear_z(value)
  @property
  def bounce(self): 
    return self.get_bounce()
  @bounce.setter 
  def bounce(self,value): 
    self.set_bounce(value)
  @property
  def can_sleep(self): 
    return self.get_can_sleep()
  @can_sleep.setter 
  def can_sleep(self,value): 
    self.set_can_sleep(value)
  @property
  def contact_monitor(self): 
    return self.get_contact_monitor()
  @contact_monitor.setter 
  def contact_monitor(self,value): 
    self.set_contact_monitor(value)
  @property
  def contacts_reported(self): 
    return self.get_contacts_reported()
  @contacts_reported.setter 
  def contacts_reported(self,value): 
    self.set_contacts_reported(value)
  @property
  def continuous_cd(self): 
    return self.get_continuous_cd()
  @continuous_cd.setter 
  def continuous_cd(self,value): 
    self.set_continuous_cd(value)
  @property
  def custom_integrator(self): 
    return self.get_custom_integrator()
  @custom_integrator.setter 
  def custom_integrator(self,value): 
    self.set_custom_integrator(value)
  @property
  def friction(self): 
    return self.get_friction()
  @friction.setter 
  def friction(self,value): 
    self.set_friction(value)
  @property
  def gravity_scale(self): 
    return self.get_gravity_scale()
  @gravity_scale.setter 
  def gravity_scale(self,value): 
    self.set_gravity_scale(value)
  @property
  def linear_damp(self): 
    return self.get_linear_damp()
  @linear_damp.setter 
  def linear_damp(self,value): 
    self.set_linear_damp(value)
  @property
  def linear_velocity(self): 
    return self.get_linear_velocity()
  @linear_velocity.setter 
  def linear_velocity(self,value): 
    self.set_linear_velocity(value)
  @property
  def mass(self): 
    return self.get_mass()
  @mass.setter 
  def mass(self,value): 
    self.set_mass(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def physics_material_override(self): 
    return self.get_physics_material_override()
  @physics_material_override.setter 
  def physics_material_override(self,value): 
    self.set_physics_material_override(value)
  @property
  def sleeping(self): 
    return self.get_sleeping()
  @sleeping.setter 
  def sleeping(self,value): 
    self.set_sleeping(value)
  @property
  def weight(self): 
    return self.get_weight()
  @weight.setter 
  def weight(self,value): 
    self.set_weight(value)

##################################Generated Methods#########################################
  def  _body_enter_tree(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_rigidbody__body_enter_tree,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _body_exit_tree(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_rigidbody__body_exit_tree,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _direct_state_changed(self,  classes.Object.Object arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_rigidbody__direct_state_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _integrate_forces(self,  classes.PhysicsDirectBodyState.PhysicsDirectBodyState state):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = state.godot_owner
    api_core.godot_method_bind_ptrcall(bind_rigidbody__integrate_forces,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _reload_physics_characteristics(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_rigidbody__reload_physics_characteristics,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_central_force(self,  Vector3 force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &force._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_add_central_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_force(self,  Vector3 force,  Vector3 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &force._native
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_add_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_torque(self,  Vector3 torque):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &torque._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_add_torque,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply_central_impulse(self,  Vector3 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_apply_central_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply_impulse(self,  Vector3 position,  Vector3 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &position._native
    args[1] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_apply_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  apply_torque_impulse(self,  Vector3 impulse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &impulse._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_apply_torque_impulse,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_angular_damp(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_angular_damp,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_angular_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_angular_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_axis_lock(self,  int axis):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &axis
    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_axis_lock,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bounce(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_bounce,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_colliding_bodies(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_colliding_bodies,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_friction(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_friction,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_gravity_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_gravity_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_linear_damp(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_linear_damp,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_linear_velocity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector3* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_linear_velocity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector3.new_static(dereference(ret))

  def  get_mass(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_mass,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_contacts_reported(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_max_contacts_reported,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Mode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_physics_material_override(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_physics_material_override,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_weight(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_get_weight,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_able_to_sleep(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_is_able_to_sleep,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_contact_monitor_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_is_contact_monitor_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_sleeping(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_is_sleeping,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_continuous_collision_detection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_is_using_continuous_collision_detection,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_custom_integrator(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_rigidbody_is_using_custom_integrator,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_angular_damp(self,  float angular_damp):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angular_damp
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_angular_damp,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_angular_velocity(self,  Vector3 angular_velocity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &angular_velocity._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_angular_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_axis_lock(self,  int axis,  bool lock):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &axis
    args[1] = &lock
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_axis_lock,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_axis_velocity(self,  Vector3 axis_velocity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &axis_velocity._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_axis_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bounce(self,  float bounce):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bounce
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_bounce,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_can_sleep(self,  bool able_to_sleep):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &able_to_sleep
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_can_sleep,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_contact_monitor(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_contact_monitor,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_friction(self,  float friction):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &friction
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_friction,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_gravity_scale(self,  float gravity_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &gravity_scale
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_gravity_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_linear_damp(self,  float linear_damp):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &linear_damp
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_linear_damp,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_linear_velocity(self,  Vector3 linear_velocity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &linear_velocity._native
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_linear_velocity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mass(self,  float mass):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mass
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_mass,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_contacts_reported(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_max_contacts_reported,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_physics_material_override(self,  classes.PhysicsMaterial.PhysicsMaterial physics_material_override):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = physics_material_override.godot_owner
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_physics_material_override,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sleeping(self,  bool sleeping):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &sleeping
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_sleeping,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_continuous_collision_detection(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_use_continuous_collision_detection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_custom_integrator(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_use_custom_integrator,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_weight(self,  float weight):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &weight
    api_core.godot_method_bind_ptrcall(bind_rigidbody_set_weight,self.godot_owner,args,NULL)
    hello('hallo2')
