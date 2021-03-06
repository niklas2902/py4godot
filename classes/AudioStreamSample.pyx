from classes.AudioStream cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamsample_get_data
cdef godot_method_bind *bind_audiostreamsample_get_format
cdef godot_method_bind *bind_audiostreamsample_get_loop_begin
cdef godot_method_bind *bind_audiostreamsample_get_loop_end
cdef godot_method_bind *bind_audiostreamsample_get_loop_mode
cdef godot_method_bind *bind_audiostreamsample_get_mix_rate
cdef godot_method_bind *bind_audiostreamsample_is_stereo
cdef godot_method_bind *bind_audiostreamsample_save_to_wav
cdef godot_method_bind *bind_audiostreamsample_set_data
cdef godot_method_bind *bind_audiostreamsample_set_format
cdef godot_method_bind *bind_audiostreamsample_set_loop_begin
cdef godot_method_bind *bind_audiostreamsample_set_loop_end
cdef godot_method_bind *bind_audiostreamsample_set_loop_mode
cdef godot_method_bind *bind_audiostreamsample_set_mix_rate
cdef godot_method_bind *bind_audiostreamsample_set_stereo
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamsample_get_data = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_data')
  bind_audiostreamsample_get_format = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_format')
  bind_audiostreamsample_get_loop_begin = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_loop_begin')
  bind_audiostreamsample_get_loop_end = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_loop_end')
  bind_audiostreamsample_get_loop_mode = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_loop_mode')
  bind_audiostreamsample_get_mix_rate = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_mix_rate')
  bind_audiostreamsample_is_stereo = api_core.godot_method_bind_get_method('AudioStreamSample', 'is_stereo')
  bind_audiostreamsample_save_to_wav = api_core.godot_method_bind_get_method('AudioStreamSample', 'save_to_wav')
  bind_audiostreamsample_set_data = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_data')
  bind_audiostreamsample_set_format = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_format')
  bind_audiostreamsample_set_loop_begin = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_loop_begin')
  bind_audiostreamsample_set_loop_end = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_loop_end')
  bind_audiostreamsample_set_loop_mode = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_loop_mode')
  bind_audiostreamsample_set_mix_rate = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_mix_rate')
  bind_audiostreamsample_set_stereo = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_stereo')

############################Generated class###################################
cdef class AudioStreamSample(AudioStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamSample")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)
  @property
  def format(self): 
    return self.get_format()
  @format.setter 
  def format(self,value): 
    self.set_format(value)
  @property
  def loop_begin(self): 
    return self.get_loop_begin()
  @loop_begin.setter 
  def loop_begin(self,value): 
    self.set_loop_begin(value)
  @property
  def loop_end(self): 
    return self.get_loop_end()
  @loop_end.setter 
  def loop_end(self,value): 
    self.set_loop_end(value)
  @property
  def loop_mode(self): 
    return self.get_loop_mode()
  @loop_mode.setter 
  def loop_mode(self,value): 
    self.set_loop_mode(value)
  @property
  def mix_rate(self): 
    return self.get_mix_rate()
  @mix_rate.setter 
  def mix_rate(self,value): 
    self.set_mix_rate(value)
  @property
  def stereo(self): 
    return self.get_stereo()
  @stereo.setter 
  def stereo(self,value): 
    self.set_stereo(value)

##################################Generated Methods#########################################
  def  get_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_data,self.godot_owner,[NULL,],&ret)
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioStreamSample::Format ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_format,self.godot_owner,[NULL,],&ret)
  def  get_loop_begin(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_loop_begin,self.godot_owner,[NULL,],&ret)
  def  get_loop_end(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_loop_end,self.godot_owner,[NULL,],&ret)
  def  get_loop_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioStreamSample::LoopMode ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_loop_mode,self.godot_owner,[NULL,],&ret)
  def  get_mix_rate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_mix_rate,self.godot_owner,[NULL,],&ret)
  def  is_stereo(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_is_stereo,self.godot_owner,[NULL,],&ret)
  def  save_to_wav(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_save_to_wav,self.godot_owner,[NULL,],&ret)
  def  set_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_data,self.godot_owner,[NULL,],NULL)
  def  set_format(self, format):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_format,self.godot_owner,[NULL,],NULL)
  def  set_loop_begin(self, loop_begin):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_loop_begin,self.godot_owner,[NULL,],NULL)
  def  set_loop_end(self, loop_end):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_loop_end,self.godot_owner,[NULL,],NULL)
  def  set_loop_mode(self, loop_mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_loop_mode,self.godot_owner,[NULL,],NULL)
  def  set_mix_rate(self, mix_rate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_mix_rate,self.godot_owner,[NULL,],NULL)
  def  set_stereo(self, stereo):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_stereo,self.godot_owner,[NULL,],NULL)
