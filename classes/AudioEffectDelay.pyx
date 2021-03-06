from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectdelay_get_dry
cdef godot_method_bind *bind_audioeffectdelay_get_feedback_delay_ms
cdef godot_method_bind *bind_audioeffectdelay_get_feedback_level_db
cdef godot_method_bind *bind_audioeffectdelay_get_feedback_lowpass
cdef godot_method_bind *bind_audioeffectdelay_get_tap1_delay_ms
cdef godot_method_bind *bind_audioeffectdelay_get_tap1_level_db
cdef godot_method_bind *bind_audioeffectdelay_get_tap1_pan
cdef godot_method_bind *bind_audioeffectdelay_get_tap2_delay_ms
cdef godot_method_bind *bind_audioeffectdelay_get_tap2_level_db
cdef godot_method_bind *bind_audioeffectdelay_get_tap2_pan
cdef godot_method_bind *bind_audioeffectdelay_is_feedback_active
cdef godot_method_bind *bind_audioeffectdelay_is_tap1_active
cdef godot_method_bind *bind_audioeffectdelay_is_tap2_active
cdef godot_method_bind *bind_audioeffectdelay_set_dry
cdef godot_method_bind *bind_audioeffectdelay_set_feedback_active
cdef godot_method_bind *bind_audioeffectdelay_set_feedback_delay_ms
cdef godot_method_bind *bind_audioeffectdelay_set_feedback_level_db
cdef godot_method_bind *bind_audioeffectdelay_set_feedback_lowpass
cdef godot_method_bind *bind_audioeffectdelay_set_tap1_active
cdef godot_method_bind *bind_audioeffectdelay_set_tap1_delay_ms
cdef godot_method_bind *bind_audioeffectdelay_set_tap1_level_db
cdef godot_method_bind *bind_audioeffectdelay_set_tap1_pan
cdef godot_method_bind *bind_audioeffectdelay_set_tap2_active
cdef godot_method_bind *bind_audioeffectdelay_set_tap2_delay_ms
cdef godot_method_bind *bind_audioeffectdelay_set_tap2_level_db
cdef godot_method_bind *bind_audioeffectdelay_set_tap2_pan
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectdelay_get_dry = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_dry')
  bind_audioeffectdelay_get_feedback_delay_ms = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_feedback_delay_ms')
  bind_audioeffectdelay_get_feedback_level_db = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_feedback_level_db')
  bind_audioeffectdelay_get_feedback_lowpass = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_feedback_lowpass')
  bind_audioeffectdelay_get_tap1_delay_ms = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_tap1_delay_ms')
  bind_audioeffectdelay_get_tap1_level_db = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_tap1_level_db')
  bind_audioeffectdelay_get_tap1_pan = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_tap1_pan')
  bind_audioeffectdelay_get_tap2_delay_ms = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_tap2_delay_ms')
  bind_audioeffectdelay_get_tap2_level_db = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_tap2_level_db')
  bind_audioeffectdelay_get_tap2_pan = api_core.godot_method_bind_get_method('AudioEffectDelay', 'get_tap2_pan')
  bind_audioeffectdelay_is_feedback_active = api_core.godot_method_bind_get_method('AudioEffectDelay', 'is_feedback_active')
  bind_audioeffectdelay_is_tap1_active = api_core.godot_method_bind_get_method('AudioEffectDelay', 'is_tap1_active')
  bind_audioeffectdelay_is_tap2_active = api_core.godot_method_bind_get_method('AudioEffectDelay', 'is_tap2_active')
  bind_audioeffectdelay_set_dry = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_dry')
  bind_audioeffectdelay_set_feedback_active = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_feedback_active')
  bind_audioeffectdelay_set_feedback_delay_ms = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_feedback_delay_ms')
  bind_audioeffectdelay_set_feedback_level_db = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_feedback_level_db')
  bind_audioeffectdelay_set_feedback_lowpass = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_feedback_lowpass')
  bind_audioeffectdelay_set_tap1_active = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap1_active')
  bind_audioeffectdelay_set_tap1_delay_ms = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap1_delay_ms')
  bind_audioeffectdelay_set_tap1_level_db = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap1_level_db')
  bind_audioeffectdelay_set_tap1_pan = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap1_pan')
  bind_audioeffectdelay_set_tap2_active = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap2_active')
  bind_audioeffectdelay_set_tap2_delay_ms = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap2_delay_ms')
  bind_audioeffectdelay_set_tap2_level_db = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap2_level_db')
  bind_audioeffectdelay_set_tap2_pan = api_core.godot_method_bind_get_method('AudioEffectDelay', 'set_tap2_pan')

