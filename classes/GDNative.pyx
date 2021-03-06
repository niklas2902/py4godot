from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gdnative_call_native
cdef godot_method_bind *bind_gdnative_get_library
cdef godot_method_bind *bind_gdnative_initialize
cdef godot_method_bind *bind_gdnative_set_library
cdef godot_method_bind *bind_gdnative_terminate
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gdnative_call_native = api_core.godot_method_bind_get_method('GDNative', 'call_native')
  bind_gdnative_get_library = api_core.godot_method_bind_get_method('GDNative', 'get_library')
  bind_gdnative_initialize = api_core.godot_method_bind_get_method('GDNative', 'initialize')
  bind_gdnative_set_library = api_core.godot_method_bind_get_method('GDNative', 'set_library')
  bind_gdnative_terminate = api_core.godot_method_bind_get_method('GDNative', 'terminate')

############################Generated class###################################
cdef class GDNative(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GDNative")())
##################################Generated Properties#########################################
  @property
  def library(self): 
    return self.get_library()
  @library.setter 
  def library(self,value): 
    self.set_library(value)

##################################Generated Methods#########################################
  def  call_native(self, calling_typeprocedure_namearguments):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_gdnative_call_native,self.godot_owner,[NULL,],&ret)
  def  get_library(self):
    cdef godot_object *_owner = self.godot_owner
    cdef GDNativeLibrary ret
    api_core.godot_method_bind_ptrcall(bind_gdnative_get_library,self.godot_owner,[NULL,],&ret)
  def  initialize(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gdnative_initialize,self.godot_owner,[NULL,],&ret)
  def  set_library(self, library):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnative_set_library,self.godot_owner,[NULL,],NULL)
  def  terminate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gdnative_terminate,self.godot_owner,[NULL,],&ret)
