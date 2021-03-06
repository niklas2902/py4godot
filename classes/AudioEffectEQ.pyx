from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffecteq_get_band_count
cdef godot_method_bind *bind_audioeffecteq_get_band_gain_db
cdef godot_method_bind *bind_audioeffecteq_set_band_gain_db
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffecteq_get_band_count = api_core.godot_method_bind_get_method('AudioEffectEQ', 'get_band_count')
  bind_audioeffecteq_get_band_gain_db = api_core.godot_method_bind_get_method('AudioEffectEQ', 'get_band_gain_db')
  bind_audioeffecteq_set_band_gain_db = api_core.godot_method_bind_get_method('AudioEffectEQ', 'set_band_gain_db')

############################Generated class###################################
cdef class AudioEffectEQ(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectEQ")())
##################################Generated Methods#########################################
  def  get_band_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_audioeffecteq_get_band_count,self.godot_owner,[NULL,],&ret)
  def  get_band_gain_db(self, band_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffecteq_get_band_gain_db,self.godot_owner,[NULL,],&ret)
  def  set_band_gain_db(self, band_idxvolume_db):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffecteq_set_band_gain_db,self.godot_owner,[NULL,],NULL)
