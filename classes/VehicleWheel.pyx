
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
cimport classes.Spatial 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_vehiclewheel_get_brake
cdef godot_method_bind *bind_vehiclewheel_get_damping_compression
cdef godot_method_bind *bind_vehiclewheel_get_damping_relaxation
cdef godot_method_bind *bind_vehiclewheel_get_engine_force
cdef godot_method_bind *bind_vehiclewheel_get_friction_slip
cdef godot_method_bind *bind_vehiclewheel_get_radius
cdef godot_method_bind *bind_vehiclewheel_get_roll_influence
cdef godot_method_bind *bind_vehiclewheel_get_rpm
cdef godot_method_bind *bind_vehiclewheel_get_skidinfo
cdef godot_method_bind *bind_vehiclewheel_get_steering
cdef godot_method_bind *bind_vehiclewheel_get_suspension_max_force
cdef godot_method_bind *bind_vehiclewheel_get_suspension_rest_length
cdef godot_method_bind *bind_vehiclewheel_get_suspension_stiffness
cdef godot_method_bind *bind_vehiclewheel_get_suspension_travel
cdef godot_method_bind *bind_vehiclewheel_is_in_contact
cdef godot_method_bind *bind_vehiclewheel_is_used_as_steering
cdef godot_method_bind *bind_vehiclewheel_is_used_as_traction
cdef godot_method_bind *bind_vehiclewheel_set_brake
cdef godot_method_bind *bind_vehiclewheel_set_damping_compression
cdef godot_method_bind *bind_vehiclewheel_set_damping_relaxation
cdef godot_method_bind *bind_vehiclewheel_set_engine_force
cdef godot_method_bind *bind_vehiclewheel_set_friction_slip
cdef godot_method_bind *bind_vehiclewheel_set_radius
cdef godot_method_bind *bind_vehiclewheel_set_roll_influence
cdef godot_method_bind *bind_vehiclewheel_set_steering
cdef godot_method_bind *bind_vehiclewheel_set_suspension_max_force
cdef godot_method_bind *bind_vehiclewheel_set_suspension_rest_length
cdef godot_method_bind *bind_vehiclewheel_set_suspension_stiffness
cdef godot_method_bind *bind_vehiclewheel_set_suspension_travel
cdef godot_method_bind *bind_vehiclewheel_set_use_as_steering
cdef godot_method_bind *bind_vehiclewheel_set_use_as_traction
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_vehiclewheel_get_brake = api_core.godot_method_bind_get_method('VehicleWheel', 'get_brake')
  bind_vehiclewheel_get_damping_compression = api_core.godot_method_bind_get_method('VehicleWheel', 'get_damping_compression')
  bind_vehiclewheel_get_damping_relaxation = api_core.godot_method_bind_get_method('VehicleWheel', 'get_damping_relaxation')
  bind_vehiclewheel_get_engine_force = api_core.godot_method_bind_get_method('VehicleWheel', 'get_engine_force')
  bind_vehiclewheel_get_friction_slip = api_core.godot_method_bind_get_method('VehicleWheel', 'get_friction_slip')
  bind_vehiclewheel_get_radius = api_core.godot_method_bind_get_method('VehicleWheel', 'get_radius')
  bind_vehiclewheel_get_roll_influence = api_core.godot_method_bind_get_method('VehicleWheel', 'get_roll_influence')
  bind_vehiclewheel_get_rpm = api_core.godot_method_bind_get_method('VehicleWheel', 'get_rpm')
  bind_vehiclewheel_get_skidinfo = api_core.godot_method_bind_get_method('VehicleWheel', 'get_skidinfo')
  bind_vehiclewheel_get_steering = api_core.godot_method_bind_get_method('VehicleWheel', 'get_steering')
  bind_vehiclewheel_get_suspension_max_force = api_core.godot_method_bind_get_method('VehicleWheel', 'get_suspension_max_force')
  bind_vehiclewheel_get_suspension_rest_length = api_core.godot_method_bind_get_method('VehicleWheel', 'get_suspension_rest_length')
  bind_vehiclewheel_get_suspension_stiffness = api_core.godot_method_bind_get_method('VehicleWheel', 'get_suspension_stiffness')
  bind_vehiclewheel_get_suspension_travel = api_core.godot_method_bind_get_method('VehicleWheel', 'get_suspension_travel')
  bind_vehiclewheel_is_in_contact = api_core.godot_method_bind_get_method('VehicleWheel', 'is_in_contact')
  bind_vehiclewheel_is_used_as_steering = api_core.godot_method_bind_get_method('VehicleWheel', 'is_used_as_steering')
  bind_vehiclewheel_is_used_as_traction = api_core.godot_method_bind_get_method('VehicleWheel', 'is_used_as_traction')
  bind_vehiclewheel_set_brake = api_core.godot_method_bind_get_method('VehicleWheel', 'set_brake')
  bind_vehiclewheel_set_damping_compression = api_core.godot_method_bind_get_method('VehicleWheel', 'set_damping_compression')
  bind_vehiclewheel_set_damping_relaxation = api_core.godot_method_bind_get_method('VehicleWheel', 'set_damping_relaxation')
  bind_vehiclewheel_set_engine_force = api_core.godot_method_bind_get_method('VehicleWheel', 'set_engine_force')
  bind_vehiclewheel_set_friction_slip = api_core.godot_method_bind_get_method('VehicleWheel', 'set_friction_slip')
  bind_vehiclewheel_set_radius = api_core.godot_method_bind_get_method('VehicleWheel', 'set_radius')
  bind_vehiclewheel_set_roll_influence = api_core.godot_method_bind_get_method('VehicleWheel', 'set_roll_influence')
  bind_vehiclewheel_set_steering = api_core.godot_method_bind_get_method('VehicleWheel', 'set_steering')
  bind_vehiclewheel_set_suspension_max_force = api_core.godot_method_bind_get_method('VehicleWheel', 'set_suspension_max_force')
  bind_vehiclewheel_set_suspension_rest_length = api_core.godot_method_bind_get_method('VehicleWheel', 'set_suspension_rest_length')
  bind_vehiclewheel_set_suspension_stiffness = api_core.godot_method_bind_get_method('VehicleWheel', 'set_suspension_stiffness')
  bind_vehiclewheel_set_suspension_travel = api_core.godot_method_bind_get_method('VehicleWheel', 'set_suspension_travel')
  bind_vehiclewheel_set_use_as_steering = api_core.godot_method_bind_get_method('VehicleWheel', 'set_use_as_steering')
  bind_vehiclewheel_set_use_as_traction = api_core.godot_method_bind_get_method('VehicleWheel', 'set_use_as_traction')

