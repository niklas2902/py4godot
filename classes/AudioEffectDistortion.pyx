from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectdistortion_get_drive
cdef godot_method_bind *bind_audioeffectdistortion_get_keep_hf_hz
cdef godot_method_bind *bind_audioeffectdistortion_get_mode
cdef godot_method_bind *bind_audioeffectdistortion_get_post_gain
cdef godot_method_bind *bind_audioeffectdistortion_get_pre_gain
cdef godot_method_bind *bind_audioeffectdistortion_set_drive
cdef godot_method_bind *bind_audioeffectdistortion_set_keep_hf_hz
cdef godot_method_bind *bind_audioeffectdistortion_set_mode
cdef godot_method_bind *bind_audioeffectdistortion_set_post_gain
cdef godot_method_bind *bind_audioeffectdistortion_set_pre_gain
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectdistortion_get_drive = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_drive')
  bind_audioeffectdistortion_get_keep_hf_hz = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_keep_hf_hz')
  bind_audioeffectdistortion_get_mode = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_mode')
  bind_audioeffectdistortion_get_post_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_post_gain')
  bind_audioeffectdistortion_get_pre_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_pre_gain')
  bind_audioeffectdistortion_set_drive = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_drive')
  bind_audioeffectdistortion_set_keep_hf_hz = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_keep_hf_hz')
  bind_audioeffectdistortion_set_mode = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_mode')
  bind_audioeffectdistortion_set_post_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_post_gain')
  bind_audioeffectdistortion_set_pre_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_pre_gain')

############################Generated class###################################
cdef class AudioEffectDistortion(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectDistortion")())
##################################Generated Properties#########################################
  @property
  def drive(self): 
    return self.get_drive()
  @drive.setter 
  def drive(self,value): 
    self.set_drive(value)
  @property
  def keep_hf_hz(self): 
    return self.get_keep_hf_hz()
  @keep_hf_hz.setter 
  def keep_hf_hz(self,value): 
    self.set_keep_hf_hz(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def post_gain(self): 
    return self.get_post_gain()
  @post_gain.setter 
  def post_gain(self,value): 
    self.set_post_gain(value)
  @property
  def pre_gain(self): 
    return self.get_pre_gain()
  @pre_gain.setter 
  def pre_gain(self,value): 
    self.set_pre_gain(value)

##################################Generated Methods#########################################
  def  get_drive(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_drive,self.godot_owner,[NULL,],&ret)
  def  get_keep_hf_hz(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_keep_hf_hz,self.godot_owner,[NULL,],&ret)
  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioEffectDistortion::Mode ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_mode,self.godot_owner,[NULL,],&ret)
  def  get_post_gain(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_post_gain,self.godot_owner,[NULL,],&ret)
  def  get_pre_gain(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_pre_gain,self.godot_owner,[NULL,],&ret)
  def  set_drive(self, drive):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_drive,self.godot_owner,[NULL,],NULL)
  def  set_keep_hf_hz(self, keep_hf_hz):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_keep_hf_hz,self.godot_owner,[NULL,],NULL)
  def  set_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_mode,self.godot_owner,[NULL,],NULL)
  def  set_post_gain(self, post_gain):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_post_gain,self.godot_owner,[NULL,],NULL)
  def  set_pre_gain(self, pre_gain):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_pre_gain,self.godot_owner,[NULL,],NULL)
