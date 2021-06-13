
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
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_opensimplexnoise_get_image
cdef godot_method_bind *bind_opensimplexnoise_get_lacunarity
cdef godot_method_bind *bind_opensimplexnoise_get_noise_1d
cdef godot_method_bind *bind_opensimplexnoise_get_noise_2d
cdef godot_method_bind *bind_opensimplexnoise_get_noise_2dv
cdef godot_method_bind *bind_opensimplexnoise_get_noise_3d
cdef godot_method_bind *bind_opensimplexnoise_get_noise_3dv
cdef godot_method_bind *bind_opensimplexnoise_get_noise_4d
cdef godot_method_bind *bind_opensimplexnoise_get_octaves
cdef godot_method_bind *bind_opensimplexnoise_get_period
cdef godot_method_bind *bind_opensimplexnoise_get_persistence
cdef godot_method_bind *bind_opensimplexnoise_get_seamless_image
cdef godot_method_bind *bind_opensimplexnoise_get_seed
cdef godot_method_bind *bind_opensimplexnoise_set_lacunarity
cdef godot_method_bind *bind_opensimplexnoise_set_octaves
cdef godot_method_bind *bind_opensimplexnoise_set_period
cdef godot_method_bind *bind_opensimplexnoise_set_persistence
cdef godot_method_bind *bind_opensimplexnoise_set_seed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_opensimplexnoise_get_image = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_image')
  bind_opensimplexnoise_get_lacunarity = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_lacunarity')
  bind_opensimplexnoise_get_noise_1d = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_noise_1d')
  bind_opensimplexnoise_get_noise_2d = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_noise_2d')
  bind_opensimplexnoise_get_noise_2dv = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_noise_2dv')
  bind_opensimplexnoise_get_noise_3d = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_noise_3d')
  bind_opensimplexnoise_get_noise_3dv = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_noise_3dv')
  bind_opensimplexnoise_get_noise_4d = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_noise_4d')
  bind_opensimplexnoise_get_octaves = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_octaves')
  bind_opensimplexnoise_get_period = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_period')
  bind_opensimplexnoise_get_persistence = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_persistence')
  bind_opensimplexnoise_get_seamless_image = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_seamless_image')
  bind_opensimplexnoise_get_seed = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'get_seed')
  bind_opensimplexnoise_set_lacunarity = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'set_lacunarity')
  bind_opensimplexnoise_set_octaves = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'set_octaves')
  bind_opensimplexnoise_set_period = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'set_period')
  bind_opensimplexnoise_set_persistence = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'set_persistence')
  bind_opensimplexnoise_set_seed = api_core.godot_method_bind_get_method('OpenSimplexNoise', 'set_seed')

############################Generated class###################################
cdef class OpenSimplexNoise(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("OpenSimplexNoise")())
##################################Generated Properties#########################################
  @property
  def lacunarity(self): 
    return self.get_lacunarity()
  @lacunarity.setter 
  def lacunarity(self,value): 
    self.set_lacunarity(value)
  @property
  def octaves(self): 
    return self.get_octaves()
  @octaves.setter 
  def octaves(self,value): 
    self.set_octaves(value)
  @property
  def period(self): 
    return self.get_period()
  @period.setter 
  def period(self,value): 
    self.set_period(value)
  @property
  def persistence(self): 
    return self.get_persistence()
  @persistence.setter 
  def persistence(self,value): 
    self.set_persistence(value)
  @property
  def seed(self): 
    return self.get_seed()
  @seed.setter 
  def seed(self,value): 
    self.set_seed(value)

##################################Generated Methods#########################################
  def  get_image(self,  int width,  int height):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &width
    args[1] = &height
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_image,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_lacunarity(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_lacunarity,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_noise_1d(self,  float x):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &x
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_1d,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_noise_2d(self,  float x,  float y):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &x
    args[1] = &y
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_2d,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_noise_2dv(self,  Vector2 pos):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &pos._native
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_2dv,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_noise_3d(self,  float x,  float y,  float z):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[3]

    args[0] = &x
    args[1] = &y
    args[2] = &z
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_3d,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_noise_3dv(self,  Vector3 pos):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &pos._native
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_3dv,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_noise_4d(self,  float x,  float y,  float z,  float w):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[4]

    args[0] = &x
    args[1] = &y
    args[2] = &z
    args[3] = &w
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_4d,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_octaves(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_octaves,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_period(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_period,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_persistence(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_persistence,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_seamless_image(self,  int size):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &size
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_seamless_image,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_seed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_seed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_lacunarity(self,  float lacunarity):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &lacunarity
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_lacunarity,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_octaves(self,  int octave_count):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &octave_count
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_octaves,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_period(self,  float period):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &period
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_period,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_persistence(self,  float persistence):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &persistence
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_persistence,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_seed(self,  int seed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &seed
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_seed,self.godot_owner,args,NULL)
    hello('hallo2')
