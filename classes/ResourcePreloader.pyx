from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_resourcepreloader__get_resources
cdef godot_method_bind *bind_resourcepreloader__set_resources
cdef godot_method_bind *bind_resourcepreloader_add_resource
cdef godot_method_bind *bind_resourcepreloader_get_resource
cdef godot_method_bind *bind_resourcepreloader_get_resource_list
cdef godot_method_bind *bind_resourcepreloader_has_resource
cdef godot_method_bind *bind_resourcepreloader_remove_resource
cdef godot_method_bind *bind_resourcepreloader_rename_resource
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_resourcepreloader__get_resources = api_core.godot_method_bind_get_method('ResourcePreloader', '_get_resources')
  bind_resourcepreloader__set_resources = api_core.godot_method_bind_get_method('ResourcePreloader', '_set_resources')
  bind_resourcepreloader_add_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'add_resource')
  bind_resourcepreloader_get_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'get_resource')
  bind_resourcepreloader_get_resource_list = api_core.godot_method_bind_get_method('ResourcePreloader', 'get_resource_list')
  bind_resourcepreloader_has_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'has_resource')
  bind_resourcepreloader_remove_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'remove_resource')
  bind_resourcepreloader_rename_resource = api_core.godot_method_bind_get_method('ResourcePreloader', 'rename_resource')

############################Generated class###################################
cdef class ResourcePreloader(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ResourcePreloader")())
##################################Generated Properties#########################################
  @property
  def resources(self): 
    return self.get_resources()
  @resources.setter 
  def resources(self,value): 
    self.set_resources(value)

##################################Generated Methods#########################################
  def  _get_resources(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader__get_resources,self.godot_owner,[NULL,],&ret)
  def  _set_resources(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader__set_resources,self.godot_owner,[NULL,],NULL)
  def  add_resource(self, nameresource):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_add_resource,self.godot_owner,[NULL,],NULL)
  def  get_resource(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Resource ret
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_get_resource,self.godot_owner,[NULL,],&ret)
  def  get_resource_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_get_resource_list,self.godot_owner,[NULL,],&ret)
  def  has_resource(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_has_resource,self.godot_owner,[NULL,],&ret)
  def  remove_resource(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_remove_resource,self.godot_owner,[NULL,],NULL)
  def  rename_resource(self, namenewname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_resourcepreloader_rename_resource,self.godot_owner,[NULL,],NULL)
