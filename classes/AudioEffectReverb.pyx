from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectreverb_get_damping
cdef godot_method_bind *bind_audioeffectreverb_get_dry
cdef godot_method_bind *bind_audioeffectreverb_get_hpf
cdef godot_method_bind *bind_audioeffectreverb_get_predelay_feedback
cdef godot_method_bind *bind_audioeffectreverb_get_predelay_msec
cdef godot_method_bind *bind_audioeffectreverb_get_room_size
cdef godot_method_bind *bind_audioeffectreverb_get_spread
cdef godot_method_bind *bind_audioeffectreverb_get_wet
cdef godot_method_bind *bind_audioeffectreverb_set_damping
cdef godot_method_bind *bind_audioeffectreverb_set_dry
cdef godot_method_bind *bind_audioeffectreverb_set_hpf
cdef godot_method_bind *bind_audioeffectreverb_set_predelay_feedback
cdef godot_method_bind *bind_audioeffectreverb_set_predelay_msec
cdef godot_method_bind *bind_audioeffectreverb_set_room_size
cdef godot_method_bind *bind_audioeffectreverb_set_spread
cdef godot_method_bind *bind_audioeffectreverb_set_wet
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectreverb_get_damping = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_damping')
  bind_audioeffectreverb_get_dry = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_dry')
  bind_audioeffectreverb_get_hpf = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_hpf')
  bind_audioeffectreverb_get_predelay_feedback = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_predelay_feedback')
  bind_audioeffectreverb_get_predelay_msec = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_predelay_msec')
  bind_audioeffectreverb_get_room_size = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_room_size')
  bind_audioeffectreverb_get_spread = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_spread')
  bind_audioeffectreverb_get_wet = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_wet')
  bind_audioeffectreverb_set_damping = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_damping')
  bind_audioeffectreverb_set_dry = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_dry')
  bind_audioeffectreverb_set_hpf = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_hpf')
  bind_audioeffectreverb_set_predelay_feedback = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_predelay_feedback')
  bind_audioeffectreverb_set_predelay_msec = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_predelay_msec')
  bind_audioeffectreverb_set_room_size = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_room_size')
  bind_audioeffectreverb_set_spread = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_spread')
  bind_audioeffectreverb_set_wet = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_wet')

############################Generated class###################################
cdef class AudioEffectReverb(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectReverb")())
##################################Generated Properties#########################################
  @property
  def damping(self): 
    return self.get_damping()
  @damping.setter 
  def damping(self,value): 
    self.set_damping(value)
  @property
  def dry(self): 
    return self.get_dry()
  @dry.setter 
  def dry(self,value): 
    self.set_dry(value)
  @property
  def hipass(self): 
    return self.get_hipass()
  @hipass.setter 
  def hipass(self,value): 
    self.set_hipass(value)
  @property
  def predelay_feedback(self): 
    return self.get_predelay_feedback()
  @predelay_feedback.setter 
  def predelay_feedback(self,value): 
    self.set_predelay_feedback(value)
  @property
  def predelay_msec(self): 
    return self.get_predelay_msec()
  @predelay_msec.setter 
  def predelay_msec(self,value): 
    self.set_predelay_msec(value)
  @property
  def room_size(self): 
    return self.get_room_size()
  @room_size.setter 
  def room_size(self,value): 
    self.set_room_size(value)
  @property
  def spread(self): 
    return self.get_spread()
  @spread.setter 
  def spread(self,value): 
    self.set_spread(value)
  @property
  def wet(self): 
    return self.get_wet()
  @wet.setter 
  def wet(self,value): 
    self.set_wet(value)

##################################Generated Methods#########################################
  def  get_damping(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_damping,self.godot_owner,[NULL,],&ret)
  def  get_dry(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_dry,self.godot_owner,[NULL,],&ret)
  def  get_hpf(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_hpf,self.godot_owner,[NULL,],&ret)
  def  get_predelay_feedback(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_predelay_feedback,self.godot_owner,[NULL,],&ret)
  def  get_predelay_msec(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_predelay_msec,self.godot_owner,[NULL,],&ret)
  def  get_room_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_room_size,self.godot_owner,[NULL,],&ret)
  def  get_spread(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_spread,self.godot_owner,[NULL,],&ret)
  def  get_wet(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_wet,self.godot_owner,[NULL,],&ret)
  def  set_damping(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_damping,self.godot_owner,[NULL,],NULL)
  def  set_dry(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_dry,self.godot_owner,[NULL,],NULL)
  def  set_hpf(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_hpf,self.godot_owner,[NULL,],NULL)
  def  set_predelay_feedback(self, feedback):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_predelay_feedback,self.godot_owner,[NULL,],NULL)
  def  set_predelay_msec(self, msec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_predelay_msec,self.godot_owner,[NULL,],NULL)
  def  set_room_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_room_size,self.godot_owner,[NULL,],NULL)
  def  set_spread(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_spread,self.godot_owner,[NULL,],NULL)
  def  set_wet(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_wet,self.godot_owner,[NULL,],NULL)
