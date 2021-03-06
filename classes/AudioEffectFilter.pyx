from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectfilter_get_cutoff
cdef godot_method_bind *bind_audioeffectfilter_get_db
cdef godot_method_bind *bind_audioeffectfilter_get_gain
cdef godot_method_bind *bind_audioeffectfilter_get_resonance
cdef godot_method_bind *bind_audioeffectfilter_set_cutoff
cdef godot_method_bind *bind_audioeffectfilter_set_db
cdef godot_method_bind *bind_audioeffectfilter_set_gain
cdef godot_method_bind *bind_audioeffectfilter_set_resonance
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectfilter_get_cutoff = api_core.godot_method_bind_get_method('AudioEffectFilter', 'get_cutoff')
  bind_audioeffectfilter_get_db = api_core.godot_method_bind_get_method('AudioEffectFilter', 'get_db')
  bind_audioeffectfilter_get_gain = api_core.godot_method_bind_get_method('AudioEffectFilter', 'get_gain')
  bind_audioeffectfilter_get_resonance = api_core.godot_method_bind_get_method('AudioEffectFilter', 'get_resonance')
  bind_audioeffectfilter_set_cutoff = api_core.godot_method_bind_get_method('AudioEffectFilter', 'set_cutoff')
  bind_audioeffectfilter_set_db = api_core.godot_method_bind_get_method('AudioEffectFilter', 'set_db')
  bind_audioeffectfilter_set_gain = api_core.godot_method_bind_get_method('AudioEffectFilter', 'set_gain')
  bind_audioeffectfilter_set_resonance = api_core.godot_method_bind_get_method('AudioEffectFilter', 'set_resonance')

############################Generated class###################################
cdef class AudioEffectFilter(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectFilter")())
##################################Generated Properties#########################################
  @property
  def cutoff_hz(self): 
    return self.get_cutoff_hz()
  @cutoff_hz.setter 
  def cutoff_hz(self,value): 
    self.set_cutoff_hz(value)
  @property
  def db(self): 
    return self.get_db()
  @db.setter 
  def db(self,value): 
    self.set_db(value)
  @property
  def gain(self): 
    return self.get_gain()
  @gain.setter 
  def gain(self,value): 
    self.set_gain(value)
  @property
  def resonance(self): 
    return self.get_resonance()
  @resonance.setter 
  def resonance(self,value): 
    self.set_resonance(value)

##################################Generated Methods#########################################
  def  get_cutoff(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_get_cutoff,self.godot_owner,[NULL,],&ret)
  def  get_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AudioEffectFilter::FilterDB ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_get_db,self.godot_owner,[NULL,],&ret)
  def  get_gain(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_get_gain,self.godot_owner,[NULL,],&ret)
  def  get_resonance(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_get_resonance,self.godot_owner,[NULL,],&ret)
  def  set_cutoff(self, freq):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_set_cutoff,self.godot_owner,[NULL,],NULL)
  def  set_db(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_set_db,self.godot_owner,[NULL,],NULL)
  def  set_gain(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_set_gain,self.godot_owner,[NULL,],NULL)
  def  set_resonance(self, amount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectfilter_set_resonance,self.godot_owner,[NULL,],NULL)
