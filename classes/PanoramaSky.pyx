from classes.Sky cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_panoramasky_get_panorama
cdef godot_method_bind *bind_panoramasky_set_panorama
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_panoramasky_get_panorama = api_core.godot_method_bind_get_method('PanoramaSky', 'get_panorama')
  bind_panoramasky_set_panorama = api_core.godot_method_bind_get_method('PanoramaSky', 'set_panorama')

############################Generated class###################################
cdef class PanoramaSky(Sky):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PanoramaSky")())
##################################Generated Properties#########################################
  @property
  def panorama(self): 
    return self.get_panorama()
  @panorama.setter 
  def panorama(self,value): 
    self.set_panorama(value)

##################################Generated Methods#########################################
  def  get_panorama(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_panoramasky_get_panorama,self.godot_owner,[NULL,],&ret)
  def  set_panorama(self, texture):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_panoramasky_set_panorama,self.godot_owner,[NULL,],NULL)
