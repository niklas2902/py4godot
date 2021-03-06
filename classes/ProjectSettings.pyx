from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_projectsettings_add_property_info
cdef godot_method_bind *bind_projectsettings_clear
cdef godot_method_bind *bind_projectsettings_get_order
cdef godot_method_bind *bind_projectsettings_get_setting
cdef godot_method_bind *bind_projectsettings_globalize_path
cdef godot_method_bind *bind_projectsettings_has_setting
cdef godot_method_bind *bind_projectsettings_load_resource_pack
cdef godot_method_bind *bind_projectsettings_localize_path
cdef godot_method_bind *bind_projectsettings_property_can_revert
cdef godot_method_bind *bind_projectsettings_property_get_revert
cdef godot_method_bind *bind_projectsettings_save
cdef godot_method_bind *bind_projectsettings_save_custom
cdef godot_method_bind *bind_projectsettings_set_initial_value
cdef godot_method_bind *bind_projectsettings_set_order
cdef godot_method_bind *bind_projectsettings_set_setting
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_projectsettings_add_property_info = api_core.godot_method_bind_get_method('ProjectSettings', 'add_property_info')
  bind_projectsettings_clear = api_core.godot_method_bind_get_method('ProjectSettings', 'clear')
  bind_projectsettings_get_order = api_core.godot_method_bind_get_method('ProjectSettings', 'get_order')
  bind_projectsettings_get_setting = api_core.godot_method_bind_get_method('ProjectSettings', 'get_setting')
  bind_projectsettings_globalize_path = api_core.godot_method_bind_get_method('ProjectSettings', 'globalize_path')
  bind_projectsettings_has_setting = api_core.godot_method_bind_get_method('ProjectSettings', 'has_setting')
  bind_projectsettings_load_resource_pack = api_core.godot_method_bind_get_method('ProjectSettings', 'load_resource_pack')
  bind_projectsettings_localize_path = api_core.godot_method_bind_get_method('ProjectSettings', 'localize_path')
  bind_projectsettings_property_can_revert = api_core.godot_method_bind_get_method('ProjectSettings', 'property_can_revert')
  bind_projectsettings_property_get_revert = api_core.godot_method_bind_get_method('ProjectSettings', 'property_get_revert')
  bind_projectsettings_save = api_core.godot_method_bind_get_method('ProjectSettings', 'save')
  bind_projectsettings_save_custom = api_core.godot_method_bind_get_method('ProjectSettings', 'save_custom')
  bind_projectsettings_set_initial_value = api_core.godot_method_bind_get_method('ProjectSettings', 'set_initial_value')
  bind_projectsettings_set_order = api_core.godot_method_bind_get_method('ProjectSettings', 'set_order')
  bind_projectsettings_set_setting = api_core.godot_method_bind_get_method('ProjectSettings', 'set_setting')

############################Generated class###################################
cdef class ProjectSettings(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ProjectSettings")())
##################################Generated Methods#########################################
  def  add_property_info(self, hint):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_projectsettings_add_property_info,self.godot_owner,[NULL,],NULL)
  def  clear(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_projectsettings_clear,self.godot_owner,[NULL,],NULL)
  def  get_order(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_get_order,self.godot_owner,[NULL,],&ret)
  def  get_setting(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_get_setting,self.godot_owner,[NULL,],&ret)
  def  globalize_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_globalize_path,self.godot_owner,[NULL,],&ret)
  def  has_setting(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_has_setting,self.godot_owner,[NULL,],&ret)
  def  load_resource_pack(self, packreplace_files):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_load_resource_pack,self.godot_owner,[NULL,],&ret)
  def  localize_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_localize_path,self.godot_owner,[NULL,],&ret)
  def  property_can_revert(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_property_can_revert,self.godot_owner,[NULL,],&ret)
  def  property_get_revert(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_property_get_revert,self.godot_owner,[NULL,],&ret)
  def  save(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_save,self.godot_owner,[NULL,],&ret)
  def  save_custom(self, file):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_projectsettings_save_custom,self.godot_owner,[NULL,],&ret)
  def  set_initial_value(self, namevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_projectsettings_set_initial_value,self.godot_owner,[NULL,],NULL)
  def  set_order(self, nameposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_projectsettings_set_order,self.godot_owner,[NULL,],NULL)
  def  set_setting(self, namevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_projectsettings_set_setting,self.godot_owner,[NULL,],NULL)
