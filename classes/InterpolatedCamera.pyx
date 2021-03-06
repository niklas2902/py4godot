from classes.Camera cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_interpolatedcamera_get_speed
cdef godot_method_bind *bind_interpolatedcamera_get_target_path
cdef godot_method_bind *bind_interpolatedcamera_is_interpolation_enabled
cdef godot_method_bind *bind_interpolatedcamera_set_interpolation_enabled
cdef godot_method_bind *bind_interpolatedcamera_set_speed
cdef godot_method_bind *bind_interpolatedcamera_set_target
cdef godot_method_bind *bind_interpolatedcamera_set_target_path
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_interpolatedcamera_get_speed = api_core.godot_method_bind_get_method('InterpolatedCamera', 'get_speed')
  bind_interpolatedcamera_get_target_path = api_core.godot_method_bind_get_method('InterpolatedCamera', 'get_target_path')
  bind_interpolatedcamera_is_interpolation_enabled = api_core.godot_method_bind_get_method('InterpolatedCamera', 'is_interpolation_enabled')
  bind_interpolatedcamera_set_interpolation_enabled = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_interpolation_enabled')
  bind_interpolatedcamera_set_speed = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_speed')
  bind_interpolatedcamera_set_target = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_target')
  bind_interpolatedcamera_set_target_path = api_core.godot_method_bind_get_method('InterpolatedCamera', 'set_target_path')

############################Generated class###################################
cdef class InterpolatedCamera(Camera):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("InterpolatedCamera")())
##################################Generated Properties#########################################
  @property
  def enabled(self): 
    return self.get_enabled()
  @enabled.setter 
  def enabled(self,value): 
    self.set_enabled(value)
  @property
  def speed(self): 
    return self.get_speed()
  @speed.setter 
  def speed(self,value): 
    self.set_speed(value)
  @property
  def target(self): 
    return self.get_target()
  @target.setter 
  def target(self,value): 
    self.set_target(value)

##################################Generated Methods#########################################
  def  get_speed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_get_speed,self.godot_owner,[NULL,],&ret)
  def  get_target_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_get_target_path,self.godot_owner,[NULL,],&ret)
  def  is_interpolation_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_is_interpolation_enabled,self.godot_owner,[NULL,],&ret)
  def  set_interpolation_enabled(self, target_path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_interpolation_enabled,self.godot_owner,[NULL,],NULL)
  def  set_speed(self, speed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_speed,self.godot_owner,[NULL,],NULL)
  def  set_target(self, target):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_target,self.godot_owner,[NULL,],NULL)
  def  set_target_path(self, target_path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_interpolatedcamera_set_target_path,self.godot_owner,[NULL,],NULL)
