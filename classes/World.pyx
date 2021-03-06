from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_world_get_direct_space_state
cdef godot_method_bind *bind_world_get_environment
cdef godot_method_bind *bind_world_get_fallback_environment
cdef godot_method_bind *bind_world_get_scenario
cdef godot_method_bind *bind_world_get_space
cdef godot_method_bind *bind_world_set_environment
cdef godot_method_bind *bind_world_set_fallback_environment
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_world_get_direct_space_state = api_core.godot_method_bind_get_method('World', 'get_direct_space_state')
  bind_world_get_environment = api_core.godot_method_bind_get_method('World', 'get_environment')
  bind_world_get_fallback_environment = api_core.godot_method_bind_get_method('World', 'get_fallback_environment')
  bind_world_get_scenario = api_core.godot_method_bind_get_method('World', 'get_scenario')
  bind_world_get_space = api_core.godot_method_bind_get_method('World', 'get_space')
  bind_world_set_environment = api_core.godot_method_bind_get_method('World', 'set_environment')
  bind_world_set_fallback_environment = api_core.godot_method_bind_get_method('World', 'set_fallback_environment')

############################Generated class###################################
cdef class World(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("World")())
##################################Generated Properties#########################################
  @property
  def direct_space_state(self): 
    return self.get_direct_space_state()
  @direct_space_state.setter 
  def direct_space_state(self,value): 
    self.set_direct_space_state(value)
  @property
  def environment(self): 
    return self.get_environment()
  @environment.setter 
  def environment(self,value): 
    self.set_environment(value)
  @property
  def fallback_environment(self): 
    return self.get_fallback_environment()
  @fallback_environment.setter 
  def fallback_environment(self,value): 
    self.set_fallback_environment(value)
  @property
  def scenario(self): 
    return self.get_scenario()
  @scenario.setter 
  def scenario(self,value): 
    self.set_scenario(value)
  @property
  def space(self): 
    return self.get_space()
  @space.setter 
  def space(self,value): 
    self.set_space(value)

##################################Generated Methods#########################################
  def  get_direct_space_state(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PhysicsDirectSpaceState ret
    api_core.godot_method_bind_ptrcall(bind_world_get_direct_space_state,self.godot_owner,[NULL,],&ret)
  def  get_environment(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Environment ret
    api_core.godot_method_bind_ptrcall(bind_world_get_environment,self.godot_owner,[NULL,],&ret)
  def  get_fallback_environment(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Environment ret
    api_core.godot_method_bind_ptrcall(bind_world_get_fallback_environment,self.godot_owner,[NULL,],&ret)
  def  get_scenario(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_world_get_scenario,self.godot_owner,[NULL,],&ret)
  def  get_space(self):
    cdef godot_object *_owner = self.godot_owner
    cdef RID ret
    api_core.godot_method_bind_ptrcall(bind_world_get_space,self.godot_owner,[NULL,],&ret)
  def  set_environment(self, env):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_world_set_environment,self.godot_owner,[NULL,],NULL)
  def  set_fallback_environment(self, env):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_world_set_fallback_environment,self.godot_owner,[NULL,],NULL)
