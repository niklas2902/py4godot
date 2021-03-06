from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animation_add_track
cdef godot_method_bind *bind_animation_animation_track_get_key_animation
cdef godot_method_bind *bind_animation_animation_track_insert_key
cdef godot_method_bind *bind_animation_animation_track_set_key_animation
cdef godot_method_bind *bind_animation_audio_track_get_key_end_offset
cdef godot_method_bind *bind_animation_audio_track_get_key_start_offset
cdef godot_method_bind *bind_animation_audio_track_get_key_stream
cdef godot_method_bind *bind_animation_audio_track_insert_key
cdef godot_method_bind *bind_animation_audio_track_set_key_end_offset
cdef godot_method_bind *bind_animation_audio_track_set_key_start_offset
cdef godot_method_bind *bind_animation_audio_track_set_key_stream
cdef godot_method_bind *bind_animation_bezier_track_get_key_in_handle
cdef godot_method_bind *bind_animation_bezier_track_get_key_out_handle
cdef godot_method_bind *bind_animation_bezier_track_get_key_value
cdef godot_method_bind *bind_animation_bezier_track_insert_key
cdef godot_method_bind *bind_animation_bezier_track_interpolate
cdef godot_method_bind *bind_animation_bezier_track_set_key_in_handle
cdef godot_method_bind *bind_animation_bezier_track_set_key_out_handle
cdef godot_method_bind *bind_animation_bezier_track_set_key_value
cdef godot_method_bind *bind_animation_clear
cdef godot_method_bind *bind_animation_copy_track
cdef godot_method_bind *bind_animation_find_track
cdef godot_method_bind *bind_animation_get_length
cdef godot_method_bind *bind_animation_get_step
cdef godot_method_bind *bind_animation_get_track_count
cdef godot_method_bind *bind_animation_has_loop
cdef godot_method_bind *bind_animation_method_track_get_key_indices
cdef godot_method_bind *bind_animation_method_track_get_name
cdef godot_method_bind *bind_animation_method_track_get_params
cdef godot_method_bind *bind_animation_remove_track
cdef godot_method_bind *bind_animation_set_length
cdef godot_method_bind *bind_animation_set_loop
cdef godot_method_bind *bind_animation_set_step
cdef godot_method_bind *bind_animation_track_find_key
cdef godot_method_bind *bind_animation_track_get_interpolation_loop_wrap
cdef godot_method_bind *bind_animation_track_get_interpolation_type
cdef godot_method_bind *bind_animation_track_get_key_count
cdef godot_method_bind *bind_animation_track_get_key_time
cdef godot_method_bind *bind_animation_track_get_key_transition
cdef godot_method_bind *bind_animation_track_get_key_value
cdef godot_method_bind *bind_animation_track_get_path
cdef godot_method_bind *bind_animation_track_get_type
cdef godot_method_bind *bind_animation_track_insert_key
cdef godot_method_bind *bind_animation_track_is_enabled
cdef godot_method_bind *bind_animation_track_is_imported
cdef godot_method_bind *bind_animation_track_move_down
cdef godot_method_bind *bind_animation_track_move_to
cdef godot_method_bind *bind_animation_track_move_up
cdef godot_method_bind *bind_animation_track_remove_key
cdef godot_method_bind *bind_animation_track_remove_key_at_position
cdef godot_method_bind *bind_animation_track_set_enabled
cdef godot_method_bind *bind_animation_track_set_imported
cdef godot_method_bind *bind_animation_track_set_interpolation_loop_wrap
cdef godot_method_bind *bind_animation_track_set_interpolation_type
cdef godot_method_bind *bind_animation_track_set_key_time
cdef godot_method_bind *bind_animation_track_set_key_transition
cdef godot_method_bind *bind_animation_track_set_key_value
cdef godot_method_bind *bind_animation_track_set_path
cdef godot_method_bind *bind_animation_track_swap
cdef godot_method_bind *bind_animation_transform_track_insert_key
cdef godot_method_bind *bind_animation_transform_track_interpolate
cdef godot_method_bind *bind_animation_value_track_get_key_indices
cdef godot_method_bind *bind_animation_value_track_get_update_mode
cdef godot_method_bind *bind_animation_value_track_set_update_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animation_add_track = api_core.godot_method_bind_get_method('Animation', 'add_track')
  bind_animation_animation_track_get_key_animation = api_core.godot_method_bind_get_method('Animation', 'animation_track_get_key_animation')
  bind_animation_animation_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'animation_track_insert_key')
  bind_animation_animation_track_set_key_animation = api_core.godot_method_bind_get_method('Animation', 'animation_track_set_key_animation')
  bind_animation_audio_track_get_key_end_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_get_key_end_offset')
  bind_animation_audio_track_get_key_start_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_get_key_start_offset')
  bind_animation_audio_track_get_key_stream = api_core.godot_method_bind_get_method('Animation', 'audio_track_get_key_stream')
  bind_animation_audio_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'audio_track_insert_key')
  bind_animation_audio_track_set_key_end_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_set_key_end_offset')
  bind_animation_audio_track_set_key_start_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_set_key_start_offset')
  bind_animation_audio_track_set_key_stream = api_core.godot_method_bind_get_method('Animation', 'audio_track_set_key_stream')
  bind_animation_bezier_track_get_key_in_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_get_key_in_handle')
  bind_animation_bezier_track_get_key_out_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_get_key_out_handle')
  bind_animation_bezier_track_get_key_value = api_core.godot_method_bind_get_method('Animation', 'bezier_track_get_key_value')
  bind_animation_bezier_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'bezier_track_insert_key')
  bind_animation_bezier_track_interpolate = api_core.godot_method_bind_get_method('Animation', 'bezier_track_interpolate')
  bind_animation_bezier_track_set_key_in_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_set_key_in_handle')
  bind_animation_bezier_track_set_key_out_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_set_key_out_handle')
  bind_animation_bezier_track_set_key_value = api_core.godot_method_bind_get_method('Animation', 'bezier_track_set_key_value')
  bind_animation_clear = api_core.godot_method_bind_get_method('Animation', 'clear')
  bind_animation_copy_track = api_core.godot_method_bind_get_method('Animation', 'copy_track')
  bind_animation_find_track = api_core.godot_method_bind_get_method('Animation', 'find_track')
  bind_animation_get_length = api_core.godot_method_bind_get_method('Animation', 'get_length')
  bind_animation_get_step = api_core.godot_method_bind_get_method('Animation', 'get_step')
  bind_animation_get_track_count = api_core.godot_method_bind_get_method('Animation', 'get_track_count')
  bind_animation_has_loop = api_core.godot_method_bind_get_method('Animation', 'has_loop')
  bind_animation_method_track_get_key_indices = api_core.godot_method_bind_get_method('Animation', 'method_track_get_key_indices')
  bind_animation_method_track_get_name = api_core.godot_method_bind_get_method('Animation', 'method_track_get_name')
  bind_animation_method_track_get_params = api_core.godot_method_bind_get_method('Animation', 'method_track_get_params')
  bind_animation_remove_track = api_core.godot_method_bind_get_method('Animation', 'remove_track')
  bind_animation_set_length = api_core.godot_method_bind_get_method('Animation', 'set_length')
  bind_animation_set_loop = api_core.godot_method_bind_get_method('Animation', 'set_loop')
  bind_animation_set_step = api_core.godot_method_bind_get_method('Animation', 'set_step')
  bind_animation_track_find_key = api_core.godot_method_bind_get_method('Animation', 'track_find_key')
  bind_animation_track_get_interpolation_loop_wrap = api_core.godot_method_bind_get_method('Animation', 'track_get_interpolation_loop_wrap')
  bind_animation_track_get_interpolation_type = api_core.godot_method_bind_get_method('Animation', 'track_get_interpolation_type')
  bind_animation_track_get_key_count = api_core.godot_method_bind_get_method('Animation', 'track_get_key_count')
  bind_animation_track_get_key_time = api_core.godot_method_bind_get_method('Animation', 'track_get_key_time')
  bind_animation_track_get_key_transition = api_core.godot_method_bind_get_method('Animation', 'track_get_key_transition')
  bind_animation_track_get_key_value = api_core.godot_method_bind_get_method('Animation', 'track_get_key_value')
  bind_animation_track_get_path = api_core.godot_method_bind_get_method('Animation', 'track_get_path')
  bind_animation_track_get_type = api_core.godot_method_bind_get_method('Animation', 'track_get_type')
  bind_animation_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'track_insert_key')
  bind_animation_track_is_enabled = api_core.godot_method_bind_get_method('Animation', 'track_is_enabled')
  bind_animation_track_is_imported = api_core.godot_method_bind_get_method('Animation', 'track_is_imported')
  bind_animation_track_move_down = api_core.godot_method_bind_get_method('Animation', 'track_move_down')
  bind_animation_track_move_to = api_core.godot_method_bind_get_method('Animation', 'track_move_to')
  bind_animation_track_move_up = api_core.godot_method_bind_get_method('Animation', 'track_move_up')
  bind_animation_track_remove_key = api_core.godot_method_bind_get_method('Animation', 'track_remove_key')
  bind_animation_track_remove_key_at_position = api_core.godot_method_bind_get_method('Animation', 'track_remove_key_at_position')
  bind_animation_track_set_enabled = api_core.godot_method_bind_get_method('Animation', 'track_set_enabled')
  bind_animation_track_set_imported = api_core.godot_method_bind_get_method('Animation', 'track_set_imported')
  bind_animation_track_set_interpolation_loop_wrap = api_core.godot_method_bind_get_method('Animation', 'track_set_interpolation_loop_wrap')
  bind_animation_track_set_interpolation_type = api_core.godot_method_bind_get_method('Animation', 'track_set_interpolation_type')
  bind_animation_track_set_key_time = api_core.godot_method_bind_get_method('Animation', 'track_set_key_time')
  bind_animation_track_set_key_transition = api_core.godot_method_bind_get_method('Animation', 'track_set_key_transition')
  bind_animation_track_set_key_value = api_core.godot_method_bind_get_method('Animation', 'track_set_key_value')
  bind_animation_track_set_path = api_core.godot_method_bind_get_method('Animation', 'track_set_path')
  bind_animation_track_swap = api_core.godot_method_bind_get_method('Animation', 'track_swap')
  bind_animation_transform_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'transform_track_insert_key')
  bind_animation_transform_track_interpolate = api_core.godot_method_bind_get_method('Animation', 'transform_track_interpolate')
  bind_animation_value_track_get_key_indices = api_core.godot_method_bind_get_method('Animation', 'value_track_get_key_indices')
  bind_animation_value_track_get_update_mode = api_core.godot_method_bind_get_method('Animation', 'value_track_get_update_mode')
  bind_animation_value_track_set_update_mode = api_core.godot_method_bind_get_method('Animation', 'value_track_set_update_mode')

