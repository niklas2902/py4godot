from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_sky_get_radiance_size
cdef godot_method_bind *bind_sky_set_radiance_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_sky_get_radiance_size = api_core.godot_method_bind_get_method('Sky', 'get_radiance_size')
  bind_sky_set_radiance_size = api_core.godot_method_bind_get_method('Sky', 'set_radiance_size')

############################Generated class###################################
cdef class Sky(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Sky")())
##################################Generated Properties#########################################
  @property
  def radiance_size(self): 
    return self.get_radiance_size()
  @radiance_size.setter 
  def radiance_size(self,value): 
    self.set_radiance_size(value)

##################################Generated Methods#########################################
  def  get_radiance_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Sky::RadianceSize ret
    api_core.godot_method_bind_ptrcall(bind_sky_get_radiance_size,self.godot_owner,[NULL,],&ret)
  def  set_radiance_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_sky_set_radiance_size,self.godot_owner,[NULL,],NULL)
