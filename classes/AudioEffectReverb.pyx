
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
cdef godot_method_bind *bind_audioeffectreverb_get_damping
cdef godot_method_bind *bind_audioeffectreverb_get_dry
cdef godot_method_bind *bind_audioeffectreverb_get_hpf
cdef godot_method_bind *bind_audioeffectreverb_get_predelay_feedback
cdef godot_method_bind *bind_audioeffectreverb_get_predelay_msec
cdef godot_method_bind *bind_audioeffectreverb_get_room_size
cdef godot_method_bind *bind_audioeffectreverb_get_spread
cdef godot_method_bind *bind_audioeffectreverb_get_wet
cdef godot_method_bind *bind_audioeffectreverb_set_damping
cdef godot_method_bind *bind_audioeffectreverb_set_dry
cdef godot_method_bind *bind_audioeffectreverb_set_hpf
cdef godot_method_bind *bind_audioeffectreverb_set_predelay_feedback
cdef godot_method_bind *bind_audioeffectreverb_set_predelay_msec
cdef godot_method_bind *bind_audioeffectreverb_set_room_size
cdef godot_method_bind *bind_audioeffectreverb_set_spread
cdef godot_method_bind *bind_audioeffectreverb_set_wet
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectreverb_get_damping = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_damping')
  bind_audioeffectreverb_get_dry = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_dry')
  bind_audioeffectreverb_get_hpf = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_hpf')
  bind_audioeffectreverb_get_predelay_feedback = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_predelay_feedback')
  bind_audioeffectreverb_get_predelay_msec = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_predelay_msec')
  bind_audioeffectreverb_get_room_size = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_room_size')
  bind_audioeffectreverb_get_spread = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_spread')
  bind_audioeffectreverb_get_wet = api_core.godot_method_bind_get_method('AudioEffectReverb', 'get_wet')
  bind_audioeffectreverb_set_damping = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_damping')
  bind_audioeffectreverb_set_dry = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_dry')
  bind_audioeffectreverb_set_hpf = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_hpf')
  bind_audioeffectreverb_set_predelay_feedback = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_predelay_feedback')
  bind_audioeffectreverb_set_predelay_msec = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_predelay_msec')
  bind_audioeffectreverb_set_room_size = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_room_size')
  bind_audioeffectreverb_set_spread = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_spread')
  bind_audioeffectreverb_set_wet = api_core.godot_method_bind_get_method('AudioEffectReverb', 'set_wet')

############################Generated class###################################
cdef class AudioEffectReverb(classes.AudioEffect.AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectReverb")())
##################################Generated Properties#########################################
  @property
  def damping(self): 
    return self.get_damping()
  @damping.setter 
  def damping(self,value): 
    self.set_damping(value)
  @property
  def dry(self): 
    return self.get_dry()
  @dry.setter 
  def dry(self,value): 
    self.set_dry(value)
  @property
  def hipass(self): 
    return self.get_hipass()
  @hipass.setter 
  def hipass(self,value): 
    self.set_hipass(value)
  @property
  def predelay_feedback(self): 
    return self.get_predelay_feedback()
  @predelay_feedback.setter 
  def predelay_feedback(self,value): 
    self.set_predelay_feedback(value)
  @property
  def predelay_msec(self): 
    return self.get_predelay_msec()
  @predelay_msec.setter 
  def predelay_msec(self,value): 
    self.set_predelay_msec(value)
  @property
  def room_size(self): 
    return self.get_room_size()
  @room_size.setter 
  def room_size(self,value): 
    self.set_room_size(value)
  @property
  def spread(self): 
    return self.get_spread()
  @spread.setter 
  def spread(self,value): 
    self.set_spread(value)
  @property
  def wet(self): 
    return self.get_wet()
  @wet.setter 
  def wet(self,value): 
    self.set_wet(value)

##################################Generated Methods#########################################
  def  get_damping(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_damping,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_dry(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_dry,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_hpf(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_hpf,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_predelay_feedback(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_predelay_feedback,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_predelay_msec(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_predelay_msec,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_room_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_room_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_spread(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_spread,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_wet(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_get_wet,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_damping(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_damping,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dry(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_dry,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_hpf(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_hpf,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_predelay_feedback(self,  float feedback):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &feedback
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_predelay_feedback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_predelay_msec(self,  float msec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &msec
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_predelay_msec,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_room_size(self,  float size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_room_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_spread(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_spread,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_wet(self,  float amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audioeffectreverb_set_wet,self.godot_owner,args,NULL)
    hello('hallo2')
