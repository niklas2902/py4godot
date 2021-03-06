from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_funcref_call_func
cdef godot_method_bind *bind_funcref_call_funcv
cdef godot_method_bind *bind_funcref_is_valid
cdef godot_method_bind *bind_funcref_set_function
cdef godot_method_bind *bind_funcref_set_instance
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_funcref_call_func = api_core.godot_method_bind_get_method('FuncRef', 'call_func')
  bind_funcref_call_funcv = api_core.godot_method_bind_get_method('FuncRef', 'call_funcv')
  bind_funcref_is_valid = api_core.godot_method_bind_get_method('FuncRef', 'is_valid')
  bind_funcref_set_function = api_core.godot_method_bind_get_method('FuncRef', 'set_function')
  bind_funcref_set_instance = api_core.godot_method_bind_get_method('FuncRef', 'set_instance')

############################Generated class###################################
cdef class FuncRef(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("FuncRef")())
##################################Generated Methods#########################################
  def  call_func(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_funcref_call_func,self.godot_owner,[NULL,],&ret)
  def  call_funcv(self, arg_array):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_funcref_call_funcv,self.godot_owner,[NULL,],&ret)
  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_funcref_is_valid,self.godot_owner,[NULL,],&ret)
  def  set_function(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_funcref_set_function,self.godot_owner,[NULL,],NULL)
  def  set_instance(self, instance):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_funcref_set_instance,self.godot_owner,[NULL,],NULL)
