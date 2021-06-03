
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
cimport classes.AudioStream 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamrandompitch_get_audio_stream
cdef godot_method_bind *bind_audiostreamrandompitch_get_random_pitch
cdef godot_method_bind *bind_audiostreamrandompitch_set_audio_stream
cdef godot_method_bind *bind_audiostreamrandompitch_set_random_pitch
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamrandompitch_get_audio_stream = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'get_audio_stream')
  bind_audiostreamrandompitch_get_random_pitch = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'get_random_pitch')
  bind_audiostreamrandompitch_set_audio_stream = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'set_audio_stream')
  bind_audiostreamrandompitch_set_random_pitch = api_core.godot_method_bind_get_method('AudioStreamRandomPitch', 'set_random_pitch')

############################Generated class###################################
cdef class AudioStreamRandomPitch(classes.AudioStream.AudioStream):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamRandomPitch")())
##################################Generated Properties#########################################
  @property
  def audio_stream(self): 
    return self.get_audio_stream()
  @audio_stream.setter 
  def audio_stream(self,value): 
    self.set_audio_stream(value)
  @property
  def random_pitch(self): 
    return self.get_random_pitch()
  @random_pitch.setter 
  def random_pitch(self,value): 
    self.set_random_pitch(value)

##################################Generated Methods#########################################
  def  get_audio_stream(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_get_audio_stream,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_random_pitch(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_get_random_pitch,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_audio_stream(self,  classes.AudioStream.AudioStream stream):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = stream.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_set_audio_stream,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_random_pitch(self,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &scale
    api_core.godot_method_bind_ptrcall(bind_audiostreamrandompitch_set_random_pitch,self.godot_owner,args,NULL)
    hello('hallo2')
