from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tween__remove_by_uid
cdef godot_method_bind *bind_tween_follow_method
cdef godot_method_bind *bind_tween_follow_property
cdef godot_method_bind *bind_tween_get_runtime
cdef godot_method_bind *bind_tween_get_speed_scale
cdef godot_method_bind *bind_tween_get_tween_process_mode
cdef godot_method_bind *bind_tween_interpolate_callback
cdef godot_method_bind *bind_tween_interpolate_deferred_callback
cdef godot_method_bind *bind_tween_interpolate_method
cdef godot_method_bind *bind_tween_interpolate_property
cdef godot_method_bind *bind_tween_is_active
cdef godot_method_bind *bind_tween_is_repeat
cdef godot_method_bind *bind_tween_remove
cdef godot_method_bind *bind_tween_remove_all
cdef godot_method_bind *bind_tween_reset
cdef godot_method_bind *bind_tween_reset_all
cdef godot_method_bind *bind_tween_resume
cdef godot_method_bind *bind_tween_resume_all
cdef godot_method_bind *bind_tween_seek
cdef godot_method_bind *bind_tween_set_active
cdef godot_method_bind *bind_tween_set_repeat
cdef godot_method_bind *bind_tween_set_speed_scale
cdef godot_method_bind *bind_tween_set_tween_process_mode
cdef godot_method_bind *bind_tween_start
cdef godot_method_bind *bind_tween_stop
cdef godot_method_bind *bind_tween_stop_all
cdef godot_method_bind *bind_tween_targeting_method
cdef godot_method_bind *bind_tween_targeting_property
cdef godot_method_bind *bind_tween_tell
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tween__remove_by_uid = api_core.godot_method_bind_get_method('Tween', '_remove_by_uid')
  bind_tween_follow_method = api_core.godot_method_bind_get_method('Tween', 'follow_method')
  bind_tween_follow_property = api_core.godot_method_bind_get_method('Tween', 'follow_property')
  bind_tween_get_runtime = api_core.godot_method_bind_get_method('Tween', 'get_runtime')
  bind_tween_get_speed_scale = api_core.godot_method_bind_get_method('Tween', 'get_speed_scale')
  bind_tween_get_tween_process_mode = api_core.godot_method_bind_get_method('Tween', 'get_tween_process_mode')
  bind_tween_interpolate_callback = api_core.godot_method_bind_get_method('Tween', 'interpolate_callback')
  bind_tween_interpolate_deferred_callback = api_core.godot_method_bind_get_method('Tween', 'interpolate_deferred_callback')
  bind_tween_interpolate_method = api_core.godot_method_bind_get_method('Tween', 'interpolate_method')
  bind_tween_interpolate_property = api_core.godot_method_bind_get_method('Tween', 'interpolate_property')
  bind_tween_is_active = api_core.godot_method_bind_get_method('Tween', 'is_active')
  bind_tween_is_repeat = api_core.godot_method_bind_get_method('Tween', 'is_repeat')
  bind_tween_remove = api_core.godot_method_bind_get_method('Tween', 'remove')
  bind_tween_remove_all = api_core.godot_method_bind_get_method('Tween', 'remove_all')
  bind_tween_reset = api_core.godot_method_bind_get_method('Tween', 'reset')
  bind_tween_reset_all = api_core.godot_method_bind_get_method('Tween', 'reset_all')
  bind_tween_resume = api_core.godot_method_bind_get_method('Tween', 'resume')
  bind_tween_resume_all = api_core.godot_method_bind_get_method('Tween', 'resume_all')
  bind_tween_seek = api_core.godot_method_bind_get_method('Tween', 'seek')
  bind_tween_set_active = api_core.godot_method_bind_get_method('Tween', 'set_active')
  bind_tween_set_repeat = api_core.godot_method_bind_get_method('Tween', 'set_repeat')
  bind_tween_set_speed_scale = api_core.godot_method_bind_get_method('Tween', 'set_speed_scale')
  bind_tween_set_tween_process_mode = api_core.godot_method_bind_get_method('Tween', 'set_tween_process_mode')
  bind_tween_start = api_core.godot_method_bind_get_method('Tween', 'start')
  bind_tween_stop = api_core.godot_method_bind_get_method('Tween', 'stop')
  bind_tween_stop_all = api_core.godot_method_bind_get_method('Tween', 'stop_all')
  bind_tween_targeting_method = api_core.godot_method_bind_get_method('Tween', 'targeting_method')
  bind_tween_targeting_property = api_core.godot_method_bind_get_method('Tween', 'targeting_property')
  bind_tween_tell = api_core.godot_method_bind_get_method('Tween', 'tell')

