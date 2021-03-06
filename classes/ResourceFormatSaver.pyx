from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_resourceformatsaver_get_recognized_extensions
cdef godot_method_bind *bind_resourceformatsaver_recognize
cdef godot_method_bind *bind_resourceformatsaver_save
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resourceformatsaver_get_recognized_extensions = api_core.godot_method_bind_get_method('ResourceFormatSaver', 'get_recognized_extensions')
  bind_resourceformatsaver_recognize = api_core.godot_method_bind_get_method('ResourceFormatSaver', 'recognize')
  bind_resourceformatsaver_save = api_core.godot_method_bind_get_method('ResourceFormatSaver', 'save')

############################Generated class###################################
cdef class ResourceFormatSaver(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ResourceFormatSaver")())
##################################Generated Methods#########################################
  def  get_recognized_extensions(self, resource):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatsaver_get_recognized_extensions,self.godot_owner,[NULL,],&ret)
  def  recognize(self, resource):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatsaver_recognize,self.godot_owner,[NULL,],&ret)
  def  save(self, pathresourceflags):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatsaver_save,self.godot_owner,[NULL,],&ret)
