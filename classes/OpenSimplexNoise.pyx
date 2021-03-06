from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class OpenSimplexNoise(Resource):
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
  def  get_image(self, widthheight):
    cdef godot_object *_owner = self.godot_owner
    cdef Image ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_image,self.godot_owner,[NULL,],&ret)
  def  get_lacunarity(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_lacunarity,self.godot_owner,[NULL,],&ret)
  def  get_noise_1d(self, x):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_1d,self.godot_owner,[NULL,],&ret)
  def  get_noise_2d(self, xy):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_2d,self.godot_owner,[NULL,],&ret)
  def  get_noise_2dv(self, pos):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_2dv,self.godot_owner,[NULL,],&ret)
  def  get_noise_3d(self, xyz):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_3d,self.godot_owner,[NULL,],&ret)
  def  get_noise_3dv(self, pos):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_3dv,self.godot_owner,[NULL,],&ret)
  def  get_noise_4d(self, xyzw):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_noise_4d,self.godot_owner,[NULL,],&ret)
  def  get_octaves(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_octaves,self.godot_owner,[NULL,],&ret)
  def  get_period(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_period,self.godot_owner,[NULL,],&ret)
  def  get_persistence(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_persistence,self.godot_owner,[NULL,],&ret)
  def  get_seamless_image(self, size):
    cdef godot_object *_owner = self.godot_owner
    cdef Image ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_seamless_image,self.godot_owner,[NULL,],&ret)
  def  get_seed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_get_seed,self.godot_owner,[NULL,],&ret)
  def  set_lacunarity(self, lacunarity):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_lacunarity,self.godot_owner,[NULL,],NULL)
  def  set_octaves(self, octave_count):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_octaves,self.godot_owner,[NULL,],NULL)
  def  set_period(self, period):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_period,self.godot_owner,[NULL,],NULL)
  def  set_persistence(self, persistence):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_persistence,self.godot_owner,[NULL,],NULL)
  def  set_seed(self, seed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_opensimplexnoise_set_seed,self.godot_owner,[NULL,],NULL)
