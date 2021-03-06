from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_scenetreetimer_get_time_left
cdef godot_method_bind *bind_scenetreetimer_set_time_left
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_scenetreetimer_get_time_left = api_core.godot_method_bind_get_method('SceneTreeTimer', 'get_time_left')
  bind_scenetreetimer_set_time_left = api_core.godot_method_bind_get_method('SceneTreeTimer', 'set_time_left')

############################Generated class###################################
cdef class SceneTreeTimer(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SceneTreeTimer")())
##################################Generated Properties#########################################
  @property
  def time_left(self): 
    return self.get_time_left()
  @time_left.setter 
  def time_left(self,value): 
    self.set_time_left(value)

##################################Generated Methods#########################################
  def  get_time_left(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_scenetreetimer_get_time_left,self.godot_owner,[NULL,],&ret)
  def  set_time_left(self, time):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_scenetreetimer_set_time_left,self.godot_owner,[NULL,],NULL)
