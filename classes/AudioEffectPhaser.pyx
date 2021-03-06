from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectphaser_get_depth
cdef godot_method_bind *bind_audioeffectphaser_get_feedback
cdef godot_method_bind *bind_audioeffectphaser_get_range_max_hz
cdef godot_method_bind *bind_audioeffectphaser_get_range_min_hz
cdef godot_method_bind *bind_audioeffectphaser_get_rate_hz
cdef godot_method_bind *bind_audioeffectphaser_set_depth
cdef godot_method_bind *bind_audioeffectphaser_set_feedback
cdef godot_method_bind *bind_audioeffectphaser_set_range_max_hz
cdef godot_method_bind *bind_audioeffectphaser_set_range_min_hz
cdef godot_method_bind *bind_audioeffectphaser_set_rate_hz
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectphaser_get_depth = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_depth')
  bind_audioeffectphaser_get_feedback = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_feedback')
  bind_audioeffectphaser_get_range_max_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_range_max_hz')
  bind_audioeffectphaser_get_range_min_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_range_min_hz')
  bind_audioeffectphaser_get_rate_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_rate_hz')
  bind_audioeffectphaser_set_depth = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_depth')
  bind_audioeffectphaser_set_feedback = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_feedback')
  bind_audioeffectphaser_set_range_max_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_range_max_hz')
  bind_audioeffectphaser_set_range_min_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_range_min_hz')
  bind_audioeffectphaser_set_rate_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_rate_hz')

############################Generated class###################################
cdef class AudioEffectPhaser(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectPhaser")())
##################################Generated Properties#########################################
  @property
  def depth(self): 
    return self.get_depth()
  @depth.setter 
  def depth(self,value): 
    self.set_depth(value)
  @property
  def feedback(self): 
    return self.get_feedback()
  @feedback.setter 
  def feedback(self,value): 
    self.set_feedback(value)
  @property
  def range_max_hz(self): 
    return self.get_range_max_hz()
  @range_max_hz.setter 
  def range_max_hz(self,value): 
    self.set_range_max_hz(value)
  @property
  def range_min_hz(self): 
    return self.get_range_min_hz()
  @range_min_hz.setter 
  def range_min_hz(self,value): 
    self.set_range_min_hz(value)
  @property
  def rate_hz(self): 
    return self.get_rate_hz()
  @rate_hz.setter 
  def rate_hz(self,value): 
    self.set_rate_hz(value)

##################################Generated Methods#########################################
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_depth,self.godot_owner,[NULL,],&ret)
  def  get_feedback(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_feedback,self.godot_owner,[NULL,],&ret)
  def  get_range_max_hz(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_range_max_hz,self.godot_owner,[NULL,],&ret)
  def  get_range_min_hz(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_range_min_hz,self.godot_owner,[NULL,],&ret)
  def  get_rate_hz(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_rate_hz,self.godot_owner,[NULL,],&ret)
  def  set_depth(self, depth):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_depth,self.godot_owner,[NULL,],NULL)
  def  set_feedback(self, fbk):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_feedback,self.godot_owner,[NULL,],NULL)
  def  set_range_max_hz(self, hz):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_range_max_hz,self.godot_owner,[NULL,],NULL)
  def  set_range_min_hz(self, hz):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_range_min_hz,self.godot_owner,[NULL,],NULL)
  def  set_rate_hz(self, hz):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_rate_hz,self.godot_owner,[NULL,],NULL)
