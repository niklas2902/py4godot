from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioserver_add_bus
cdef godot_method_bind *bind_audioserver_add_bus_effect
cdef godot_method_bind *bind_audioserver_capture_get_device
cdef godot_method_bind *bind_audioserver_capture_get_device_list
cdef godot_method_bind *bind_audioserver_capture_set_device
cdef godot_method_bind *bind_audioserver_generate_bus_layout
cdef godot_method_bind *bind_audioserver_get_bus_channels
cdef godot_method_bind *bind_audioserver_get_bus_count
cdef godot_method_bind *bind_audioserver_get_bus_effect
cdef godot_method_bind *bind_audioserver_get_bus_effect_count
cdef godot_method_bind *bind_audioserver_get_bus_effect_instance
cdef godot_method_bind *bind_audioserver_get_bus_index
cdef godot_method_bind *bind_audioserver_get_bus_name
cdef godot_method_bind *bind_audioserver_get_bus_peak_volume_left_db
cdef godot_method_bind *bind_audioserver_get_bus_peak_volume_right_db
cdef godot_method_bind *bind_audioserver_get_bus_send
cdef godot_method_bind *bind_audioserver_get_bus_volume_db
cdef godot_method_bind *bind_audioserver_get_device
cdef godot_method_bind *bind_audioserver_get_device_list
cdef godot_method_bind *bind_audioserver_get_global_rate_scale
cdef godot_method_bind *bind_audioserver_get_mix_rate
cdef godot_method_bind *bind_audioserver_get_output_latency
cdef godot_method_bind *bind_audioserver_get_speaker_mode
cdef godot_method_bind *bind_audioserver_get_time_since_last_mix
cdef godot_method_bind *bind_audioserver_get_time_to_next_mix
cdef godot_method_bind *bind_audioserver_is_bus_bypassing_effects
cdef godot_method_bind *bind_audioserver_is_bus_effect_enabled
cdef godot_method_bind *bind_audioserver_is_bus_mute
cdef godot_method_bind *bind_audioserver_is_bus_solo
cdef godot_method_bind *bind_audioserver_lock
cdef godot_method_bind *bind_audioserver_move_bus
cdef godot_method_bind *bind_audioserver_remove_bus
cdef godot_method_bind *bind_audioserver_remove_bus_effect
cdef godot_method_bind *bind_audioserver_set_bus_bypass_effects
cdef godot_method_bind *bind_audioserver_set_bus_count
cdef godot_method_bind *bind_audioserver_set_bus_effect_enabled
cdef godot_method_bind *bind_audioserver_set_bus_layout
cdef godot_method_bind *bind_audioserver_set_bus_mute
cdef godot_method_bind *bind_audioserver_set_bus_name
cdef godot_method_bind *bind_audioserver_set_bus_send
cdef godot_method_bind *bind_audioserver_set_bus_solo
cdef godot_method_bind *bind_audioserver_set_bus_volume_db
cdef godot_method_bind *bind_audioserver_set_device
cdef godot_method_bind *bind_audioserver_set_global_rate_scale
cdef godot_method_bind *bind_audioserver_swap_bus_effects
cdef godot_method_bind *bind_audioserver_unlock
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioserver_add_bus = api_core.godot_method_bind_get_method('AudioServer', 'add_bus')
  bind_audioserver_add_bus_effect = api_core.godot_method_bind_get_method('AudioServer', 'add_bus_effect')
  bind_audioserver_capture_get_device = api_core.godot_method_bind_get_method('AudioServer', 'capture_get_device')
  bind_audioserver_capture_get_device_list = api_core.godot_method_bind_get_method('AudioServer', 'capture_get_device_list')
  bind_audioserver_capture_set_device = api_core.godot_method_bind_get_method('AudioServer', 'capture_set_device')
  bind_audioserver_generate_bus_layout = api_core.godot_method_bind_get_method('AudioServer', 'generate_bus_layout')
  bind_audioserver_get_bus_channels = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_channels')
  bind_audioserver_get_bus_count = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_count')
  bind_audioserver_get_bus_effect = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_effect')
  bind_audioserver_get_bus_effect_count = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_effect_count')
  bind_audioserver_get_bus_effect_instance = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_effect_instance')
  bind_audioserver_get_bus_index = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_index')
  bind_audioserver_get_bus_name = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_name')
  bind_audioserver_get_bus_peak_volume_left_db = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_peak_volume_left_db')
  bind_audioserver_get_bus_peak_volume_right_db = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_peak_volume_right_db')
  bind_audioserver_get_bus_send = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_send')
  bind_audioserver_get_bus_volume_db = api_core.godot_method_bind_get_method('AudioServer', 'get_bus_volume_db')
  bind_audioserver_get_device = api_core.godot_method_bind_get_method('AudioServer', 'get_device')
  bind_audioserver_get_device_list = api_core.godot_method_bind_get_method('AudioServer', 'get_device_list')
  bind_audioserver_get_global_rate_scale = api_core.godot_method_bind_get_method('AudioServer', 'get_global_rate_scale')
  bind_audioserver_get_mix_rate = api_core.godot_method_bind_get_method('AudioServer', 'get_mix_rate')
  bind_audioserver_get_output_latency = api_core.godot_method_bind_get_method('AudioServer', 'get_output_latency')
  bind_audioserver_get_speaker_mode = api_core.godot_method_bind_get_method('AudioServer', 'get_speaker_mode')
  bind_audioserver_get_time_since_last_mix = api_core.godot_method_bind_get_method('AudioServer', 'get_time_since_last_mix')
  bind_audioserver_get_time_to_next_mix = api_core.godot_method_bind_get_method('AudioServer', 'get_time_to_next_mix')
  bind_audioserver_is_bus_bypassing_effects = api_core.godot_method_bind_get_method('AudioServer', 'is_bus_bypassing_effects')
  bind_audioserver_is_bus_effect_enabled = api_core.godot_method_bind_get_method('AudioServer', 'is_bus_effect_enabled')
  bind_audioserver_is_bus_mute = api_core.godot_method_bind_get_method('AudioServer', 'is_bus_mute')
  bind_audioserver_is_bus_solo = api_core.godot_method_bind_get_method('AudioServer', 'is_bus_solo')
  bind_audioserver_lock = api_core.godot_method_bind_get_method('AudioServer', 'lock')
  bind_audioserver_move_bus = api_core.godot_method_bind_get_method('AudioServer', 'move_bus')
  bind_audioserver_remove_bus = api_core.godot_method_bind_get_method('AudioServer', 'remove_bus')
  bind_audioserver_remove_bus_effect = api_core.godot_method_bind_get_method('AudioServer', 'remove_bus_effect')
  bind_audioserver_set_bus_bypass_effects = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_bypass_effects')
  bind_audioserver_set_bus_count = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_count')
  bind_audioserver_set_bus_effect_enabled = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_effect_enabled')
  bind_audioserver_set_bus_layout = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_layout')
  bind_audioserver_set_bus_mute = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_mute')
  bind_audioserver_set_bus_name = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_name')
  bind_audioserver_set_bus_send = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_send')
  bind_audioserver_set_bus_solo = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_solo')
  bind_audioserver_set_bus_volume_db = api_core.godot_method_bind_get_method('AudioServer', 'set_bus_volume_db')
  bind_audioserver_set_device = api_core.godot_method_bind_get_method('AudioServer', 'set_device')
  bind_audioserver_set_global_rate_scale = api_core.godot_method_bind_get_method('AudioServer', 'set_global_rate_scale')
  bind_audioserver_swap_bus_effects = api_core.godot_method_bind_get_method('AudioServer', 'swap_bus_effects')
  bind_audioserver_unlock = api_core.godot_method_bind_get_method('AudioServer', 'unlock')

