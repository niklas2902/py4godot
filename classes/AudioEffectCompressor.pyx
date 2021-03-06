from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectcompressor_get_attack_us
cdef godot_method_bind *bind_audioeffectcompressor_get_gain
cdef godot_method_bind *bind_audioeffectcompressor_get_mix
cdef godot_method_bind *bind_audioeffectcompressor_get_ratio
cdef godot_method_bind *bind_audioeffectcompressor_get_release_ms
cdef godot_method_bind *bind_audioeffectcompressor_get_sidechain
cdef godot_method_bind *bind_audioeffectcompressor_get_threshold
cdef godot_method_bind *bind_audioeffectcompressor_set_attack_us
cdef godot_method_bind *bind_audioeffectcompressor_set_gain
cdef godot_method_bind *bind_audioeffectcompressor_set_mix
cdef godot_method_bind *bind_audioeffectcompressor_set_ratio
cdef godot_method_bind *bind_audioeffectcompressor_set_release_ms
cdef godot_method_bind *bind_audioeffectcompressor_set_sidechain
cdef godot_method_bind *bind_audioeffectcompressor_set_threshold
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectcompressor_get_attack_us = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'get_attack_us')
  bind_audioeffectcompressor_get_gain = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'get_gain')
  bind_audioeffectcompressor_get_mix = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'get_mix')
  bind_audioeffectcompressor_get_ratio = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'get_ratio')
  bind_audioeffectcompressor_get_release_ms = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'get_release_ms')
  bind_audioeffectcompressor_get_sidechain = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'get_sidechain')
  bind_audioeffectcompressor_get_threshold = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'get_threshold')
  bind_audioeffectcompressor_set_attack_us = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'set_attack_us')
  bind_audioeffectcompressor_set_gain = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'set_gain')
  bind_audioeffectcompressor_set_mix = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'set_mix')
  bind_audioeffectcompressor_set_ratio = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'set_ratio')
  bind_audioeffectcompressor_set_release_ms = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'set_release_ms')
  bind_audioeffectcompressor_set_sidechain = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'set_sidechain')
  bind_audioeffectcompressor_set_threshold = api_core.godot_method_bind_get_method('AudioEffectCompressor', 'set_threshold')

############################Generated class###################################
cdef class AudioEffectCompressor(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectCompressor")())
##################################Generated Properties#########################################
  @property
  def attack_us(self): 
    return self.get_attack_us()
  @attack_us.setter 
  def attack_us(self,value): 
    self.set_attack_us(value)
  @property
  def gain(self): 
    return self.get_gain()
  @gain.setter 
  def gain(self,value): 
    self.set_gain(value)
  @property
  def mix(self): 
    return self.get_mix()
  @mix.setter 
  def mix(self,value): 
    self.set_mix(value)
  @property
  def ratio(self): 
    return self.get_ratio()
  @ratio.setter 
  def ratio(self,value): 
    self.set_ratio(value)
  @property
  def release_ms(self): 
    return self.get_release_ms()
  @release_ms.setter 
  def release_ms(self,value): 
    self.set_release_ms(value)
  @property
  def sidechain(self): 
    return self.get_sidechain()
  @sidechain.setter 
  def sidechain(self,value): 
    self.set_sidechain(value)
  @property
  def threshold(self): 
    return self.get_threshold()
  @threshold.setter 
  def threshold(self,value): 
    self.set_threshold(value)

##################################Generated Methods#########################################
  def  get_attack_us(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_get_attack_us,self.godot_owner,[NULL,],&ret)
  def  get_gain(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_get_gain,self.godot_owner,[NULL,],&ret)
  def  get_mix(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_get_mix,self.godot_owner,[NULL,],&ret)
  def  get_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_get_ratio,self.godot_owner,[NULL,],&ret)
  def  get_release_ms(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_get_release_ms,self.godot_owner,[NULL,],&ret)
  def  get_sidechain(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_get_sidechain,self.godot_owner,[NULL,],&ret)
  def  get_threshold(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_get_threshold,self.godot_owner,[NULL,],&ret)
  def  set_attack_us(self, attack_us):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_set_attack_us,self.godot_owner,[NULL,],NULL)
  def  set_gain(self, gain):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_set_gain,self.godot_owner,[NULL,],NULL)
  def  set_mix(self, mix):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_set_mix,self.godot_owner,[NULL,],NULL)
  def  set_ratio(self, ratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_set_ratio,self.godot_owner,[NULL,],NULL)
  def  set_release_ms(self, release_ms):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_set_release_ms,self.godot_owner,[NULL,],NULL)
  def  set_sidechain(self, sidechain):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_set_sidechain,self.godot_owner,[NULL,],NULL)
  def  set_threshold(self, threshold):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectcompressor_set_threshold,self.godot_owner,[NULL,],NULL)
