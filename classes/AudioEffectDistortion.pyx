
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
cdef godot_method_bind *bind_audioeffectdistortion_get_drive
cdef godot_method_bind *bind_audioeffectdistortion_get_keep_hf_hz
cdef godot_method_bind *bind_audioeffectdistortion_get_mode
cdef godot_method_bind *bind_audioeffectdistortion_get_post_gain
cdef godot_method_bind *bind_audioeffectdistortion_get_pre_gain
cdef godot_method_bind *bind_audioeffectdistortion_set_drive
cdef godot_method_bind *bind_audioeffectdistortion_set_keep_hf_hz
cdef godot_method_bind *bind_audioeffectdistortion_set_mode
cdef godot_method_bind *bind_audioeffectdistortion_set_post_gain
cdef godot_method_bind *bind_audioeffectdistortion_set_pre_gain
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectdistortion_get_drive = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_drive')
  bind_audioeffectdistortion_get_keep_hf_hz = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_keep_hf_hz')
  bind_audioeffectdistortion_get_mode = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_mode')
  bind_audioeffectdistortion_get_post_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_post_gain')
  bind_audioeffectdistortion_get_pre_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'get_pre_gain')
  bind_audioeffectdistortion_set_drive = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_drive')
  bind_audioeffectdistortion_set_keep_hf_hz = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_keep_hf_hz')
  bind_audioeffectdistortion_set_mode = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_mode')
  bind_audioeffectdistortion_set_post_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_post_gain')
  bind_audioeffectdistortion_set_pre_gain = api_core.godot_method_bind_get_method('AudioEffectDistortion', 'set_pre_gain')

############################Generated class###################################
cdef class AudioEffectDistortion(classes.AudioEffect.AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectDistortion")())
##################################Generated Properties#########################################
  @property
  def drive(self): 
    return self.get_drive()
  @drive.setter 
  def drive(self,value): 
    self.set_drive(value)
  @property
  def keep_hf_hz(self): 
    return self.get_keep_hf_hz()
  @keep_hf_hz.setter 
  def keep_hf_hz(self,value): 
    self.set_keep_hf_hz(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def post_gain(self): 
    return self.get_post_gain()
  @post_gain.setter 
  def post_gain(self,value): 
    self.set_post_gain(value)
  @property
  def pre_gain(self): 
    return self.get_pre_gain()
  @pre_gain.setter 
  def pre_gain(self,value): 
    self.set_pre_gain(value)

##################################Generated Methods#########################################
  def  get_drive(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_drive,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_keep_hf_hz(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_keep_hf_hz,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Mode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_post_gain(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_post_gain,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pre_gain(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_get_pre_gain,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_drive(self,  float drive):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &drive
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_drive,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_keep_hf_hz(self,  float keep_hf_hz):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &keep_hf_hz
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_keep_hf_hz,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_post_gain(self,  float post_gain):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &post_gain
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_post_gain,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pre_gain(self,  float pre_gain):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pre_gain
    api_core.godot_method_bind_ptrcall(bind_audioeffectdistortion_set_pre_gain,self.godot_owner,args,NULL)
    hello('hallo2')
