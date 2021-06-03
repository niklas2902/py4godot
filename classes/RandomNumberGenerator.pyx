
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_randomnumbergenerator_get_seed
cdef godot_method_bind *bind_randomnumbergenerator_randf
cdef godot_method_bind *bind_randomnumbergenerator_randf_range
cdef godot_method_bind *bind_randomnumbergenerator_randfn
cdef godot_method_bind *bind_randomnumbergenerator_randi
cdef godot_method_bind *bind_randomnumbergenerator_randi_range
cdef godot_method_bind *bind_randomnumbergenerator_randomize
cdef godot_method_bind *bind_randomnumbergenerator_set_seed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_randomnumbergenerator_get_seed = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'get_seed')
  bind_randomnumbergenerator_randf = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'randf')
  bind_randomnumbergenerator_randf_range = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'randf_range')
  bind_randomnumbergenerator_randfn = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'randfn')
  bind_randomnumbergenerator_randi = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'randi')
  bind_randomnumbergenerator_randi_range = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'randi_range')
  bind_randomnumbergenerator_randomize = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'randomize')
  bind_randomnumbergenerator_set_seed = api_core.godot_method_bind_get_method('RandomNumberGenerator', 'set_seed')

############################Generated class###################################
cdef class RandomNumberGenerator(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("RandomNumberGenerator")())
##################################Generated Properties#########################################
  @property
  def seed(self): 
    return self.get_seed()
  @seed.setter 
  def seed(self,value): 
    self.set_seed(value)

##################################Generated Methods#########################################
  def  get_seed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_get_seed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  randf(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randf,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  randf_range(self,  float from_,  float to):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &from_
    args[1] = &to
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randf_range,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  randfn(self,  float mean,  float deviation):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &mean
    args[1] = &deviation
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randfn,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  randi(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randi,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  randi_range(self,  int from_,  int to):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &from_
    args[1] = &to
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randi_range,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  randomize(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randomize,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_seed(self,  int seed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &seed
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_set_seed,self.godot_owner,args,NULL)
    hello('hallo2')
