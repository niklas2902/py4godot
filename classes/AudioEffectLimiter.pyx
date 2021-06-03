
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
cdef godot_method_bind *bind_audioeffectlimiter_get_ceiling_db
cdef godot_method_bind *bind_audioeffectlimiter_get_soft_clip_db
cdef godot_method_bind *bind_audioeffectlimiter_get_soft_clip_ratio
cdef godot_method_bind *bind_audioeffectlimiter_get_threshold_db
cdef godot_method_bind *bind_audioeffectlimiter_set_ceiling_db
cdef godot_method_bind *bind_audioeffectlimiter_set_soft_clip_db
cdef godot_method_bind *bind_audioeffectlimiter_set_soft_clip_ratio
cdef godot_method_bind *bind_audioeffectlimiter_set_threshold_db
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audioeffectlimiter_get_ceiling_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_ceiling_db')
  bind_audioeffectlimiter_get_soft_clip_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_soft_clip_db')
  bind_audioeffectlimiter_get_soft_clip_ratio = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_soft_clip_ratio')
  bind_audioeffectlimiter_get_threshold_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'get_threshold_db')
  bind_audioeffectlimiter_set_ceiling_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_ceiling_db')
  bind_audioeffectlimiter_set_soft_clip_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_soft_clip_db')
  bind_audioeffectlimiter_set_soft_clip_ratio = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_soft_clip_ratio')
  bind_audioeffectlimiter_set_threshold_db = api_core.godot_method_bind_get_method('AudioEffectLimiter', 'set_threshold_db')

############################Generated class###################################
cdef class AudioEffectLimiter(classes.AudioEffect.AudioEffect):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioEffectLimiter")())
##################################Generated Properties#########################################
  @property
  def ceiling_db(self): 
    return self.get_ceiling_db()
  @ceiling_db.setter 
  def ceiling_db(self,value): 
    self.set_ceiling_db(value)
  @property
  def soft_clip_db(self): 
    return self.get_soft_clip_db()
  @soft_clip_db.setter 
  def soft_clip_db(self,value): 
    self.set_soft_clip_db(value)
  @property
  def soft_clip_ratio(self): 
    return self.get_soft_clip_ratio()
  @soft_clip_ratio.setter 
  def soft_clip_ratio(self,value): 
    self.set_soft_clip_ratio(value)
  @property
  def threshold_db(self): 
    return self.get_threshold_db()
  @threshold_db.setter 
  def threshold_db(self,value): 
    self.set_threshold_db(value)

##################################Generated Methods#########################################
  def  get_ceiling_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_ceiling_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_soft_clip_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_soft_clip_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_soft_clip_ratio(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_soft_clip_ratio,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_threshold_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_get_threshold_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_ceiling_db(self,  float ceiling):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ceiling
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_ceiling_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_soft_clip_db(self,  float soft_clip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &soft_clip
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_soft_clip_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_soft_clip_ratio(self,  float soft_clip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &soft_clip
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_soft_clip_ratio,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_threshold_db(self,  float threshold):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &threshold
    api_core.godot_method_bind_ptrcall(bind_audioeffectlimiter_set_threshold_db,self.godot_owner,args,NULL)
    hello('hallo2')
