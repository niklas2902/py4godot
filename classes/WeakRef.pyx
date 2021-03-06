from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_weakref_get_ref
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_weakref_get_ref = api_core.godot_method_bind_get_method('WeakRef', 'get_ref')

############################Generated class###################################
cdef class WeakRef(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WeakRef")())
##################################Generated Methods#########################################
  def  get_ref(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_weakref_get_ref,self.godot_owner,[NULL,],&ret)
