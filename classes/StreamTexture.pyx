from classes.Texture cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_streamtexture_get_load_path
cdef godot_method_bind *bind_streamtexture_load
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_streamtexture_get_load_path = api_core.godot_method_bind_get_method('StreamTexture', 'get_load_path')
  bind_streamtexture_load = api_core.godot_method_bind_get_method('StreamTexture', 'load')

############################Generated class###################################
cdef class StreamTexture(Texture):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StreamTexture")())
##################################Generated Properties#########################################
  @property
  def load_path(self): 
    return self.get_load_path()
  @load_path.setter 
  def load_path(self,value): 
    self.set_load_path(value)

##################################Generated Methods#########################################
  def  get_load_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_streamtexture_get_load_path,self.godot_owner,[NULL,],&ret)
  def  load(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_streamtexture_load,self.godot_owner,[NULL,],&ret)
