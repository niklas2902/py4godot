from classes.Joint2D cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_dampedspringjoint2d_get_damping
cdef godot_method_bind *bind_dampedspringjoint2d_get_length
cdef godot_method_bind *bind_dampedspringjoint2d_get_rest_length
cdef godot_method_bind *bind_dampedspringjoint2d_get_stiffness
cdef godot_method_bind *bind_dampedspringjoint2d_set_damping
cdef godot_method_bind *bind_dampedspringjoint2d_set_length
cdef godot_method_bind *bind_dampedspringjoint2d_set_rest_length
cdef godot_method_bind *bind_dampedspringjoint2d_set_stiffness
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_dampedspringjoint2d_get_damping = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_damping')
  bind_dampedspringjoint2d_get_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_length')
  bind_dampedspringjoint2d_get_rest_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_rest_length')
  bind_dampedspringjoint2d_get_stiffness = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'get_stiffness')
  bind_dampedspringjoint2d_set_damping = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_damping')
  bind_dampedspringjoint2d_set_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_length')
  bind_dampedspringjoint2d_set_rest_length = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_rest_length')
  bind_dampedspringjoint2d_set_stiffness = api_core.godot_method_bind_get_method('DampedSpringJoint2D', 'set_stiffness')

############################Generated class###################################
cdef class DampedSpringJoint2D(Joint2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("DampedSpringJoint2D")())
##################################Generated Properties#########################################
  @property
  def damping(self): 
    return self.get_damping()
  @damping.setter 
  def damping(self,value): 
    self.set_damping(value)
  @property
  def length(self): 
    return self.get_length()
  @length.setter 
  def length(self,value): 
    self.set_length(value)
  @property
  def rest_length(self): 
    return self.get_rest_length()
  @rest_length.setter 
  def rest_length(self,value): 
    self.set_rest_length(value)
  @property
  def stiffness(self): 
    return self.get_stiffness()
  @stiffness.setter 
  def stiffness(self,value): 
    self.set_stiffness(value)

##################################Generated Methods#########################################
  def  get_damping(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_damping,self.godot_owner,[NULL,],&ret)
  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_length,self.godot_owner,[NULL,],&ret)
  def  get_rest_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_rest_length,self.godot_owner,[NULL,],&ret)
  def  get_stiffness(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_get_stiffness,self.godot_owner,[NULL,],&ret)
  def  set_damping(self, damping):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_damping,self.godot_owner,[NULL,],NULL)
  def  set_length(self, length):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_length,self.godot_owner,[NULL,],NULL)
  def  set_rest_length(self, rest_length):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_rest_length,self.godot_owner,[NULL,],NULL)
  def  set_stiffness(self, stiffness):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_dampedspringjoint2d_set_stiffness,self.godot_owner,[NULL,],NULL)