############################Generated class###################################
cdef class AudioEffectDelay(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectDelay")())
##################################Generated Properties#########################################
  @property
  def dry(self): 
    return self.get_dry()
  @dry.setter 
  def dry(self,value): 
    self.set_dry(value)
  @property
  def feedback_active(self): 
    return self.get_feedback_active()
  @feedback_active.setter 
  def feedback_active(self,value): 
    self.set_feedback_active(value)
  @property
  def feedback_delay_ms(self): 
    return self.get_feedback_delay_ms()
  @feedback_delay_ms.setter 
  def feedback_delay_ms(self,value): 
    self.set_feedback_delay_ms(value)
  @property
  def feedback_level_db(self): 
    return self.get_feedback_level_db()
  @feedback_level_db.setter 
  def feedback_level_db(self,value): 
    self.set_feedback_level_db(value)
  @property
  def feedback_lowpass(self): 
    return self.get_feedback_lowpass()
  @feedback_lowpass.setter 
  def feedback_lowpass(self,value): 
    self.set_feedback_lowpass(value)
  @property
  def tap1_active(self): 
    return self.get_tap1_active()
  @tap1_active.setter 
  def tap1_active(self,value): 
    self.set_tap1_active(value)
  @property
  def tap1_delay_ms(self): 
    return self.get_tap1_delay_ms()
  @tap1_delay_ms.setter 
  def tap1_delay_ms(self,value): 
    self.set_tap1_delay_ms(value)
  @property
  def tap1_level_db(self): 
    return self.get_tap1_level_db()
  @tap1_level_db.setter 
  def tap1_level_db(self,value): 
    self.set_tap1_level_db(value)
  @property
  def tap1_pan(self): 
    return self.get_tap1_pan()
  @tap1_pan.setter 
  def tap1_pan(self,value): 
    self.set_tap1_pan(value)
  @property
  def tap2_active(self): 
    return self.get_tap2_active()
  @tap2_active.setter 
  def tap2_active(self,value): 
    self.set_tap2_active(value)
  @property
  def tap2_delay_ms(self): 
    return self.get_tap2_delay_ms()
  @tap2_delay_ms.setter 
  def tap2_delay_ms(self,value): 
    self.set_tap2_delay_ms(value)
  @property
  def tap2_level_db(self): 
    return self.get_tap2_level_db()
  @tap2_level_db.setter 
  def tap2_level_db(self,value): 
    self.set_tap2_level_db(value)
  @property
  def tap2_pan(self): 
    return self.get_tap2_pan()
  @tap2_pan.setter 
  def tap2_pan(self,value): 
    self.set_tap2_pan(value)

##################################Generated Methods#########################################
  def  get_dry(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_dry,self.godot_owner,[NULL,],&ret)
  def  get_feedback_delay_ms(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_feedback_delay_ms,self.godot_owner,[NULL,],&ret)
  def  get_feedback_level_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_feedback_level_db,self.godot_owner,[NULL,],&ret)
  def  get_feedback_lowpass(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_feedback_lowpass,self.godot_owner,[NULL,],&ret)
  def  get_tap1_delay_ms(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_tap1_delay_ms,self.godot_owner,[NULL,],&ret)
  def  get_tap1_level_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_tap1_level_db,self.godot_owner,[NULL,],&ret)
  def  get_tap1_pan(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_tap1_pan,self.godot_owner,[NULL,],&ret)
  def  get_tap2_delay_ms(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_tap2_delay_ms,self.godot_owner,[NULL,],&ret)
  def  get_tap2_level_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_tap2_level_db,self.godot_owner,[NULL,],&ret)
  def  get_tap2_pan(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_get_tap2_pan,self.godot_owner,[NULL,],&ret)
  def  is_feedback_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_is_feedback_active,self.godot_owner,[NULL,],&ret)
  def  is_tap1_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_is_tap1_active,self.godot_owner,[NULL,],&ret)
  def  is_tap2_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_is_tap2_active,self.godot_owner,[NULL,],&ret)
  def  set_dry(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_dry,self.godot_owner,[NULL,],NULL)
  def  set_feedback_active(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_feedback_active,self.godot_owner,[NULL,],NULL)
  def  set_feedback_delay_ms(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_feedback_delay_ms,self.godot_owner,[NULL,],NULL)
  def  set_feedback_level_db(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_feedback_level_db,self.godot_owner,[NULL,],NULL)
  def  set_feedback_lowpass(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_feedback_lowpass,self.godot_owner,[NULL,],NULL)
  def  set_tap1_active(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap1_active,self.godot_owner,[NULL,],NULL)
  def  set_tap1_delay_ms(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap1_delay_ms,self.godot_owner,[NULL,],NULL)
  def  set_tap1_level_db(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap1_level_db,self.godot_owner,[NULL,],NULL)
  def  set_tap1_pan(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap1_pan,self.godot_owner,[NULL,],NULL)
  def  set_tap2_active(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap2_active,self.godot_owner,[NULL,],NULL)
  def  set_tap2_delay_ms(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap2_delay_ms,self.godot_owner,[NULL,],NULL)
  def  set_tap2_level_db(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap2_level_db,self.godot_owner,[NULL,],NULL)
  def  set_tap2_pan(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectdelay_set_tap2_pan,self.godot_owner,[NULL,],NULL)
