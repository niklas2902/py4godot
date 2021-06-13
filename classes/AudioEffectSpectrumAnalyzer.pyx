
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.AudioEffect 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_get_buffer_length
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_get_fft_size
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_get_tap_back_pos
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_set_buffer_length
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_set_fft_size
cdef godot_method_bind *bind_audioeffectspectrumanalyzer_set_tap_back_pos
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectspectrumanalyzer_get_buffer_length = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'get_buffer_length')
  bind_audioeffectspectrumanalyzer_get_fft_size = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'get_fft_size')
  bind_audioeffectspectrumanalyzer_get_tap_back_pos = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'get_tap_back_pos')
  bind_audioeffectspectrumanalyzer_set_buffer_length = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'set_buffer_length')
  bind_audioeffectspectrumanalyzer_set_fft_size = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'set_fft_size')
  bind_audioeffectspectrumanalyzer_set_tap_back_pos = api_core.godot_method_bind_get_method('AudioEffectSpectrumAnalyzer', 'set_tap_back_pos')

############################Generated class###################################
cdef class AudioEffectSpectrumAnalyzer(classes.AudioEffect.AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectSpectrumAnalyzer")())
##################################Generated Properties#########################################
  @property
  def buffer_length(self): 
    return self.get_buffer_length()
  @buffer_length.setter 
  def buffer_length(self,value): 
    self.set_buffer_length(value)
  @property
  def fft_size(self): 
    return self.get_fft_size()
  @fft_size.setter 
  def fft_size(self,value): 
    self.set_fft_size(value)
  @property
  def tap_back_pos(self): 
    return self.get_tap_back_pos()
  @tap_back_pos.setter 
  def tap_back_pos(self,value): 
    self.set_tap_back_pos(value)

##################################Generated Methods#########################################
  def  get_buffer_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_get_buffer_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_fft_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AudioEffectSpectrumAnalyzer_FFT_Size* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_get_fft_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tap_back_pos(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_get_tap_back_pos,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_buffer_length(self,  float seconds):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &seconds
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_set_buffer_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_fft_size(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_set_fft_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tap_back_pos(self,  float seconds):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &seconds
    api_core.godot_method_bind_ptrcall(bind_audioeffectspectrumanalyzer_set_tap_back_pos,self.godot_owner,args,NULL)
    hello('hallo2')
