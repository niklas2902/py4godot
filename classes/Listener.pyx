from classes.Spatial cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_listener_clear_current
cdef godot_method_bind *bind_listener_get_listener_transform
cdef godot_method_bind *bind_listener_is_current
cdef godot_method_bind *bind_listener_make_current
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_listener_clear_current = api_core.godot_method_bind_get_method('Listener', 'clear_current')
  bind_listener_get_listener_transform = api_core.godot_method_bind_get_method('Listener', 'get_listener_transform')
  bind_listener_is_current = api_core.godot_method_bind_get_method('Listener', 'is_current')
  bind_listener_make_current = api_core.godot_method_bind_get_method('Listener', 'make_current')

############################Generated class###################################
cdef class Listener(Spatial):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Listener")())
##################################Generated Methods#########################################
  def  clear_current(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_listener_clear_current,self.godot_owner,[NULL,],NULL)
  def  get_listener_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_listener_get_listener_transform,self.godot_owner,[NULL,],&ret)
  def  is_current(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_listener_is_current,self.godot_owner,[NULL,],&ret)
  def  make_current(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_listener_make_current,self.godot_owner,[NULL,],NULL)
