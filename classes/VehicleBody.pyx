from classes.RigidBody cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_vehiclebody_get_brake
cdef godot_method_bind *bind_vehiclebody_get_engine_force
cdef godot_method_bind *bind_vehiclebody_get_steering
cdef godot_method_bind *bind_vehiclebody_set_brake
cdef godot_method_bind *bind_vehiclebody_set_engine_force
cdef godot_method_bind *bind_vehiclebody_set_steering
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_vehiclebody_get_brake = api_core.godot_method_bind_get_method('VehicleBody', 'get_brake')
  bind_vehiclebody_get_engine_force = api_core.godot_method_bind_get_method('VehicleBody', 'get_engine_force')
  bind_vehiclebody_get_steering = api_core.godot_method_bind_get_method('VehicleBody', 'get_steering')
  bind_vehiclebody_set_brake = api_core.godot_method_bind_get_method('VehicleBody', 'set_brake')
  bind_vehiclebody_set_engine_force = api_core.godot_method_bind_get_method('VehicleBody', 'set_engine_force')
  bind_vehiclebody_set_steering = api_core.godot_method_bind_get_method('VehicleBody', 'set_steering')

############################Generated class###################################
cdef class VehicleBody(RigidBody):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VehicleBody")())
##################################Generated Properties#########################################
  @property
  def brake(self): 
    return self.get_brake()
  @brake.setter 
  def brake(self,value): 
    self.set_brake(value)
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

##################################Generated Methods#########################################
  def  get_brake(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_get_brake,self.godot_owner,[NULL,],&ret)
  def  get_engine_force(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_get_engine_force,self.godot_owner,[NULL,],&ret)
  def  get_steering(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_get_steering,self.godot_owner,[NULL,],&ret)
  def  set_brake(self, brake):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_set_brake,self.godot_owner,[NULL,],NULL)
  def  set_engine_force(self, engine_force):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_set_engine_force,self.godot_owner,[NULL,],NULL)
  def  set_steering(self, steering):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_set_steering,self.godot_owner,[NULL,],NULL)
