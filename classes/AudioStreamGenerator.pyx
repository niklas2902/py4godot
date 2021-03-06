from classes.AudioStream cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamgenerator_get_buffer_length
cdef godot_method_bind *bind_audiostreamgenerator_get_mix_rate
cdef godot_method_bind *bind_audiostreamgenerator_set_buffer_length
cdef godot_method_bind *bind_audiostreamgenerator_set_mix_rate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamgenerator_get_buffer_length = api_core.godot_method_bind_get_method('AudioStreamGenerator', 'get_buffer_length')
  bind_audiostreamgenerator_get_mix_rate = api_core.godot_method_bind_get_method('AudioStreamGenerator', 'get_mix_rate')
  bind_audiostreamgenerator_set_buffer_length = api_core.godot_method_bind_get_method('AudioStreamGenerator', 'set_buffer_length')
  bind_audiostreamgenerator_set_mix_rate = api_core.godot_method_bind_get_method('AudioStreamGenerator', 'set_mix_rate')

############################Generated class###################################
cdef class AudioStreamGenerator(AudioStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamGenerator")())
##################################Generated Properties#########################################
  @property
  def buffer_length(self): 
    return self.get_buffer_length()
  @buffer_length.setter 
  def buffer_length(self,value): 
    self.set_buffer_length(value)
  @property
  def mix_rate(self): 
    return self.get_mix_rate()
  @mix_rate.setter 
  def mix_rate(self,value): 
    self.set_mix_rate(value)

##################################Generated Methods#########################################
  def  get_buffer_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamgenerator_get_buffer_length,self.godot_owner,[NULL,],&ret)
  def  get_mix_rate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamgenerator_get_mix_rate,self.godot_owner,[NULL,],&ret)
  def  set_buffer_length(self, seconds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamgenerator_set_buffer_length,self.godot_owner,[NULL,],NULL)
  def  set_mix_rate(self, hz):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamgenerator_set_mix_rate,self.godot_owner,[NULL,],NULL)
