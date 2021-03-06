from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectstereoenhance_get_pan_pullout
cdef godot_method_bind *bind_audioeffectstereoenhance_get_surround
cdef godot_method_bind *bind_audioeffectstereoenhance_get_time_pullout
cdef godot_method_bind *bind_audioeffectstereoenhance_set_pan_pullout
cdef godot_method_bind *bind_audioeffectstereoenhance_set_surround
cdef godot_method_bind *bind_audioeffectstereoenhance_set_time_pullout
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectstereoenhance_get_pan_pullout = api_core.godot_method_bind_get_method('AudioEffectStereoEnhance', 'get_pan_pullout')
  bind_audioeffectstereoenhance_get_surround = api_core.godot_method_bind_get_method('AudioEffectStereoEnhance', 'get_surround')
  bind_audioeffectstereoenhance_get_time_pullout = api_core.godot_method_bind_get_method('AudioEffectStereoEnhance', 'get_time_pullout')
  bind_audioeffectstereoenhance_set_pan_pullout = api_core.godot_method_bind_get_method('AudioEffectStereoEnhance', 'set_pan_pullout')
  bind_audioeffectstereoenhance_set_surround = api_core.godot_method_bind_get_method('AudioEffectStereoEnhance', 'set_surround')
  bind_audioeffectstereoenhance_set_time_pullout = api_core.godot_method_bind_get_method('AudioEffectStereoEnhance', 'set_time_pullout')

############################Generated class###################################
cdef class AudioEffectStereoEnhance(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectStereoEnhance")())
##################################Generated Properties#########################################
  @property
  def pan_pullout(self): 
    return self.get_pan_pullout()
  @pan_pullout.setter 
  def pan_pullout(self,value): 
    self.set_pan_pullout(value)
  @property
  def surround(self): 
    return self.get_surround()
  @surround.setter 
  def surround(self,value): 
    self.set_surround(value)
  @property
  def time_pullout_ms(self): 
    return self.get_time_pullout_ms()
  @time_pullout_ms.setter 
  def time_pullout_ms(self,value): 
    self.set_time_pullout_ms(value)

##################################Generated Methods#########################################
  def  get_pan_pullout(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectstereoenhance_get_pan_pullout,self.godot_owner,[NULL,],&ret)
  def  get_surround(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectstereoenhance_get_surround,self.godot_owner,[NULL,],&ret)
  def  get_time_pullout(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectstereoenhance_get_time_pullout,self.godot_owner,[NULL,],&ret)
  def  set_pan_pullout(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectstereoenhance_set_pan_pullout,self.godot_owner,[NULL,],NULL)
  def  set_surround(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectstereoenhance_set_surround,self.godot_owner,[NULL,],NULL)
  def  set_time_pullout(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectstereoenhance_set_time_pullout,self.godot_owner,[NULL,],NULL)