############################Generated class###################################
cdef class VehicleWheel(classes.Spatial.Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VehicleWheel")())
##################################Generated Properties#########################################
  @property
  def brake(self): 
    return self.get_brake()
  @brake.setter 
  def brake(self,value): 
    self.set_brake(value)
  @property
  def damping_compression(self): 
    return self.get_damping_compression()
  @damping_compression.setter 
  def damping_compression(self,value): 
    self.set_damping_compression(value)
  @property
  def damping_relaxation(self): 
    return self.get_damping_relaxation()
  @damping_relaxation.setter 
  def damping_relaxation(self,value): 
    self.set_damping_relaxation(value)
  @property
  def engine_force(self): 
    return self.get_engine_force()
  @engine_force.setter 
  def engine_force(self,value): 
    self.set_engine_force(value)
  @property
  def steering(self): 
    return self.get_steering()
  @steering.setter 
  def steering(self,value): 
    self.set_steering(value)
  @property
  def suspension_max_force(self): 
    return self.get_suspension_max_force()
  @suspension_max_force.setter 
  def suspension_max_force(self,value): 
    self.set_suspension_max_force(value)
  @property
  def suspension_stiffness(self): 
    return self.get_suspension_stiffness()
  @suspension_stiffness.setter 
  def suspension_stiffness(self,value): 
    self.set_suspension_stiffness(value)
  @property
  def suspension_travel(self): 
    return self.get_suspension_travel()
  @suspension_travel.setter 
  def suspension_travel(self,value): 
    self.set_suspension_travel(value)
  @property
  def use_as_steering(self): 
    return self.get_use_as_steering()
  @use_as_steering.setter 
  def use_as_steering(self,value): 
    self.set_use_as_steering(value)
  @property
  def use_as_traction(self): 
    return self.get_use_as_traction()
  @use_as_traction.setter 
  def use_as_traction(self,value): 
    self.set_use_as_traction(value)
  @property
  def wheel_friction_slip(self): 
    return self.get_wheel_friction_slip()
  @wheel_friction_slip.setter 
  def wheel_friction_slip(self,value): 
    self.set_wheel_friction_slip(value)
  @property
  def wheel_radius(self): 
    return self.get_wheel_radius()
  @wheel_radius.setter 
  def wheel_radius(self,value): 
    self.set_wheel_radius(value)
  @property
  def wheel_rest_length(self): 
    return self.get_wheel_rest_length()
  @wheel_rest_length.setter 
  def wheel_rest_length(self,value): 
    self.set_wheel_rest_length(value)
  @property
  def wheel_roll_influence(self): 
    return self.get_wheel_roll_influence()
  @wheel_roll_influence.setter 
  def wheel_roll_influence(self,value): 
    self.set_wheel_roll_influence(value)

##################################Generated Methods#########################################
  def  get_brake(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_brake,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_damping_compression(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_damping_compression,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_damping_relaxation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_damping_relaxation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_engine_force(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_engine_force,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_friction_slip(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_friction_slip,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_radius(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_radius,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_roll_influence(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_roll_influence,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rpm(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_rpm,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_skidinfo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_skidinfo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_steering(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_steering,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_suspension_max_force(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_suspension_max_force,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_suspension_rest_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_suspension_rest_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_suspension_stiffness(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_suspension_stiffness,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_suspension_travel(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_get_suspension_travel,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_in_contact(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_is_in_contact,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_used_as_steering(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_is_used_as_steering,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_used_as_traction(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_is_used_as_traction,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_brake(self,  float brake):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &brake
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_brake,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_damping_compression(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_damping_compression,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_damping_relaxation(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_damping_relaxation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_engine_force(self,  float engine_force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &engine_force
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_engine_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_friction_slip(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_friction_slip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_radius(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_radius,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_roll_influence(self,  float roll_influence):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &roll_influence
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_roll_influence,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_steering(self,  float steering):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &steering
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_steering,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_suspension_max_force(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_suspension_max_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_suspension_rest_length(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_suspension_rest_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_suspension_stiffness(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_suspension_stiffness,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_suspension_travel(self,  float length):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &length
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_suspension_travel,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_as_steering(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_use_as_steering,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_as_traction(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_vehiclewheel_set_use_as_traction,self.godot_owner,args,NULL)
    hello('hallo2')
