from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_kinematiccollision_get_collider
cdef godot_method_bind *bind_kinematiccollision_get_collider_id
cdef godot_method_bind *bind_kinematiccollision_get_collider_metadata
cdef godot_method_bind *bind_kinematiccollision_get_collider_shape
cdef godot_method_bind *bind_kinematiccollision_get_collider_shape_index
cdef godot_method_bind *bind_kinematiccollision_get_collider_velocity
cdef godot_method_bind *bind_kinematiccollision_get_local_shape
cdef godot_method_bind *bind_kinematiccollision_get_normal
cdef godot_method_bind *bind_kinematiccollision_get_position
cdef godot_method_bind *bind_kinematiccollision_get_remainder
cdef godot_method_bind *bind_kinematiccollision_get_travel
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_kinematiccollision_get_collider = api_core.godot_method_bind_get_method('KinematicCollision', 'get_collider')
  bind_kinematiccollision_get_collider_id = api_core.godot_method_bind_get_method('KinematicCollision', 'get_collider_id')
  bind_kinematiccollision_get_collider_metadata = api_core.godot_method_bind_get_method('KinematicCollision', 'get_collider_metadata')
  bind_kinematiccollision_get_collider_shape = api_core.godot_method_bind_get_method('KinematicCollision', 'get_collider_shape')
  bind_kinematiccollision_get_collider_shape_index = api_core.godot_method_bind_get_method('KinematicCollision', 'get_collider_shape_index')
  bind_kinematiccollision_get_collider_velocity = api_core.godot_method_bind_get_method('KinematicCollision', 'get_collider_velocity')
  bind_kinematiccollision_get_local_shape = api_core.godot_method_bind_get_method('KinematicCollision', 'get_local_shape')
  bind_kinematiccollision_get_normal = api_core.godot_method_bind_get_method('KinematicCollision', 'get_normal')
  bind_kinematiccollision_get_position = api_core.godot_method_bind_get_method('KinematicCollision', 'get_position')
  bind_kinematiccollision_get_remainder = api_core.godot_method_bind_get_method('KinematicCollision', 'get_remainder')
  bind_kinematiccollision_get_travel = api_core.godot_method_bind_get_method('KinematicCollision', 'get_travel')

############################Generated class###################################
cdef class KinematicCollision(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("KinematicCollision")())
##################################Generated Properties#########################################
  @property
  def collider(self): 
    return self.get_collider()
  @collider.setter 
  def collider(self,value): 
    self.set_collider(value)
  @property
  def collider_id(self): 
    return self.get_collider_id()
  @collider_id.setter 
  def collider_id(self,value): 
    self.set_collider_id(value)
  @property
  def collider_metadata(self): 
    return self.get_collider_metadata()
  @collider_metadata.setter 
  def collider_metadata(self,value): 
    self.set_collider_metadata(value)
  @property
  def collider_shape(self): 
    return self.get_collider_shape()
  @collider_shape.setter 
  def collider_shape(self,value): 
    self.set_collider_shape(value)
  @property
  def collider_shape_index(self): 
    return self.get_collider_shape_index()
  @collider_shape_index.setter 
  def collider_shape_index(self,value): 
    self.set_collider_shape_index(value)
  @property
  def collider_velocity(self): 
    return self.get_collider_velocity()
  @collider_velocity.setter 
  def collider_velocity(self,value): 
    self.set_collider_velocity(value)
  @property
  def local_shape(self): 
    return self.get_local_shape()
  @local_shape.setter 
  def local_shape(self,value): 
    self.set_local_shape(value)
  @property
  def normal(self): 
    return self.get_normal()
  @normal.setter 
  def normal(self,value): 
    self.set_normal(value)
  @property
  def position(self): 
    return self.get_position()
  @position.setter 
  def position(self,value): 
    self.set_position(value)
  @property
  def remainder(self): 
    return self.get_remainder()
  @remainder.setter 
  def remainder(self,value): 
    self.set_remainder(value)
  @property
  def travel(self): 
    return self.get_travel()
  @travel.setter 
  def travel(self,value): 
    self.set_travel(value)

##################################Generated Methods#########################################
  def  get_collider(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_collider,self.godot_owner,[NULL,],&ret)
  def  get_collider_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_collider_id,self.godot_owner,[NULL,],&ret)
  def  get_collider_metadata(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_collider_metadata,self.godot_owner,[NULL,],&ret)
  def  get_collider_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_collider_shape,self.godot_owner,[NULL,],&ret)
  def  get_collider_shape_index(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_collider_shape_index,self.godot_owner,[NULL,],&ret)
  def  get_collider_velocity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_collider_velocity,self.godot_owner,[NULL,],&ret)
  def  get_local_shape(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Object ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_local_shape,self.godot_owner,[NULL,],&ret)
  def  get_normal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_normal,self.godot_owner,[NULL,],&ret)
  def  get_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_position,self.godot_owner,[NULL,],&ret)
  def  get_remainder(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_remainder,self.godot_owner,[NULL,],&ret)
  def  get_travel(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector3 ret
    api_core.godot_method_bind_ptrcall(bind_kinematiccollision_get_travel,self.godot_owner,[NULL,],&ret)
