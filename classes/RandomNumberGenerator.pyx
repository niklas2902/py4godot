from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class RandomNumberGenerator(Reference):
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
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_get_seed,self.godot_owner,[NULL,],&ret)
  def  randf(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randf,self.godot_owner,[NULL,],&ret)
  def  randf_range(self, from_, to):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randf_range,self.godot_owner,[NULL,],&ret)
  def  randfn(self, meandeviation):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randfn,self.godot_owner,[NULL,],&ret)
  def  randi(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randi,self.godot_owner,[NULL,],&ret)
  def  randi_range(self, from_, to):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randi_range,self.godot_owner,[NULL,],&ret)
  def  randomize(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_randomize,self.godot_owner,[NULL,],NULL)
  def  set_seed(self, seed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_randomnumbergenerator_set_seed,self.godot_owner,[NULL,],NULL)
