from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_resourceinteractiveloader_get_resource
cdef godot_method_bind *bind_resourceinteractiveloader_get_stage
cdef godot_method_bind *bind_resourceinteractiveloader_get_stage_count
cdef godot_method_bind *bind_resourceinteractiveloader_poll
cdef godot_method_bind *bind_resourceinteractiveloader_wait
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resourceinteractiveloader_get_resource = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'get_resource')
  bind_resourceinteractiveloader_get_stage = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'get_stage')
  bind_resourceinteractiveloader_get_stage_count = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'get_stage_count')
  bind_resourceinteractiveloader_poll = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'poll')
  bind_resourceinteractiveloader_wait = api_core.godot_method_bind_get_method('ResourceInteractiveLoader', 'wait')

############################Generated class###################################
cdef class ResourceInteractiveLoader(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ResourceInteractiveLoader")())
##################################Generated Methods#########################################
  def  get_resource(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Resource ret
    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_get_resource,self.godot_owner,[NULL,],&ret)
  def  get_stage(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_get_stage,self.godot_owner,[NULL,],&ret)
  def  get_stage_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_get_stage_count,self.godot_owner,[NULL,],&ret)
  def  poll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_poll,self.godot_owner,[NULL,],&ret)
  def  wait(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_resourceinteractiveloader_wait,self.godot_owner,[NULL,],&ret)
