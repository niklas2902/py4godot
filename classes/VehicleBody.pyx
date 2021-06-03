
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
cimport classes.RigidBody 

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
cdef class VehicleBody(classes.RigidBody.RigidBody):
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

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclebody_get_brake,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_engine_force(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclebody_get_engine_force,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_steering(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_vehiclebody_get_steering,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_brake(self,  float brake):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &brake
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_set_brake,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_engine_force(self,  float engine_force):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &engine_force
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_set_engine_force,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_steering(self,  float steering):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &steering
    api_core.godot_method_bind_ptrcall(bind_vehiclebody_set_steering,self.godot_owner,args,NULL)
    hello('hallo2')
