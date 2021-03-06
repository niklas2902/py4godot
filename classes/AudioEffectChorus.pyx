from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectchorus_get_dry
cdef godot_method_bind *bind_audioeffectchorus_get_voice_count
cdef godot_method_bind *bind_audioeffectchorus_get_voice_cutoff_hz
cdef godot_method_bind *bind_audioeffectchorus_get_voice_delay_ms
cdef godot_method_bind *bind_audioeffectchorus_get_voice_depth_ms
cdef godot_method_bind *bind_audioeffectchorus_get_voice_level_db
cdef godot_method_bind *bind_audioeffectchorus_get_voice_pan
cdef godot_method_bind *bind_audioeffectchorus_get_voice_rate_hz
cdef godot_method_bind *bind_audioeffectchorus_get_wet
cdef godot_method_bind *bind_audioeffectchorus_set_dry
cdef godot_method_bind *bind_audioeffectchorus_set_voice_count
cdef godot_method_bind *bind_audioeffectchorus_set_voice_cutoff_hz
cdef godot_method_bind *bind_audioeffectchorus_set_voice_delay_ms
cdef godot_method_bind *bind_audioeffectchorus_set_voice_depth_ms
cdef godot_method_bind *bind_audioeffectchorus_set_voice_level_db
cdef godot_method_bind *bind_audioeffectchorus_set_voice_pan
cdef godot_method_bind *bind_audioeffectchorus_set_voice_rate_hz
cdef godot_method_bind *bind_audioeffectchorus_set_wet
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectchorus_get_dry = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_dry')
  bind_audioeffectchorus_get_voice_count = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_count')
  bind_audioeffectchorus_get_voice_cutoff_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_cutoff_hz')
  bind_audioeffectchorus_get_voice_delay_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_delay_ms')
  bind_audioeffectchorus_get_voice_depth_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_depth_ms')
  bind_audioeffectchorus_get_voice_level_db = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_level_db')
  bind_audioeffectchorus_get_voice_pan = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_pan')
  bind_audioeffectchorus_get_voice_rate_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_rate_hz')
  bind_audioeffectchorus_get_wet = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_wet')
  bind_audioeffectchorus_set_dry = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_dry')
  bind_audioeffectchorus_set_voice_count = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_count')
  bind_audioeffectchorus_set_voice_cutoff_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_cutoff_hz')
  bind_audioeffectchorus_set_voice_delay_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_delay_ms')
  bind_audioeffectchorus_set_voice_depth_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_depth_ms')
  bind_audioeffectchorus_set_voice_level_db = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_level_db')
  bind_audioeffectchorus_set_voice_pan = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_pan')
  bind_audioeffectchorus_set_voice_rate_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_rate_hz')
  bind_audioeffectchorus_set_wet = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_wet')

