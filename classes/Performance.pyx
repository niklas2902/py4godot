from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_performance_get_monitor
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_performance_get_monitor = api_core.godot_method_bind_get_method('Performance', 'get_monitor')

############################Generated class###################################
cdef class Performance(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Performance")())
##################################Generated Methods#########################################
  def  get_monitor(self, monitor):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_performance_get_monitor,self.godot_owner,[NULL,],&ret)
