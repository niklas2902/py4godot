from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_resourceformatloader_get_dependencies
cdef godot_method_bind *bind_resourceformatloader_get_recognized_extensions
cdef godot_method_bind *bind_resourceformatloader_get_resource_type
cdef godot_method_bind *bind_resourceformatloader_handles_type
cdef godot_method_bind *bind_resourceformatloader_load
cdef godot_method_bind *bind_resourceformatloader_rename_dependencies
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resourceformatloader_get_dependencies = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'get_dependencies')
  bind_resourceformatloader_get_recognized_extensions = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'get_recognized_extensions')
  bind_resourceformatloader_get_resource_type = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'get_resource_type')
  bind_resourceformatloader_handles_type = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'handles_type')
  bind_resourceformatloader_load = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'load')
  bind_resourceformatloader_rename_dependencies = api_core.godot_method_bind_get_method('ResourceFormatLoader', 'rename_dependencies')

############################Generated class###################################
cdef class ResourceFormatLoader(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ResourceFormatLoader")())
##################################Generated Methods#########################################
  def  get_dependencies(self, pathadd_types):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_get_dependencies,self.godot_owner,[NULL,],NULL)
  def  get_recognized_extensions(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_get_recognized_extensions,self.godot_owner,[NULL,],&ret)
  def  get_resource_type(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_get_resource_type,self.godot_owner,[NULL,],&ret)
  def  handles_type(self, typename):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_handles_type,self.godot_owner,[NULL,],&ret)
  def  load(self, pathoriginal_path):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_load,self.godot_owner,[NULL,],&ret)
  def  rename_dependencies(self, pathrenames):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_resourceformatloader_rename_dependencies,self.godot_owner,[NULL,],&ret)