############################Generated class###################################
cdef class Tween(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Tween")())
##################################Generated Properties#########################################
  @property
  def playback_process_mode(self): 
    return self.get_playback_process_mode()
  @playback_process_mode.setter 
  def playback_process_mode(self,value): 
    self.set_playback_process_mode(value)
  @property
  def playback_speed(self): 
    return self.get_playback_speed()
  @playback_speed.setter 
  def playback_speed(self,value): 
    self.set_playback_speed(value)
  @property
  def repeat(self): 
    return self.get_repeat()
  @repeat.setter 
  def repeat(self,value): 
    self.set_repeat(value)

##################################Generated Methods#########################################
  def  _remove_by_uid(self, uid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tween__remove_by_uid,self.godot_owner,[NULL,],NULL)
  def  follow_method(self, objectmethodinitial_valtargettarget_methoddurationtrans_typeease_typedelay):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_follow_method,self.godot_owner,[NULL,],&ret)
  def  follow_property(self, objectpropertyinitial_valtargettarget_propertydurationtrans_typeease_typedelay):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_follow_property,self.godot_owner,[NULL,],&ret)
  def  get_runtime(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_tween_get_runtime,self.godot_owner,[NULL,],&ret)
  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_tween_get_speed_scale,self.godot_owner,[NULL,],&ret)
  def  get_tween_process_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Tween::TweenProcessMode ret
    api_core.godot_method_bind_ptrcall(bind_tween_get_tween_process_mode,self.godot_owner,[NULL,],&ret)
  def  interpolate_callback(self, objectdurationcallbackarg1arg2arg3arg4arg5):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_callback,self.godot_owner,[NULL,],&ret)
  def  interpolate_deferred_callback(self, objectdurationcallbackarg1arg2arg3arg4arg5):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_deferred_callback,self.godot_owner,[NULL,],&ret)
  def  interpolate_method(self, objectmethodinitial_valfinal_valdurationtrans_typeease_typedelay):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_method,self.godot_owner,[NULL,],&ret)
  def  interpolate_property(self, objectpropertyinitial_valfinal_valdurationtrans_typeease_typedelay):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_property,self.godot_owner,[NULL,],&ret)
  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_is_active,self.godot_owner,[NULL,],&ret)
  def  is_repeat(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_is_repeat,self.godot_owner,[NULL,],&ret)
  def  remove(self, objectkey):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_remove,self.godot_owner,[NULL,],&ret)
  def  remove_all(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_remove_all,self.godot_owner,[NULL,],&ret)
  def  reset(self, objectkey):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_reset,self.godot_owner,[NULL,],&ret)
  def  reset_all(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_reset_all,self.godot_owner,[NULL,],&ret)
  def  resume(self, objectkey):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_resume,self.godot_owner,[NULL,],&ret)
  def  resume_all(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_resume_all,self.godot_owner,[NULL,],&ret)
  def  seek(self, time):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_seek,self.godot_owner,[NULL,],&ret)
  def  set_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tween_set_active,self.godot_owner,[NULL,],NULL)
  def  set_repeat(self, repeat):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tween_set_repeat,self.godot_owner,[NULL,],NULL)
  def  set_speed_scale(self, speed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tween_set_speed_scale,self.godot_owner,[NULL,],NULL)
  def  set_tween_process_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tween_set_tween_process_mode,self.godot_owner,[NULL,],NULL)
  def  start(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_start,self.godot_owner,[NULL,],&ret)
  def  stop(self, objectkey):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_stop,self.godot_owner,[NULL,],&ret)
  def  stop_all(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_stop_all,self.godot_owner,[NULL,],&ret)
  def  targeting_method(self, objectmethodinitialinitial_methodfinal_valdurationtrans_typeease_typedelay):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_targeting_method,self.godot_owner,[NULL,],&ret)
  def  targeting_property(self, objectpropertyinitialinitial_valfinal_valdurationtrans_typeease_typedelay):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tween_targeting_property,self.godot_owner,[NULL,],&ret)
  def  tell(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_tween_tell,self.godot_owner,[NULL,],&ret)
