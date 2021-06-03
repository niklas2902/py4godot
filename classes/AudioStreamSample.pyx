
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.AudioStream 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamsample_get_data
cdef godot_method_bind *bind_audiostreamsample_get_format
cdef godot_method_bind *bind_audiostreamsample_get_loop_begin
cdef godot_method_bind *bind_audiostreamsample_get_loop_end
cdef godot_method_bind *bind_audiostreamsample_get_loop_mode
cdef godot_method_bind *bind_audiostreamsample_get_mix_rate
cdef godot_method_bind *bind_audiostreamsample_is_stereo
cdef godot_method_bind *bind_audiostreamsample_save_to_wav
cdef godot_method_bind *bind_audiostreamsample_set_data
cdef godot_method_bind *bind_audiostreamsample_set_format
cdef godot_method_bind *bind_audiostreamsample_set_loop_begin
cdef godot_method_bind *bind_audiostreamsample_set_loop_end
cdef godot_method_bind *bind_audiostreamsample_set_loop_mode
cdef godot_method_bind *bind_audiostreamsample_set_mix_rate
cdef godot_method_bind *bind_audiostreamsample_set_stereo
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamsample_get_data = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_data')
  bind_audiostreamsample_get_format = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_format')
  bind_audiostreamsample_get_loop_begin = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_loop_begin')
  bind_audiostreamsample_get_loop_end = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_loop_end')
  bind_audiostreamsample_get_loop_mode = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_loop_mode')
  bind_audiostreamsample_get_mix_rate = api_core.godot_method_bind_get_method('AudioStreamSample', 'get_mix_rate')
  bind_audiostreamsample_is_stereo = api_core.godot_method_bind_get_method('AudioStreamSample', 'is_stereo')
  bind_audiostreamsample_save_to_wav = api_core.godot_method_bind_get_method('AudioStreamSample', 'save_to_wav')
  bind_audiostreamsample_set_data = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_data')
  bind_audiostreamsample_set_format = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_format')
  bind_audiostreamsample_set_loop_begin = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_loop_begin')
  bind_audiostreamsample_set_loop_end = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_loop_end')
  bind_audiostreamsample_set_loop_mode = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_loop_mode')
  bind_audiostreamsample_set_mix_rate = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_mix_rate')
  bind_audiostreamsample_set_stereo = api_core.godot_method_bind_get_method('AudioStreamSample', 'set_stereo')

############################Generated class###################################
cdef class AudioStreamSample(classes.AudioStream.AudioStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamSample")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)
  @property
  def format(self): 
    return self.get_format()
  @format.setter 
  def format(self,value): 
    self.set_format(value)
  @property
  def loop_begin(self): 
    return self.get_loop_begin()
  @loop_begin.setter 
  def loop_begin(self,value): 
    self.set_loop_begin(value)
  @property
  def loop_end(self): 
    return self.get_loop_end()
  @loop_end.setter 
  def loop_end(self,value): 
    self.set_loop_end(value)
  @property
  def loop_mode(self): 
    return self.get_loop_mode()
  @loop_mode.setter 
  def loop_mode(self,value): 
    self.set_loop_mode(value)
  @property
  def mix_rate(self): 
    return self.get_mix_rate()
  @mix_rate.setter 
  def mix_rate(self,value): 
    self.set_mix_rate(value)
  @property
  def stereo(self): 
    return self.get_stereo()
  @stereo.setter 
  def stereo(self,value): 
    self.set_stereo(value)

##################################Generated Methods#########################################
  def  get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_format(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Format* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_format,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_loop_begin(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_loop_begin,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_loop_end(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_loop_end,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_loop_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef LoopMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_loop_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mix_rate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_get_mix_rate,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_stereo(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_is_stereo,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save_to_wav(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_save_to_wav,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_data(self,  PoolByteArray data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_format(self,  int format):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &format
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_format,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_loop_begin(self,  int loop_begin):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &loop_begin
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_loop_begin,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_loop_end(self,  int loop_end):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &loop_end
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_loop_end,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_loop_mode(self,  int loop_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &loop_mode
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_loop_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mix_rate(self,  int mix_rate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mix_rate
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_mix_rate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stereo(self,  bool stereo):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &stereo
    api_core.godot_method_bind_ptrcall(bind_audiostreamsample_set_stereo,self.godot_owner,args,NULL)
    hello('hallo2')