############################Generated class###################################
cdef class AudioServer(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioServer")())
##################################Generated Properties#########################################
  @property
  def bus_count(self): 
    return self.get_bus_count()
  @bus_count.setter 
  def bus_count(self,value): 
    self.set_bus_count(value)
  @property
  def device(self): 
    return self.get_device()
  @device.setter 
  def device(self,value): 
    self.set_device(value)
  @property
  def global_rate_scale(self): 
    return self.get_global_rate_scale()
  @global_rate_scale.setter 
  def global_rate_scale(self,value): 
    self.set_global_rate_scale(value)

##################################Generated Methods#########################################
  def  add_bus(self, at_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_add_bus,self.godot_owner,[NULL,],NULL)
  def  add_bus_effect(self, bus_idxeffectat_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_add_bus_effect,self.godot_owner,[NULL,],NULL)
  def  capture_get_device(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_capture_get_device,self.godot_owner,[NULL,],&ret)
  def  capture_get_device_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_capture_get_device_list,self.godot_owner,[NULL,],&ret)
  def  capture_set_device(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_capture_set_device,self.godot_owner,[NULL,],NULL)
  def  generate_bus_layout(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioBusLayout ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_generate_bus_layout,self.godot_owner,[NULL,],&ret)
  def  get_bus_channels(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_channels,self.godot_owner,[NULL,],&ret)
  def  get_bus_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_count,self.godot_owner,[NULL,],&ret)
  def  get_bus_effect(self, bus_idxeffect_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioEffect ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_effect,self.godot_owner,[NULL,],&ret)
  def  get_bus_effect_count(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_effect_count,self.godot_owner,[NULL,],&ret)
  def  get_bus_effect_instance(self, bus_idxeffect_idxchannel):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioEffectInstance ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_effect_instance,self.godot_owner,[NULL,],&ret)
  def  get_bus_index(self, bus_name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_index,self.godot_owner,[NULL,],&ret)
  def  get_bus_name(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_name,self.godot_owner,[NULL,],&ret)
  def  get_bus_peak_volume_left_db(self, bus_idxchannel):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_peak_volume_left_db,self.godot_owner,[NULL,],&ret)
  def  get_bus_peak_volume_right_db(self, bus_idxchannel):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_peak_volume_right_db,self.godot_owner,[NULL,],&ret)
  def  get_bus_send(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_send,self.godot_owner,[NULL,],&ret)
  def  get_bus_volume_db(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_volume_db,self.godot_owner,[NULL,],&ret)
  def  get_device(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_device,self.godot_owner,[NULL,],&ret)
  def  get_device_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_device_list,self.godot_owner,[NULL,],&ret)
  def  get_global_rate_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_global_rate_scale,self.godot_owner,[NULL,],&ret)
  def  get_mix_rate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_mix_rate,self.godot_owner,[NULL,],&ret)
  def  get_output_latency(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_output_latency,self.godot_owner,[NULL,],&ret)
  def  get_speaker_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioServer::SpeakerMode ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_speaker_mode,self.godot_owner,[NULL,],&ret)
  def  get_time_since_last_mix(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_time_since_last_mix,self.godot_owner,[NULL,],&ret)
  def  get_time_to_next_mix(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_time_to_next_mix,self.godot_owner,[NULL,],&ret)
  def  is_bus_bypassing_effects(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_bypassing_effects,self.godot_owner,[NULL,],&ret)
  def  is_bus_effect_enabled(self, bus_idxeffect_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_effect_enabled,self.godot_owner,[NULL,],&ret)
  def  is_bus_mute(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_mute,self.godot_owner,[NULL,],&ret)
  def  is_bus_solo(self, bus_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_solo,self.godot_owner,[NULL,],&ret)
  def  lock(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_lock,self.godot_owner,[NULL,],NULL)
  def  move_bus(self, indexto_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_move_bus,self.godot_owner,[NULL,],NULL)
  def  remove_bus(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_remove_bus,self.godot_owner,[NULL,],NULL)
  def  remove_bus_effect(self, bus_idxeffect_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_remove_bus_effect,self.godot_owner,[NULL,],NULL)
  def  set_bus_bypass_effects(self, bus_idxenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_bypass_effects,self.godot_owner,[NULL,],NULL)
  def  set_bus_count(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_count,self.godot_owner,[NULL,],NULL)
  def  set_bus_effect_enabled(self, bus_idxeffect_idxenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_effect_enabled,self.godot_owner,[NULL,],NULL)
  def  set_bus_layout(self, bus_layout):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_layout,self.godot_owner,[NULL,],NULL)
  def  set_bus_mute(self, bus_idxenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_mute,self.godot_owner,[NULL,],NULL)
  def  set_bus_name(self, bus_idxname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_name,self.godot_owner,[NULL,],NULL)
  def  set_bus_send(self, bus_idxsend):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_send,self.godot_owner,[NULL,],NULL)
  def  set_bus_solo(self, bus_idxenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_solo,self.godot_owner,[NULL,],NULL)
  def  set_bus_volume_db(self, bus_idxvolume_db):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_volume_db,self.godot_owner,[NULL,],NULL)
  def  set_device(self, device):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_device,self.godot_owner,[NULL,],NULL)
  def  set_global_rate_scale(self, scale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_global_rate_scale,self.godot_owner,[NULL,],NULL)
  def  swap_bus_effects(self, bus_idxeffect_idxby_effect_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_swap_bus_effects,self.godot_owner,[NULL,],NULL)
  def  unlock(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_unlock,self.godot_owner,[NULL,],NULL)
