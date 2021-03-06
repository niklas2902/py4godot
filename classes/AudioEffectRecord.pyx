from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectrecord_get_format
cdef godot_method_bind *bind_audioeffectrecord_get_recording
cdef godot_method_bind *bind_audioeffectrecord_is_recording_active
cdef godot_method_bind *bind_audioeffectrecord_set_format
cdef godot_method_bind *bind_audioeffectrecord_set_recording_active
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectrecord_get_format = api_core.godot_method_bind_get_method('AudioEffectRecord', 'get_format')
  bind_audioeffectrecord_get_recording = api_core.godot_method_bind_get_method('AudioEffectRecord', 'get_recording')
  bind_audioeffectrecord_is_recording_active = api_core.godot_method_bind_get_method('AudioEffectRecord', 'is_recording_active')
  bind_audioeffectrecord_set_format = api_core.godot_method_bind_get_method('AudioEffectRecord', 'set_format')
  bind_audioeffectrecord_set_recording_active = api_core.godot_method_bind_get_method('AudioEffectRecord', 'set_recording_active')

############################Generated class###################################
cdef class AudioEffectRecord(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectRecord")())
##################################Generated Properties#########################################
  @property
  def format(self): 
    return self.get_format()
  @format.setter 
  def format(self,value): 
    self.set_format(value)

##################################Generated Methods#########################################
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioStreamSample::Format ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectrecord_get_format,self.godot_owner,[NULL,],&ret)
  def  get_recording(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioStreamSample ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectrecord_get_recording,self.godot_owner,[NULL,],&ret)
  def  is_recording_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectrecord_is_recording_active,self.godot_owner,[NULL,],&ret)
  def  set_format(self, format):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectrecord_set_format,self.godot_owner,[NULL,],NULL)
  def  set_recording_active(self, record):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectrecord_set_recording_active,self.godot_owner,[NULL,],NULL)
