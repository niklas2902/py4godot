from classes.AudioStreamPlaybackResampled cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamgeneratorplayback_can_push_buffer
cdef godot_method_bind *bind_audiostreamgeneratorplayback_clear_buffer
cdef godot_method_bind *bind_audiostreamgeneratorplayback_get_frames_available
cdef godot_method_bind *bind_audiostreamgeneratorplayback_get_skips
cdef godot_method_bind *bind_audiostreamgeneratorplayback_push_buffer
cdef godot_method_bind *bind_audiostreamgeneratorplayback_push_frame
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamgeneratorplayback_can_push_buffer = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'can_push_buffer')
  bind_audiostreamgeneratorplayback_clear_buffer = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'clear_buffer')
  bind_audiostreamgeneratorplayback_get_frames_available = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'get_frames_available')
  bind_audiostreamgeneratorplayback_get_skips = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'get_skips')
  bind_audiostreamgeneratorplayback_push_buffer = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'push_buffer')
  bind_audiostreamgeneratorplayback_push_frame = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'push_frame')

############################Generated class###################################
cdef class AudioStreamGeneratorPlayback(AudioStreamPlaybackResampled):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamGeneratorPlayback")())
##################################Generated Methods#########################################
  def  can_push_buffer(self, amount):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_can_push_buffer,self.godot_owner,[NULL,],&ret)
  def  clear_buffer(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_clear_buffer,self.godot_owner,[NULL,],NULL)
  def  get_frames_available(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_get_frames_available,self.godot_owner,[NULL,],&ret)
  def  get_skips(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_get_skips,self.godot_owner,[NULL,],&ret)
  def  push_buffer(self, frames):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_push_buffer,self.godot_owner,[NULL,],&ret)
  def  push_frame(self, frame):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_push_frame,self.godot_owner,[NULL,],&ret)
