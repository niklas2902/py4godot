
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
cimport classes.AudioEffect 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectpitchshift_get_fft_size
cdef godot_method_bind *bind_audioeffectpitchshift_get_oversampling
cdef godot_method_bind *bind_audioeffectpitchshift_get_pitch_scale
cdef godot_method_bind *bind_audioeffectpitchshift_set_fft_size
cdef godot_method_bind *bind_audioeffectpitchshift_set_oversampling
cdef godot_method_bind *bind_audioeffectpitchshift_set_pitch_scale
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectpitchshift_get_fft_size = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'get_fft_size')
  bind_audioeffectpitchshift_get_oversampling = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'get_oversampling')
  bind_audioeffectpitchshift_get_pitch_scale = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'get_pitch_scale')
  bind_audioeffectpitchshift_set_fft_size = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'set_fft_size')
  bind_audioeffectpitchshift_set_oversampling = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'set_oversampling')
  bind_audioeffectpitchshift_set_pitch_scale = api_core.godot_method_bind_get_method('AudioEffectPitchShift', 'set_pitch_scale')

############################Generated class###################################
cdef class AudioEffectPitchShift(classes.AudioEffect.AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectPitchShift")())
##################################Generated Properties#########################################
  @property
  def fft_size(self): 
    return self.get_fft_size()
  @fft_size.setter 
  def fft_size(self,value): 
    self.set_fft_size(value)
  @property
  def oversampling(self): 
    return self.get_oversampling()
  @oversampling.setter 
  def oversampling(self,value): 
    self.set_oversampling(value)
  @property
  def pitch_scale(self): 
    return self.get_pitch_scale()
  @pitch_scale.setter 
  def pitch_scale(self,value): 
    self.set_pitch_scale(value)

##################################Generated Methods#########################################
  def  get_fft_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef FFT_Size* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_get_fft_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_oversampling(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_get_oversampling,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pitch_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_get_pitch_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_fft_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_set_fft_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_oversampling(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_set_oversampling,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pitch_scale(self,  float rate):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &rate
    api_core.godot_method_bind_ptrcall(bind_audioeffectpitchshift_set_pitch_scale,self.godot_owner,args,NULL)
    hello('hallo2')
