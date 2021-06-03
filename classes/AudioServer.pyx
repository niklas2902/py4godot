
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.AudioEffect
cimport classes.AudioBusLayout
cimport classes.Object 

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
cdef class AudioServer(classes.Object.Object):
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
  def  add_bus(self,  int at_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &at_position
    api_core.godot_method_bind_ptrcall(bind_audioserver_add_bus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_bus_effect(self,  int bus_idx,  classes.AudioEffect.AudioEffect effect,  int at_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &bus_idx
    args[1] = effect.godot_owner
    args[2] = &at_position
    api_core.godot_method_bind_ptrcall(bind_audioserver_add_bus_effect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  capture_get_device(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_capture_get_device,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  capture_get_device_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_capture_get_device_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  capture_set_device(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_audioserver_capture_set_device,self.godot_owner,args,NULL)
    hello('hallo2')
  def  generate_bus_layout(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_generate_bus_layout,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_bus_channels(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_channels,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus_effect(self,  int bus_idx,  int effect_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &effect_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_effect,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_bus_effect_count(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_effect_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus_effect_instance(self,  int bus_idx,  int effect_idx,  int channel):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &bus_idx
    args[1] = &effect_idx
    args[2] = &channel
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_effect_instance,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_bus_index(self,  String bus_name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_name._native
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_index,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus_name(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_bus_peak_volume_left_db(self,  int bus_idx,  int channel):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &channel
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_peak_volume_left_db,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus_peak_volume_right_db(self,  int bus_idx,  int channel):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &channel
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_peak_volume_right_db,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus_send(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_send,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_bus_volume_db(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_get_bus_volume_db,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_device(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_device,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_device_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_device_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_global_rate_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_global_rate_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mix_rate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_mix_rate,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_output_latency(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_output_latency,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_speaker_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef SpeakerMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_speaker_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_time_since_last_mix(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_time_since_last_mix,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_time_to_next_mix(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioserver_get_time_to_next_mix,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_bus_bypassing_effects(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_bypassing_effects,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_bus_effect_enabled(self,  int bus_idx,  int effect_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &effect_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_effect_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_bus_mute(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_mute,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_bus_solo(self,  int bus_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &bus_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_is_bus_solo,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  lock(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_audioserver_lock,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  move_bus(self,  int index,  int to_index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = &to_index
    api_core.godot_method_bind_ptrcall(bind_audioserver_move_bus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_bus(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_audioserver_remove_bus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_bus_effect(self,  int bus_idx,  int effect_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &effect_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_remove_bus_effect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_bypass_effects(self,  int bus_idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_bypass_effects,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_count(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_count,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_effect_enabled(self,  int bus_idx,  int effect_idx,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &bus_idx
    args[1] = &effect_idx
    args[2] = &enabled
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_effect_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_layout(self,  classes.AudioBusLayout.AudioBusLayout bus_layout):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = bus_layout.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_layout,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_mute(self,  int bus_idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_mute,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_name(self,  int bus_idx,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &name._native
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_send(self,  int bus_idx,  String send):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &send._native
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_send,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_solo(self,  int bus_idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_solo,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus_volume_db(self,  int bus_idx,  float volume_db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &bus_idx
    args[1] = &volume_db
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_bus_volume_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_device(self,  String device):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &device._native
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_device,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_global_rate_scale(self,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale
    api_core.godot_method_bind_ptrcall(bind_audioserver_set_global_rate_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  swap_bus_effects(self,  int bus_idx,  int effect_idx,  int by_effect_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &bus_idx
    args[1] = &effect_idx
    args[2] = &by_effect_idx
    api_core.godot_method_bind_ptrcall(bind_audioserver_swap_bus_effects,self.godot_owner,args,NULL)
    hello('hallo2')
  def  unlock(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_audioserver_unlock,self.godot_owner,NULL,NULL)
    hello('hallo2')
