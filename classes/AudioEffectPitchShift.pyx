from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectpitchshift_get_fft_size
cdef godot_method_bind *bind_audioeffectpitchshift_get_oversampling
cdef godot_method_bind *bind_audioeffectpitchshift_get_pitch_scale
cdef godot_method_bind *bind_audioeffectpitchshift_set_fft_size
cdef godot_method_bind *bind_audioeffectpitchshift_set_oversampling
cdef godot_method_bind *bind_audioeffectpitchshift_set_pitch_scale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectpitchshift_get_fft_size = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'get_fft_size')
  bind_audioeffectpitchshift_get_oversampling = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'get_oversampling')
  bind_audioeffectpitchshift_get_pitch_scale = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'get_pitch_scale')
  bind_audioeffectpitchshift_set_fft_size = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'set_fft_size')
  bind_audioeffectpitchshift_set_oversampling = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'set_oversampling')
  bind_audioeffectpitchshift_set_pitch_scale = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'set_pitch_scale')

############################Generated class###################################
cdef class AudioEffectPitchShift(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectPitchShift")())
##################################Generated Properties#########################################
  @property
  def fft_size(self): 
    return self.get_fft_size()
  @fft_size.setter 
  def fft_size(self,value): 
    self.set_fft_size(value)
  @property
  def oversampling(self): 
    return self.get_oversampling()
  @oversampling.setter 
  def oversampling(self,value): 
    self.set_oversampling(value)
  @property
  def pitch_scale(self): 
    return self.get_pitch_scale()
  @pitch_scale.setter 
  def pitch_scale(self,value): 
    self.set_pitch_scale(value)

##################################Generated Methods#########################################
  def  get_fft_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioEffectPitchShift::FFT_Size ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_get_fft_size,self.godot_owner,[NULL,],&ret)
  def  get_oversampling(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_get_oversampling,self.godot_owner,[NULL,],&ret)
  def  get_pitch_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_get_pitch_scale,self.godot_owner,[NULL,],&ret)
  def  set_fft_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_set_fft_size,self.godot_owner,[NULL,],NULL)
  def  set_oversampling(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_set_oversampling,self.godot_owner,[NULL,],NULL)
  def  set_pitch_scale(self, rate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_set_pitch_scale,self.godot_owner,[NULL,],NULL)
