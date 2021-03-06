from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_get_buffer_length
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_get_fft_size
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_get_tap_back_pos
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_set_buffer_length
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_set_fft_size
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_set_tap_back_pos
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectspectrumanalyzer_get_buffer_length = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'get_buffer_length')
  bind_audioeffectspectrumanalyzer_get_fft_size = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'get_fft_size')
  bind_audioeffectspectrumanalyzer_get_tap_back_pos = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'get_tap_back_pos')
  bind_audioeffectspectrumanalyzer_set_buffer_length = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'set_buffer_length')
  bind_audioeffectspectrumanalyzer_set_fft_size = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'set_fft_size')
  bind_audioeffectspectrumanalyzer_set_tap_back_pos = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'set_tap_back_pos')

############################Generated class###################################
cdef class AudioEffectSpectrumAnalyzer(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectSpectrumAnalyzer")())
##################################Generated Properties#########################################
  @property
  def buffer_length(self): 
    return self.get_buffer_length()
  @buffer_length.setter 
  def buffer_length(self,value): 
    self.set_buffer_length(value)
  @property
  def fft_size(self): 
    return self.get_fft_size()
  @fft_size.setter 
  def fft_size(self,value): 
    self.set_fft_size(value)
  @property
  def tap_back_pos(self): 
    return self.get_tap_back_pos()
  @tap_back_pos.setter 
  def tap_back_pos(self,value): 
    self.set_tap_back_pos(value)

##################################Generated Methods#########################################
  def  get_buffer_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_get_buffer_length,self.godot_owner,[NULL,],&ret)
  def  get_fft_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioEffectSpectrumAnalyzer::FFT_Size ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_get_fft_size,self.godot_owner,[NULL,],&ret)
  def  get_tap_back_pos(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_get_tap_back_pos,self.godot_owner,[NULL,],&ret)
  def  set_buffer_length(self, seconds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_set_buffer_length,self.godot_owner,[NULL,],NULL)
  def  set_fft_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_set_fft_size,self.godot_owner,[NULL,],NULL)
  def  set_tap_back_pos(self, seconds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_set_tap_back_pos,self.godot_owner,[NULL,],NULL)
