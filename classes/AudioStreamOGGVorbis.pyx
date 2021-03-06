from classes.AudioStream cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamoggvorbis_get_data
cdef godot_method_bind *bind_audiostreamoggvorbis_get_loop_offset
cdef godot_method_bind *bind_audiostreamoggvorbis_has_loop
cdef godot_method_bind *bind_audiostreamoggvorbis_set_data
cdef godot_method_bind *bind_audiostreamoggvorbis_set_loop
cdef godot_method_bind *bind_audiostreamoggvorbis_set_loop_offset
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamoggvorbis_get_data = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'get_data')
  bind_audiostreamoggvorbis_get_loop_offset = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'get_loop_offset')
  bind_audiostreamoggvorbis_has_loop = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'has_loop')
  bind_audiostreamoggvorbis_set_data = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'set_data')
  bind_audiostreamoggvorbis_set_loop = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'set_loop')
  bind_audiostreamoggvorbis_set_loop_offset = api_core.godot_method_bind_get_method('AudioStreamOGGVorbis', 'set_loop_offset')

############################Generated class###################################
cdef class AudioStreamOGGVorbis(AudioStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamOGGVorbis")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)
  @property
  def loop(self): 
    return self.get_loop()
  @loop.setter 
  def loop(self,value): 
    self.set_loop(value)
  @property
  def loop_offset(self): 
    return self.get_loop_offset()
  @loop_offset.setter 
  def loop_offset(self,value): 
    self.set_loop_offset(value)

##################################Generated Methods#########################################
  def  get_data(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_get_data,self.godot_owner,[NULL,],&ret)
  def  get_loop_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_get_loop_offset,self.godot_owner,[NULL,],&ret)
  def  has_loop(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_has_loop,self.godot_owner,[NULL,],&ret)
  def  set_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_set_data,self.godot_owner,[NULL,],NULL)
  def  set_loop(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_set_loop,self.godot_owner,[NULL,],NULL)
  def  set_loop_offset(self, seconds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamoggvorbis_set_loop_offset,self.godot_owner,[NULL,],NULL)
