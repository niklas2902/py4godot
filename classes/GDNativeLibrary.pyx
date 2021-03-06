from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gdnativelibrary_get_config_file
cdef godot_method_bind *bind_gdnativelibrary_get_current_dependencies
cdef godot_method_bind *bind_gdnativelibrary_get_current_library_path
cdef godot_method_bind *bind_gdnativelibrary_get_symbol_prefix
cdef godot_method_bind *bind_gdnativelibrary_is_reloadable
cdef godot_method_bind *bind_gdnativelibrary_is_singleton
cdef godot_method_bind *bind_gdnativelibrary_set_config_file
cdef godot_method_bind *bind_gdnativelibrary_set_load_once
cdef godot_method_bind *bind_gdnativelibrary_set_reloadable
cdef godot_method_bind *bind_gdnativelibrary_set_singleton
cdef godot_method_bind *bind_gdnativelibrary_set_symbol_prefix
cdef godot_method_bind *bind_gdnativelibrary_should_load_once
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gdnativelibrary_get_config_file = api_core.godot_method_bind_get_method('GDNativeLibrary', 'get_config_file')
  bind_gdnativelibrary_get_current_dependencies = api_core.godot_method_bind_get_method('GDNativeLibrary', 'get_current_dependencies')
  bind_gdnativelibrary_get_current_library_path = api_core.godot_method_bind_get_method('GDNativeLibrary', 'get_current_library_path')
  bind_gdnativelibrary_get_symbol_prefix = api_core.godot_method_bind_get_method('GDNativeLibrary', 'get_symbol_prefix')
  bind_gdnativelibrary_is_reloadable = api_core.godot_method_bind_get_method('GDNativeLibrary', 'is_reloadable')
  bind_gdnativelibrary_is_singleton = api_core.godot_method_bind_get_method('GDNativeLibrary', 'is_singleton')
  bind_gdnativelibrary_set_config_file = api_core.godot_method_bind_get_method('GDNativeLibrary', 'set_config_file')
  bind_gdnativelibrary_set_load_once = api_core.godot_method_bind_get_method('GDNativeLibrary', 'set_load_once')
  bind_gdnativelibrary_set_reloadable = api_core.godot_method_bind_get_method('GDNativeLibrary', 'set_reloadable')
  bind_gdnativelibrary_set_singleton = api_core.godot_method_bind_get_method('GDNativeLibrary', 'set_singleton')
  bind_gdnativelibrary_set_symbol_prefix = api_core.godot_method_bind_get_method('GDNativeLibrary', 'set_symbol_prefix')
  bind_gdnativelibrary_should_load_once = api_core.godot_method_bind_get_method('GDNativeLibrary', 'should_load_once')

############################Generated class###################################
cdef class GDNativeLibrary(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GDNativeLibrary")())
##################################Generated Properties#########################################
  @property
  def config_file(self): 
    return self.get_config_file()
  @config_file.setter 
  def config_file(self,value): 
    self.set_config_file(value)
  @property
  def load_once(self): 
    return self.get_load_once()
  @load_once.setter 
  def load_once(self,value): 
    self.set_load_once(value)
  @property
  def reloadable(self): 
    return self.get_reloadable()
  @reloadable.setter 
  def reloadable(self,value): 
    self.set_reloadable(value)
  @property
  def singleton(self): 
    return self.get_singleton()
  @singleton.setter 
  def singleton(self,value): 
    self.set_singleton(value)
  @property
  def symbol_prefix(self): 
    return self.get_symbol_prefix()
  @symbol_prefix.setter 
  def symbol_prefix(self,value): 
    self.set_symbol_prefix(value)

##################################Generated Methods#########################################
  def  get_config_file(self):
    cdef godot_object *_owner = self.godot_owner
    cdef ConfigFile ret
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_config_file,self.godot_owner,[NULL,],&ret)
  def  get_current_dependencies(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_current_dependencies,self.godot_owner,[NULL,],&ret)
  def  get_current_library_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_current_library_path,self.godot_owner,[NULL,],&ret)
  def  get_symbol_prefix(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_symbol_prefix,self.godot_owner,[NULL,],&ret)
  def  is_reloadable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_is_reloadable,self.godot_owner,[NULL,],&ret)
  def  is_singleton(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_is_singleton,self.godot_owner,[NULL,],&ret)
  def  set_config_file(self, config_file):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_config_file,self.godot_owner,[NULL,],NULL)
  def  set_load_once(self, load_once):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_load_once,self.godot_owner,[NULL,],NULL)
  def  set_reloadable(self, reloadable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_reloadable,self.godot_owner,[NULL,],NULL)
  def  set_singleton(self, singleton):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_singleton,self.godot_owner,[NULL,],NULL)
  def  set_symbol_prefix(self, symbol_prefix):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_symbol_prefix,self.godot_owner,[NULL,],NULL)
  def  should_load_once(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_should_load_once,self.godot_owner,[NULL,],&ret)
