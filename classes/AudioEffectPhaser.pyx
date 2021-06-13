
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
cdef godot_method_bind *bind_audioeffectphaser_get_depth
cdef godot_method_bind *bind_audioeffectphaser_get_feedback
cdef godot_method_bind *bind_audioeffectphaser_get_range_max_hz
cdef godot_method_bind *bind_audioeffectphaser_get_range_min_hz
cdef godot_method_bind *bind_audioeffectphaser_get_rate_hz
cdef godot_method_bind *bind_audioeffectphaser_set_depth
cdef godot_method_bind *bind_audioeffectphaser_set_feedback
cdef godot_method_bind *bind_audioeffectphaser_set_range_max_hz
cdef godot_method_bind *bind_audioeffectphaser_set_range_min_hz
cdef godot_method_bind *bind_audioeffectphaser_set_rate_hz
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectphaser_get_depth = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_depth')
  bind_audioeffectphaser_get_feedback = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_feedback')
  bind_audioeffectphaser_get_range_max_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_range_max_hz')
  bind_audioeffectphaser_get_range_min_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_range_min_hz')
  bind_audioeffectphaser_get_rate_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'get_rate_hz')
  bind_audioeffectphaser_set_depth = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_depth')
  bind_audioeffectphaser_set_feedback = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_feedback')
  bind_audioeffectphaser_set_range_max_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_range_max_hz')
  bind_audioeffectphaser_set_range_min_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_range_min_hz')
  bind_audioeffectphaser_set_rate_hz = api_core.godot_method_bind_get_method('AudioEffectPhaser', 'set_rate_hz')

############################Generated class###################################
cdef class AudioEffectPhaser(classes.AudioEffect.AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectPhaser")())
##################################Generated Properties#########################################
  @property
  def depth(self): 
    return self.get_depth()
  @depth.setter 
  def depth(self,value): 
    self.set_depth(value)
  @property
  def feedback(self): 
    return self.get_feedback()
  @feedback.setter 
  def feedback(self,value): 
    self.set_feedback(value)
  @property
  def range_max_hz(self): 
    return self.get_range_max_hz()
  @range_max_hz.setter 
  def range_max_hz(self,value): 
    self.set_range_max_hz(value)
  @property
  def range_min_hz(self): 
    return self.get_range_min_hz()
  @range_min_hz.setter 
  def range_min_hz(self,value): 
    self.set_range_min_hz(value)
  @property
  def rate_hz(self): 
    return self.get_rate_hz()
  @rate_hz.setter 
  def rate_hz(self,value): 
    self.set_rate_hz(value)

##################################Generated Methods#########################################
  def  get_depth(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_depth,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_feedback(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_feedback,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_range_max_hz(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_range_max_hz,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_range_min_hz(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_range_min_hz,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rate_hz(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_get_rate_hz,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_depth(self,  float depth):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &depth
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_depth,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_feedback(self,  float fbk):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &fbk
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_feedback,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_range_max_hz(self,  float hz):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hz
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_range_max_hz,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_range_min_hz(self,  float hz):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hz
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_range_min_hz,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_rate_hz(self,  float hz):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hz
    api_core.godot_method_bind_ptrcall(bind_audioeffectphaser_set_rate_hz,self.godot_owner,args,NULL)
    hello('hallo2')
