
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
cdef godot_method_bind *bind_audioeffectchorus_get_dry
cdef godot_method_bind *bind_audioeffectchorus_get_voice_count
cdef godot_method_bind *bind_audioeffectchorus_get_voice_cutoff_hz
cdef godot_method_bind *bind_audioeffectchorus_get_voice_delay_ms
cdef godot_method_bind *bind_audioeffectchorus_get_voice_depth_ms
cdef godot_method_bind *bind_audioeffectchorus_get_voice_level_db
cdef godot_method_bind *bind_audioeffectchorus_get_voice_pan
cdef godot_method_bind *bind_audioeffectchorus_get_voice_rate_hz
cdef godot_method_bind *bind_audioeffectchorus_get_wet
cdef godot_method_bind *bind_audioeffectchorus_set_dry
cdef godot_method_bind *bind_audioeffectchorus_set_voice_count
cdef godot_method_bind *bind_audioeffectchorus_set_voice_cutoff_hz
cdef godot_method_bind *bind_audioeffectchorus_set_voice_delay_ms
cdef godot_method_bind *bind_audioeffectchorus_set_voice_depth_ms
cdef godot_method_bind *bind_audioeffectchorus_set_voice_level_db
cdef godot_method_bind *bind_audioeffectchorus_set_voice_pan
cdef godot_method_bind *bind_audioeffectchorus_set_voice_rate_hz
cdef godot_method_bind *bind_audioeffectchorus_set_wet
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectchorus_get_dry = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_dry')
  bind_audioeffectchorus_get_voice_count = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_count')
  bind_audioeffectchorus_get_voice_cutoff_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_cutoff_hz')
  bind_audioeffectchorus_get_voice_delay_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_delay_ms')
  bind_audioeffectchorus_get_voice_depth_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_depth_ms')
  bind_audioeffectchorus_get_voice_level_db = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_level_db')
  bind_audioeffectchorus_get_voice_pan = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_pan')
  bind_audioeffectchorus_get_voice_rate_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_voice_rate_hz')
  bind_audioeffectchorus_get_wet = api_core.godot_method_bind_get_method('AudioEffectChorus', 'get_wet')
  bind_audioeffectchorus_set_dry = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_dry')
  bind_audioeffectchorus_set_voice_count = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_count')
  bind_audioeffectchorus_set_voice_cutoff_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_cutoff_hz')
  bind_audioeffectchorus_set_voice_delay_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_delay_ms')
  bind_audioeffectchorus_set_voice_depth_ms = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_depth_ms')
  bind_audioeffectchorus_set_voice_level_db = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_level_db')
  bind_audioeffectchorus_set_voice_pan = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_pan')
  bind_audioeffectchorus_set_voice_rate_hz = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_voice_rate_hz')
  bind_audioeffectchorus_set_wet = api_core.godot_method_bind_get_method('AudioEffectChorus', 'set_wet')

