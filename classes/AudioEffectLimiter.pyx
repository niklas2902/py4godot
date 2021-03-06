from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectlimiter_get_ceiling_db
cdef godot_method_bind *bind_audioeffectlimiter_get_soft_clip_db
cdef godot_method_bind *bind_audioeffectlimiter_get_soft_clip_ratio
cdef godot_method_bind *bind_audioeffectlimiter_get_threshold_db
cdef godot_method_bind *bind_audioeffectlimiter_set_ceiling_db
cdef godot_method_bind *bind_audioeffectlimiter_set_soft_clip_db
cdef godot_method_bind *bind_audioeffectlimiter_set_soft_clip_ratio
cdef godot_method_bind *bind_audioeffectlimiter_set_threshold_db
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectlimiter_get_ceiling_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_ceiling_db')
  bind_audioeffectlimiter_get_soft_clip_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_soft_clip_db')
  bind_audioeffectlimiter_get_soft_clip_ratio = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_soft_clip_ratio')
  bind_audioeffectlimiter_get_threshold_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_threshold_db')
  bind_audioeffectlimiter_set_ceiling_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_ceiling_db')
  bind_audioeffectlimiter_set_soft_clip_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_soft_clip_db')
  bind_audioeffectlimiter_set_soft_clip_ratio = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_soft_clip_ratio')
  bind_audioeffectlimiter_set_threshold_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_threshold_db')

############################Generated class###################################
cdef class AudioEffectLimiter(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectLimiter")())
##################################Generated Properties#########################################
  @property
  def ceiling_db(self): 
    return self.get_ceiling_db()
  @ceiling_db.setter 
  def ceiling_db(self,value): 
    self.set_ceiling_db(value)
  @property
  def soft_clip_db(self): 
    return self.get_soft_clip_db()
  @soft_clip_db.setter 
  def soft_clip_db(self,value): 
    self.set_soft_clip_db(value)
  @property
  def soft_clip_ratio(self): 
    return self.get_soft_clip_ratio()
  @soft_clip_ratio.setter 
  def soft_clip_ratio(self,value): 
    self.set_soft_clip_ratio(value)
  @property
  def threshold_db(self): 
    return self.get_threshold_db()
  @threshold_db.setter 
  def threshold_db(self,value): 
    self.set_threshold_db(value)

##################################Generated Methods#########################################
  def  get_ceiling_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_ceiling_db,self.godot_owner,[NULL,],&ret)
  def  get_soft_clip_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_soft_clip_db,self.godot_owner,[NULL,],&ret)
  def  get_soft_clip_ratio(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_soft_clip_ratio,self.godot_owner,[NULL,],&ret)
  def  get_threshold_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_threshold_db,self.godot_owner,[NULL,],&ret)
  def  set_ceiling_db(self, ceiling):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_ceiling_db,self.godot_owner,[NULL,],NULL)
  def  set_soft_clip_db(self, soft_clip):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_soft_clip_db,self.godot_owner,[NULL,],NULL)
  def  set_soft_clip_ratio(self, soft_clip):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_soft_clip_ratio,self.godot_owner,[NULL,],NULL)
  def  set_threshold_db(self, threshold):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_threshold_db,self.godot_owner,[NULL,],NULL)
