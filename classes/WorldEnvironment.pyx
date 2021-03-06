from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_worldenvironment_get_environment
cdef godot_method_bind *bind_worldenvironment_set_environment
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_worldenvironment_get_environment = api_core.godot_method_bind_get_method('WorldEnvironment', 'get_environment')
  bind_worldenvironment_set_environment = api_core.godot_method_bind_get_method('WorldEnvironment', 'set_environment')

############################Generated class###################################
cdef class WorldEnvironment(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WorldEnvironment")())
##################################Generated Properties#########################################
  @property
  def environment(self): 
    return self.get_environment()
  @environment.setter 
  def environment(self,value): 
    self.set_environment(value)

##################################Generated Methods#########################################
  def  get_environment(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Environment ret
    api_core.godot_method_bind_ptrcall(bind_worldenvironment_get_environment,self.godot_owner,[NULL,],&ret)
  def  set_environment(self, env):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_worldenvironment_set_environment,self.godot_owner,[NULL,],NULL)