############################Generated class###################################
cdef class AudioEffectChorus(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectChorus")())
##################################Generated Properties#########################################
  @property
  def dry(self): 
    return self.get_dry()
  @dry.setter 
  def dry(self,value): 
    self.set_dry(value)
  @property
  def voice_1_cutoff_hz(self): 
    return self.get_voice_1_cutoff_hz()
  @voice_1_cutoff_hz.setter 
  def voice_1_cutoff_hz(self,value): 
    self.set_voice_1_cutoff_hz(value)
  @property
  def voice_1_delay_ms(self): 
    return self.get_voice_1_delay_ms()
  @voice_1_delay_ms.setter 
  def voice_1_delay_ms(self,value): 
    self.set_voice_1_delay_ms(value)
  @property
  def voice_1_depth_ms(self): 
    return self.get_voice_1_depth_ms()
  @voice_1_depth_ms.setter 
  def voice_1_depth_ms(self,value): 
    self.set_voice_1_depth_ms(value)
  @property
  def voice_1_level_db(self): 
    return self.get_voice_1_level_db()
  @voice_1_level_db.setter 
  def voice_1_level_db(self,value): 
    self.set_voice_1_level_db(value)
  @property
  def voice_1_pan(self): 
    return self.get_voice_1_pan()
  @voice_1_pan.setter 
  def voice_1_pan(self,value): 
    self.set_voice_1_pan(value)
  @property
  def voice_1_rate_hz(self): 
    return self.get_voice_1_rate_hz()
  @voice_1_rate_hz.setter 
  def voice_1_rate_hz(self,value): 
    self.set_voice_1_rate_hz(value)
  @property
  def voice_2_cutoff_hz(self): 
    return self.get_voice_2_cutoff_hz()
  @voice_2_cutoff_hz.setter 
  def voice_2_cutoff_hz(self,value): 
    self.set_voice_2_cutoff_hz(value)
  @property
  def voice_2_delay_ms(self): 
    return self.get_voice_2_delay_ms()
  @voice_2_delay_ms.setter 
  def voice_2_delay_ms(self,value): 
    self.set_voice_2_delay_ms(value)
  @property
  def voice_2_depth_ms(self): 
    return self.get_voice_2_depth_ms()
  @voice_2_depth_ms.setter 
  def voice_2_depth_ms(self,value): 
    self.set_voice_2_depth_ms(value)
  @property
  def voice_2_level_db(self): 
    return self.get_voice_2_level_db()
  @voice_2_level_db.setter 
  def voice_2_level_db(self,value): 
    self.set_voice_2_level_db(value)
  @property
  def voice_2_pan(self): 
    return self.get_voice_2_pan()
  @voice_2_pan.setter 
  def voice_2_pan(self,value): 
    self.set_voice_2_pan(value)
  @property
  def voice_2_rate_hz(self): 
    return self.get_voice_2_rate_hz()
  @voice_2_rate_hz.setter 
  def voice_2_rate_hz(self,value): 
    self.set_voice_2_rate_hz(value)
  @property
  def voice_3_cutoff_hz(self): 
    return self.get_voice_3_cutoff_hz()
  @voice_3_cutoff_hz.setter 
  def voice_3_cutoff_hz(self,value): 
    self.set_voice_3_cutoff_hz(value)
  @property
  def voice_3_delay_ms(self): 
    return self.get_voice_3_delay_ms()
  @voice_3_delay_ms.setter 
  def voice_3_delay_ms(self,value): 
    self.set_voice_3_delay_ms(value)
  @property
  def voice_3_depth_ms(self): 
    return self.get_voice_3_depth_ms()
  @voice_3_depth_ms.setter 
  def voice_3_depth_ms(self,value): 
    self.set_voice_3_depth_ms(value)
  @property
  def voice_3_level_db(self): 
    return self.get_voice_3_level_db()
  @voice_3_level_db.setter 
  def voice_3_level_db(self,value): 
    self.set_voice_3_level_db(value)
  @property
  def voice_3_pan(self): 
    return self.get_voice_3_pan()
  @voice_3_pan.setter 
  def voice_3_pan(self,value): 
    self.set_voice_3_pan(value)
  @property
  def voice_3_rate_hz(self): 
    return self.get_voice_3_rate_hz()
  @voice_3_rate_hz.setter 
  def voice_3_rate_hz(self,value): 
    self.set_voice_3_rate_hz(value)
  @property
  def voice_4_cutoff_hz(self): 
    return self.get_voice_4_cutoff_hz()
  @voice_4_cutoff_hz.setter 
  def voice_4_cutoff_hz(self,value): 
    self.set_voice_4_cutoff_hz(value)
  @property
  def voice_4_delay_ms(self): 
    return self.get_voice_4_delay_ms()
  @voice_4_delay_ms.setter 
  def voice_4_delay_ms(self,value): 
    self.set_voice_4_delay_ms(value)
  @property
  def voice_4_depth_ms(self): 
    return self.get_voice_4_depth_ms()
  @voice_4_depth_ms.setter 
  def voice_4_depth_ms(self,value): 
    self.set_voice_4_depth_ms(value)
  @property
  def voice_4_level_db(self): 
    return self.get_voice_4_level_db()
  @voice_4_level_db.setter 
  def voice_4_level_db(self,value): 
    self.set_voice_4_level_db(value)
  @property
  def voice_4_pan(self): 
    return self.get_voice_4_pan()
  @voice_4_pan.setter 
  def voice_4_pan(self,value): 
    self.set_voice_4_pan(value)
  @property
  def voice_4_rate_hz(self): 
    return self.get_voice_4_rate_hz()
  @voice_4_rate_hz.setter 
  def voice_4_rate_hz(self,value): 
    self.set_voice_4_rate_hz(value)
  @property
  def voice_count(self): 
    return self.get_voice_count()
  @voice_count.setter 
  def voice_count(self,value): 
    self.set_voice_count(value)
  @property
  def wet(self): 
    return self.get_wet()
  @wet.setter 
  def wet(self,value): 
    self.set_wet(value)

##################################Generated Methods#########################################
  def  get_dry(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_dry,self.godot_owner,[NULL,],&ret)
  def  get_voice_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_count,self.godot_owner,[NULL,],&ret)
  def  get_voice_cutoff_hz(self, voice_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_cutoff_hz,self.godot_owner,[NULL,],&ret)
  def  get_voice_delay_ms(self, voice_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_delay_ms,self.godot_owner,[NULL,],&ret)
  def  get_voice_depth_ms(self, voice_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_depth_ms,self.godot_owner,[NULL,],&ret)
  def  get_voice_level_db(self, voice_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_level_db,self.godot_owner,[NULL,],&ret)
  def  get_voice_pan(self, voice_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_pan,self.godot_owner,[NULL,],&ret)
  def  get_voice_rate_hz(self, voice_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_rate_hz,self.godot_owner,[NULL,],&ret)
  def  get_wet(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_wet,self.godot_owner,[NULL,],&ret)
  def  set_dry(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_dry,self.godot_owner,[NULL,],NULL)
  def  set_voice_count(self, voices):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_count,self.godot_owner,[NULL,],NULL)
  def  set_voice_cutoff_hz(self, voice_idxcutoff_hz):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_cutoff_hz,self.godot_owner,[NULL,],NULL)
  def  set_voice_delay_ms(self, voice_idxdelay_ms):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_delay_ms,self.godot_owner,[NULL,],NULL)
  def  set_voice_depth_ms(self, voice_idxdepth_ms):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_depth_ms,self.godot_owner,[NULL,],NULL)
  def  set_voice_level_db(self, voice_idxlevel_db):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_level_db,self.godot_owner,[NULL,],NULL)
  def  set_voice_pan(self, voice_idxpan):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_pan,self.godot_owner,[NULL,],NULL)
  def  set_voice_rate_hz(self, voice_idxrate_hz):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_rate_hz,self.godot_owner,[NULL,],NULL)
  def  set_wet(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_wet,self.godot_owner,[NULL,],NULL)
