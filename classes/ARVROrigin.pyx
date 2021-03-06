from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_arvrorigin_get_world_scale
cdef godot_method_bind *bind_arvrorigin_set_world_scale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_arvrorigin_get_world_scale = api_core.godot_method_bind_get_method('ARVROrigin', 'get_world_scale')
  bind_arvrorigin_set_world_scale = api_core.godot_method_bind_get_method('ARVROrigin', 'set_world_scale')

############################Generated class###################################
cdef class ARVROrigin(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ARVROrigin")())
##################################Generated Properties#########################################
  @property
  def world_scale(self): 
    return self.get_world_scale()
  @world_scale.setter 
  def world_scale(self,value): 
    self.set_world_scale(value)

##################################Generated Methods#########################################
  def  get_world_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_arvrorigin_get_world_scale,self.godot_owner,[NULL,],&ret)
  def  set_world_scale(self, world_scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_arvrorigin_set_world_scale,self.godot_owner,[NULL,],NULL)