############################Generated class###################################
cdef class Animation(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Animation")())
##################################Generated Properties#########################################
  @property
  def length(self): 
    return self.get_length()
  @length.setter 
  def length(self,value): 
    self.set_length(value)
  @property
  def loop(self): 
    return self.get_loop()
  @loop.setter 
  def loop(self,value): 
    self.set_loop(value)
  @property
  def step(self): 
    return self.get_step()
  @step.setter 
  def step(self,value): 
    self.set_step(value)

##################################Generated Methods#########################################
  def  add_track(self, typeat_position):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_add_track,self.godot_owner,[NULL,],&ret)
  def  animation_track_get_key_animation(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animation_animation_track_get_key_animation,self.godot_owner,[NULL,],&ret)
  def  animation_track_insert_key(self, track_idxtimeanimation):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_animation_track_insert_key,self.godot_owner,[NULL,],&ret)
  def  animation_track_set_key_animation(self, track_idxkey_idxanimation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_animation_track_set_key_animation,self.godot_owner,[NULL,],NULL)
  def  audio_track_get_key_end_offset(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_get_key_end_offset,self.godot_owner,[NULL,],&ret)
  def  audio_track_get_key_start_offset(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_get_key_start_offset,self.godot_owner,[NULL,],&ret)
  def  audio_track_get_key_stream(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Resource ret
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_get_key_stream,self.godot_owner,[NULL,],&ret)
  def  audio_track_insert_key(self, track_idxtimestreamstart_offsetend_offset):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_insert_key,self.godot_owner,[NULL,],&ret)
  def  audio_track_set_key_end_offset(self, track_idxkey_idxoffset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_set_key_end_offset,self.godot_owner,[NULL,],NULL)
  def  audio_track_set_key_start_offset(self, track_idxkey_idxoffset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_set_key_start_offset,self.godot_owner,[NULL,],NULL)
  def  audio_track_set_key_stream(self, track_idxkey_idxstream):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_set_key_stream,self.godot_owner,[NULL,],NULL)
  def  bezier_track_get_key_in_handle(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_get_key_in_handle,self.godot_owner,[NULL,],&ret)
  def  bezier_track_get_key_out_handle(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_get_key_out_handle,self.godot_owner,[NULL,],&ret)
  def  bezier_track_get_key_value(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_get_key_value,self.godot_owner,[NULL,],&ret)
  def  bezier_track_insert_key(self, track_idxtimevaluein_handleout_handle):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_insert_key,self.godot_owner,[NULL,],&ret)
  def  bezier_track_interpolate(self, track_idxtime):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_interpolate,self.godot_owner,[NULL,],&ret)
  def  bezier_track_set_key_in_handle(self, track_idxkey_idxin_handle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_set_key_in_handle,self.godot_owner,[NULL,],NULL)
  def  bezier_track_set_key_out_handle(self, track_idxkey_idxout_handle):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_set_key_out_handle,self.godot_owner,[NULL,],NULL)
  def  bezier_track_set_key_value(self, track_idxkey_idxvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_set_key_value,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_clear,self.godot_owner,[NULL,],NULL)
  def  copy_track(self, track_idxto_animation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_copy_track,self.godot_owner,[NULL,],NULL)
  def  find_track(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_find_track,self.godot_owner,[NULL,],&ret)
  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_get_length,self.godot_owner,[NULL,],&ret)
  def  get_step(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_get_step,self.godot_owner,[NULL,],&ret)
  def  get_track_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_get_track_count,self.godot_owner,[NULL,],&ret)
  def  has_loop(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animation_has_loop,self.godot_owner,[NULL,],&ret)
  def  method_track_get_key_indices(self, track_idxtime_secdelta):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_animation_method_track_get_key_indices,self.godot_owner,[NULL,],&ret)
  def  method_track_get_name(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animation_method_track_get_name,self.godot_owner,[NULL,],&ret)
  def  method_track_get_params(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_animation_method_track_get_params,self.godot_owner,[NULL,],&ret)
  def  remove_track(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_remove_track,self.godot_owner,[NULL,],NULL)
  def  set_length(self, time_sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_set_length,self.godot_owner,[NULL,],NULL)
  def  set_loop(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_set_loop,self.godot_owner,[NULL,],NULL)
  def  set_step(self, size_sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_set_step,self.godot_owner,[NULL,],NULL)
  def  track_find_key(self, track_idxtimeexact):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_find_key,self.godot_owner,[NULL,],&ret)
  def  track_get_interpolation_loop_wrap(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_interpolation_loop_wrap,self.godot_owner,[NULL,],&ret)
  def  track_get_interpolation_type(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Animation::InterpolationType ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_interpolation_type,self.godot_owner,[NULL,],&ret)
  def  track_get_key_count(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_count,self.godot_owner,[NULL,],&ret)
  def  track_get_key_time(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_time,self.godot_owner,[NULL,],&ret)
  def  track_get_key_transition(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_transition,self.godot_owner,[NULL,],&ret)
  def  track_get_key_value(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_value,self.godot_owner,[NULL,],&ret)
  def  track_get_path(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_path,self.godot_owner,[NULL,],&ret)
  def  track_get_type(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Animation::TrackType ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_type,self.godot_owner,[NULL,],&ret)
  def  track_insert_key(self, track_idxtimekeytransition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_insert_key,self.godot_owner,[NULL,],NULL)
  def  track_is_enabled(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_is_enabled,self.godot_owner,[NULL,],&ret)
  def  track_is_imported(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animation_track_is_imported,self.godot_owner,[NULL,],&ret)
  def  track_move_down(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_move_down,self.godot_owner,[NULL,],NULL)
  def  track_move_to(self, track_idxto_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_move_to,self.godot_owner,[NULL,],NULL)
  def  track_move_up(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_move_up,self.godot_owner,[NULL,],NULL)
  def  track_remove_key(self, track_idxkey_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_remove_key,self.godot_owner,[NULL,],NULL)
  def  track_remove_key_at_position(self, track_idxposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_remove_key_at_position,self.godot_owner,[NULL,],NULL)
  def  track_set_enabled(self, track_idxenabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_enabled,self.godot_owner,[NULL,],NULL)
  def  track_set_imported(self, track_idximported):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_imported,self.godot_owner,[NULL,],NULL)
  def  track_set_interpolation_loop_wrap(self, track_idxinterpolation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_interpolation_loop_wrap,self.godot_owner,[NULL,],NULL)
  def  track_set_interpolation_type(self, track_idxinterpolation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_interpolation_type,self.godot_owner,[NULL,],NULL)
  def  track_set_key_time(self, track_idxkey_idxtime):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_key_time,self.godot_owner,[NULL,],NULL)
  def  track_set_key_transition(self, track_idxkey_idxtransition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_key_transition,self.godot_owner,[NULL,],NULL)
  def  track_set_key_value(self, track_idxkeyvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_key_value,self.godot_owner,[NULL,],NULL)
  def  track_set_path(self, track_idxpath):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_path,self.godot_owner,[NULL,],NULL)
  def  track_swap(self, track_idxwith_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_track_swap,self.godot_owner,[NULL,],NULL)
  def  transform_track_insert_key(self, track_idxtimelocationrotationscale):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animation_transform_track_insert_key,self.godot_owner,[NULL,],&ret)
  def  transform_track_interpolate(self, track_idxtime_sec):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_animation_transform_track_interpolate,self.godot_owner,[NULL,],&ret)
  def  value_track_get_key_indices(self, track_idxtime_secdelta):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_animation_value_track_get_key_indices,self.godot_owner,[NULL,],&ret)
  def  value_track_get_update_mode(self, track_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Animation::UpdateMode ret
    api_core.godot_method_bind_ptrcall(bind_animation_value_track_get_update_mode,self.godot_owner,[NULL,],&ret)
  def  value_track_set_update_mode(self, track_idxmode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_value_track_set_update_mode,self.godot_owner,[NULL,],NULL)
