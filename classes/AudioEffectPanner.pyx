from classes.AudioEffect cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectpanner_get_pan
cdef godot_method_bind *bind_audioeffectpanner_set_pan
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectpanner_get_pan = api_core.godot_method_bind_get_method('AudioEffectPanner', 'get_pan')
  bind_audioeffectpanner_set_pan = api_core.godot_method_bind_get_method('AudioEffectPanner', 'set_pan')

############################Generated class###################################
cdef class AudioEffectPanner(AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectPanner")())
##################################Generated Properties#########################################
  @property
  def pan(self): 
    return self.get_pan()
  @pan.setter 
  def pan(self,value): 
    self.set_pan(value)

##################################Generated Methods#########################################
  def  get_pan(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audioeffectpanner_get_pan,self.godot_owner,[NULL,],&ret)
  def  set_pan(self, cpanume):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audioeffectpanner_set_pan,self.godot_owner,[NULL,],NULL)
