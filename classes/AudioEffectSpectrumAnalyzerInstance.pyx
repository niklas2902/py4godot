from classes.AudioEffectInstance cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectspectrumanalyzerinstance_get_magnitude_for_frequency_range
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectspectrumanalyzerinstance_get_magnitude_for_frequency_range = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzerInstance', 'get_magnitude_for_frequency_range')

############################Generated class###################################
cdef class AudioEffectSpectrumAnalyzerInstance(AudioEffectInstance):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectSpectrumAnalyzerInstance")())
##################################Generated Methods#########################################
  def  get_magnitude_for_frequency_range(self, from_hzto_hzmode):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzerinstance_get_magnitude_for_frequency_range,self.godot_owner,[NULL,],&ret)
