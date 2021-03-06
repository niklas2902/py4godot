from classes.VideoStream cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_videostreamwebm_get_file
cdef godot_method_bind *bind_videostreamwebm_set_file
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_videostreamwebm_get_file = api_core.godot_method_bind_get_method('VideoStreamWebm', 'get_file')
  bind_videostreamwebm_set_file = api_core.godot_method_bind_get_method('VideoStreamWebm', 'set_file')

############################Generated class###################################
cdef class VideoStreamWebm(VideoStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VideoStreamWebm")())
##################################Generated Properties#########################################
  @property
  def file(self): 
    return self.get_file()
  @file.setter 
  def file(self,value): 
    self.set_file(value)

##################################Generated Methods#########################################
  def  get_file(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_videostreamwebm_get_file,self.godot_owner,[NULL,],&ret)
  def  set_file(self, file):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_videostreamwebm_set_file,self.godot_owner,[NULL,],NULL)
