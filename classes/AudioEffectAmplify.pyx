from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectamplify_get_volume_db
cdef godot_method_bind *bind_audioeffectamplify_set_volume_db
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectamplify_get_volume_db = api_core.godot_method_bind_get_method('AudioEffectAmplify', 'get_volume_db')
  bind_audioeffectamplify_set_volume_db = api_core.godot_method_bind_get_method('AudioEffectAmplify', 'set_volume_db')

############################Generated class###################################
cdef class AudioEffectAmplify(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectAmplify")())
##################################Generated Properties#########################################
  @property
  def volume_db(self): 
    return self.get_volume_db()
  @volume_db.setter 
  def volume_db(self,value): 
    self.set_volume_db(value)

##################################Generated Methods#########################################
  def  get_volume_db(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectamplify_get_volume_db,self.godot_owner,[NULL,],&ret)
  def  set_volume_db(self, volume):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectamplify_set_volume_db,self.godot_owner,[NULL,],NULL)