############################Generated class###################################
cdef class AudioEffectChorus(classes.AudioEffect.AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectChorus")())
##################################Generated Properties#########################################
  @property
  def dry(self): 
    return self.get_dry()
  @dry.setter 
  def dry(self,value): 
    self.set_dry(value)
  @property
  def voice_1_cutoff_hz(self): 
    return self.get_voice_1_cutoff_hz()
  @voice_1_cutoff_hz.setter 
  def voice_1_cutoff_hz(self,value): 
    self.set_voice_1_cutoff_hz(value)
  @property
  def voice_1_delay_ms(self): 
    return self.get_voice_1_delay_ms()
  @voice_1_delay_ms.setter 
  def voice_1_delay_ms(self,value): 
    self.set_voice_1_delay_ms(value)
  @property
  def voice_1_depth_ms(self): 
    return self.get_voice_1_depth_ms()
  @voice_1_depth_ms.setter 
  def voice_1_depth_ms(self,value): 
    self.set_voice_1_depth_ms(value)
  @property
  def voice_1_level_db(self): 
    return self.get_voice_1_level_db()
  @voice_1_level_db.setter 
  def voice_1_level_db(self,value): 
    self.set_voice_1_level_db(value)
  @property
  def voice_1_pan(self): 
    return self.get_voice_1_pan()
  @voice_1_pan.setter 
  def voice_1_pan(self,value): 
    self.set_voice_1_pan(value)
  @property
  def voice_1_rate_hz(self): 
    return self.get_voice_1_rate_hz()
  @voice_1_rate_hz.setter 
  def voice_1_rate_hz(self,value): 
    self.set_voice_1_rate_hz(value)
  @property
  def voice_2_cutoff_hz(self): 
    return self.get_voice_2_cutoff_hz()
  @voice_2_cutoff_hz.setter 
  def voice_2_cutoff_hz(self,value): 
    self.set_voice_2_cutoff_hz(value)
  @property
  def voice_2_delay_ms(self): 
    return self.get_voice_2_delay_ms()
  @voice_2_delay_ms.setter 
  def voice_2_delay_ms(self,value): 
    self.set_voice_2_delay_ms(value)
  @property
  def voice_2_depth_ms(self): 
    return self.get_voice_2_depth_ms()
  @voice_2_depth_ms.setter 
  def voice_2_depth_ms(self,value): 
    self.set_voice_2_depth_ms(value)
  @property
  def voice_2_level_db(self): 
    return self.get_voice_2_level_db()
  @voice_2_level_db.setter 
  def voice_2_level_db(self,value): 
    self.set_voice_2_level_db(value)
  @property
  def voice_2_pan(self): 
    return self.get_voice_2_pan()
  @voice_2_pan.setter 
  def voice_2_pan(self,value): 
    self.set_voice_2_pan(value)
  @property
  def voice_2_rate_hz(self): 
    return self.get_voice_2_rate_hz()
  @voice_2_rate_hz.setter 
  def voice_2_rate_hz(self,value): 
    self.set_voice_2_rate_hz(value)
  @property
  def voice_3_cutoff_hz(self): 
    return self.get_voice_3_cutoff_hz()
  @voice_3_cutoff_hz.setter 
  def voice_3_cutoff_hz(self,value): 
    self.set_voice_3_cutoff_hz(value)
  @property
  def voice_3_delay_ms(self): 
    return self.get_voice_3_delay_ms()
  @voice_3_delay_ms.setter 
  def voice_3_delay_ms(self,value): 
    self.set_voice_3_delay_ms(value)
  @property
  def voice_3_depth_ms(self): 
    return self.get_voice_3_depth_ms()
  @voice_3_depth_ms.setter 
  def voice_3_depth_ms(self,value): 
    self.set_voice_3_depth_ms(value)
  @property
  def voice_3_level_db(self): 
    return self.get_voice_3_level_db()
  @voice_3_level_db.setter 
  def voice_3_level_db(self,value): 
    self.set_voice_3_level_db(value)
  @property
  def voice_3_pan(self): 
    return self.get_voice_3_pan()
  @voice_3_pan.setter 
  def voice_3_pan(self,value): 
    self.set_voice_3_pan(value)
  @property
  def voice_3_rate_hz(self): 
    return self.get_voice_3_rate_hz()
  @voice_3_rate_hz.setter 
  def voice_3_rate_hz(self,value): 
    self.set_voice_3_rate_hz(value)
  @property
  def voice_4_cutoff_hz(self): 
    return self.get_voice_4_cutoff_hz()
  @voice_4_cutoff_hz.setter 
  def voice_4_cutoff_hz(self,value): 
    self.set_voice_4_cutoff_hz(value)
  @property
  def voice_4_delay_ms(self): 
    return self.get_voice_4_delay_ms()
  @voice_4_delay_ms.setter 
  def voice_4_delay_ms(self,value): 
    self.set_voice_4_delay_ms(value)
  @property
  def voice_4_depth_ms(self): 
    return self.get_voice_4_depth_ms()
  @voice_4_depth_ms.setter 
  def voice_4_depth_ms(self,value): 
    self.set_voice_4_depth_ms(value)
  @property
  def voice_4_level_db(self): 
    return self.get_voice_4_level_db()
  @voice_4_level_db.setter 
  def voice_4_level_db(self,value): 
    self.set_voice_4_level_db(value)
  @property
  def voice_4_pan(self): 
    return self.get_voice_4_pan()
  @voice_4_pan.setter 
  def voice_4_pan(self,value): 
    self.set_voice_4_pan(value)
  @property
  def voice_4_rate_hz(self): 
    return self.get_voice_4_rate_hz()
  @voice_4_rate_hz.setter 
  def voice_4_rate_hz(self,value): 
    self.set_voice_4_rate_hz(value)
  @property
  def voice_count(self): 
    return self.get_voice_count()
  @voice_count.setter 
  def voice_count(self,value): 
    self.set_voice_count(value)
  @property
  def wet(self): 
    return self.get_wet()
  @wet.setter 
  def wet(self,value): 
    self.set_wet(value)

##################################Generated Methods#########################################
  def  get_dry(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_dry,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_voice_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_voice_cutoff_hz(self,  int voice_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &voice_idx
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_cutoff_hz,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_voice_delay_ms(self,  int voice_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &voice_idx
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_delay_ms,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_voice_depth_ms(self,  int voice_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &voice_idx
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_depth_ms,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_voice_level_db(self,  int voice_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &voice_idx
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_level_db,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_voice_pan(self,  int voice_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &voice_idx
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_pan,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_voice_rate_hz(self,  int voice_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &voice_idx
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_voice_rate_hz,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_wet(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_get_wet,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_dry(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_dry,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_voice_count(self,  int voices):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &voices
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_count,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_voice_cutoff_hz(self,  int voice_idx,  float cutoff_hz):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &voice_idx
    args[1] = &cutoff_hz
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_cutoff_hz,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_voice_delay_ms(self,  int voice_idx,  float delay_ms):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &voice_idx
    args[1] = &delay_ms
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_delay_ms,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_voice_depth_ms(self,  int voice_idx,  float depth_ms):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &voice_idx
    args[1] = &depth_ms
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_depth_ms,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_voice_level_db(self,  int voice_idx,  float level_db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &voice_idx
    args[1] = &level_db
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_level_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_voice_pan(self,  int voice_idx,  float pan):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &voice_idx
    args[1] = &pan
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_pan,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_voice_rate_hz(self,  int voice_idx,  float rate_hz):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &voice_idx
    args[1] = &rate_hz
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_voice_rate_hz,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_wet(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectchorus_set_wet,self.godot_owner,args,NULL)
    hello('hallo2')
