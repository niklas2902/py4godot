from classes.AudioStream cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamrandompitch_get_audio_stream
cdef godot_method_bind *bind_audiostreamrandompitch_get_random_pitch
cdef godot_method_bind *bind_audiostreamrandompitch_set_audio_stream
cdef godot_method_bind *bind_audiostreamrandompitch_set_random_pitch
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamrandompitch_get_audio_stream = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'get_audio_stream')
  bind_audiostreamrandompitch_get_random_pitch = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'get_random_pitch')
  bind_audiostreamrandompitch_set_audio_stream = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'set_audio_stream')
  bind_audiostreamrandompitch_set_random_pitch = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'set_random_pitch')

############################Generated class###################################
cdef class AudioStreamRandomPitch(AudioStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamRandomPitch")())
##################################Generated Properties#########################################
  @property
  def audio_stream(self): 
    return self.get_audio_stream()
  @audio_stream.setter 
  def audio_stream(self,value): 
    self.set_audio_stream(value)
  @property
  def random_pitch(self): 
    return self.get_random_pitch()
  @random_pitch.setter 
  def random_pitch(self,value): 
    self.set_random_pitch(value)

##################################Generated Methods#########################################
  def  get_audio_stream(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioStream ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_get_audio_stream,self.godot_owner,[NULL,],&ret)
  def  get_random_pitch(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_get_random_pitch,self.godot_owner,[NULL,],&ret)
  def  set_audio_stream(self, stream):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_set_audio_stream,self.godot_owner,[NULL,],NULL)
  def  set_random_pitch(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_set_random_pitch,self.godot_owner,[NULL,],NULL)
