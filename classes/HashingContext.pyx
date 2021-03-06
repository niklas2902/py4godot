from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_hashingcontext_finish
cdef godot_method_bind *bind_hashingcontext_start
cdef godot_method_bind *bind_hashingcontext_update
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_hashingcontext_finish = api_core.godot_method_bind_get_method('HashingContext', 'finish')
  bind_hashingcontext_start = api_core.godot_method_bind_get_method('HashingContext', 'start')
  bind_hashingcontext_update = api_core.godot_method_bind_get_method('HashingContext', 'update')

############################Generated class###################################
cdef class HashingContext(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("HashingContext")())
##################################Generated Methods#########################################
  def  finish(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_hashingcontext_finish,self.godot_owner,[NULL,],&ret)
  def  start(self, type):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_hashingcontext_start,self.godot_owner,[NULL,],&ret)
  def  update(self, chunk):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_hashingcontext_update,self.godot_owner,[NULL,],&ret)
