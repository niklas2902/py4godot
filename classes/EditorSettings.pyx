from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorsettings_add_property_info
cdef godot_method_bind *bind_editorsettings_erase
cdef godot_method_bind *bind_editorsettings_get_favorites
cdef godot_method_bind *bind_editorsettings_get_project_metadata
cdef godot_method_bind *bind_editorsettings_get_project_settings_dir
cdef godot_method_bind *bind_editorsettings_get_recent_dirs
cdef godot_method_bind *bind_editorsettings_get_setting
cdef godot_method_bind *bind_editorsettings_get_settings_dir
cdef godot_method_bind *bind_editorsettings_has_setting
cdef godot_method_bind *bind_editorsettings_property_can_revert
cdef godot_method_bind *bind_editorsettings_property_get_revert
cdef godot_method_bind *bind_editorsettings_set_favorites
cdef godot_method_bind *bind_editorsettings_set_initial_value
cdef godot_method_bind *bind_editorsettings_set_project_metadata
cdef godot_method_bind *bind_editorsettings_set_recent_dirs
cdef godot_method_bind *bind_editorsettings_set_setting
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorsettings_add_property_info = api_core.godot_method_bind_get_method('EditorSettings', 'add_property_info')
  bind_editorsettings_erase = api_core.godot_method_bind_get_method('EditorSettings', 'erase')
  bind_editorsettings_get_favorites = api_core.godot_method_bind_get_method('EditorSettings', 'get_favorites')
  bind_editorsettings_get_project_metadata = api_core.godot_method_bind_get_method('EditorSettings', 'get_project_metadata')
  bind_editorsettings_get_project_settings_dir = api_core.godot_method_bind_get_method('EditorSettings', 'get_project_settings_dir')
  bind_editorsettings_get_recent_dirs = api_core.godot_method_bind_get_method('EditorSettings', 'get_recent_dirs')
  bind_editorsettings_get_setting = api_core.godot_method_bind_get_method('EditorSettings', 'get_setting')
  bind_editorsettings_get_settings_dir = api_core.godot_method_bind_get_method('EditorSettings', 'get_settings_dir')
  bind_editorsettings_has_setting = api_core.godot_method_bind_get_method('EditorSettings', 'has_setting')
  bind_editorsettings_property_can_revert = api_core.godot_method_bind_get_method('EditorSettings', 'property_can_revert')
  bind_editorsettings_property_get_revert = api_core.godot_method_bind_get_method('EditorSettings', 'property_get_revert')
  bind_editorsettings_set_favorites = api_core.godot_method_bind_get_method('EditorSettings', 'set_favorites')
  bind_editorsettings_set_initial_value = api_core.godot_method_bind_get_method('EditorSettings', 'set_initial_value')
  bind_editorsettings_set_project_metadata = api_core.godot_method_bind_get_method('EditorSettings', 'set_project_metadata')
  bind_editorsettings_set_recent_dirs = api_core.godot_method_bind_get_method('EditorSettings', 'set_recent_dirs')
  bind_editorsettings_set_setting = api_core.godot_method_bind_get_method('EditorSettings', 'set_setting')

############################Generated class###################################
cdef class EditorSettings(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSettings")())
##################################Generated Methods#########################################
  def  add_property_info(self, info):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorsettings_add_property_info,self.godot_owner,[NULL,],NULL)
  def  erase(self, property):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorsettings_erase,self.godot_owner,[NULL,],NULL)
  def  get_favorites(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_favorites,self.godot_owner,[NULL,],&ret)
  def  get_project_metadata(self, sectionkeydefault):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_project_metadata,self.godot_owner,[NULL,],&ret)
  def  get_project_settings_dir(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_project_settings_dir,self.godot_owner,[NULL,],&ret)
  def  get_recent_dirs(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_recent_dirs,self.godot_owner,[NULL,],&ret)
  def  get_setting(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_setting,self.godot_owner,[NULL,],&ret)
  def  get_settings_dir(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_settings_dir,self.godot_owner,[NULL,],&ret)
  def  has_setting(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_has_setting,self.godot_owner,[NULL,],&ret)
  def  property_can_revert(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_property_can_revert,self.godot_owner,[NULL,],&ret)
  def  property_get_revert(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_editorsettings_property_get_revert,self.godot_owner,[NULL,],&ret)
  def  set_favorites(self, dirs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_favorites,self.godot_owner,[NULL,],NULL)
  def  set_initial_value(self, namevalueupdate_current):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_initial_value,self.godot_owner,[NULL,],NULL)
  def  set_project_metadata(self, sectionkeydata):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_project_metadata,self.godot_owner,[NULL,],NULL)
  def  set_recent_dirs(self, dirs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_recent_dirs,self.godot_owner,[NULL,],NULL)
  def  set_setting(self, namevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_setting,self.godot_owner,[NULL,],NULL)
