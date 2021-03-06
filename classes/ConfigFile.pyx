from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_configfile_erase_section
cdef godot_method_bind *bind_configfile_erase_section_key
cdef godot_method_bind *bind_configfile_get_section_keys
cdef godot_method_bind *bind_configfile_get_sections
cdef godot_method_bind *bind_configfile_get_value
cdef godot_method_bind *bind_configfile_has_section
cdef godot_method_bind *bind_configfile_has_section_key
cdef godot_method_bind *bind_configfile_load
cdef godot_method_bind *bind_configfile_load_encrypted
cdef godot_method_bind *bind_configfile_load_encrypted_pass
cdef godot_method_bind *bind_configfile_save
cdef godot_method_bind *bind_configfile_save_encrypted
cdef godot_method_bind *bind_configfile_save_encrypted_pass
cdef godot_method_bind *bind_configfile_set_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_configfile_erase_section = api_core.godot_method_bind_get_method('ConfigFile', 'erase_section')
  bind_configfile_erase_section_key = api_core.godot_method_bind_get_method('ConfigFile', 'erase_section_key')
  bind_configfile_get_section_keys = api_core.godot_method_bind_get_method('ConfigFile', 'get_section_keys')
  bind_configfile_get_sections = api_core.godot_method_bind_get_method('ConfigFile', 'get_sections')
  bind_configfile_get_value = api_core.godot_method_bind_get_method('ConfigFile', 'get_value')
  bind_configfile_has_section = api_core.godot_method_bind_get_method('ConfigFile', 'has_section')
  bind_configfile_has_section_key = api_core.godot_method_bind_get_method('ConfigFile', 'has_section_key')
  bind_configfile_load = api_core.godot_method_bind_get_method('ConfigFile', 'load')
  bind_configfile_load_encrypted = api_core.godot_method_bind_get_method('ConfigFile', 'load_encrypted')
  bind_configfile_load_encrypted_pass = api_core.godot_method_bind_get_method('ConfigFile', 'load_encrypted_pass')
  bind_configfile_save = api_core.godot_method_bind_get_method('ConfigFile', 'save')
  bind_configfile_save_encrypted = api_core.godot_method_bind_get_method('ConfigFile', 'save_encrypted')
  bind_configfile_save_encrypted_pass = api_core.godot_method_bind_get_method('ConfigFile', 'save_encrypted_pass')
  bind_configfile_set_value = api_core.godot_method_bind_get_method('ConfigFile', 'set_value')

############################Generated class###################################
cdef class ConfigFile(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConfigFile")())
##################################Generated Methods#########################################
  def  erase_section(self, section):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_configfile_erase_section,self.godot_owner,[NULL,],NULL)
  def  erase_section_key(self, sectionkey):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_configfile_erase_section_key,self.godot_owner,[NULL,],NULL)
  def  get_section_keys(self, section):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_configfile_get_section_keys,self.godot_owner,[NULL,],&ret)
  def  get_sections(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_configfile_get_sections,self.godot_owner,[NULL,],&ret)
  def  get_value(self, sectionkeydefault):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_configfile_get_value,self.godot_owner,[NULL,],&ret)
  def  has_section(self, section):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_configfile_has_section,self.godot_owner,[NULL,],&ret)
  def  has_section_key(self, sectionkey):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_configfile_has_section_key,self.godot_owner,[NULL,],&ret)
  def  load(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_configfile_load,self.godot_owner,[NULL,],&ret)
  def  load_encrypted(self, pathkey):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_configfile_load_encrypted,self.godot_owner,[NULL,],&ret)
  def  load_encrypted_pass(self, pathpass_):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_configfile_load_encrypted_pass,self.godot_owner,[NULL,],&ret)
  def  save(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_configfile_save,self.godot_owner,[NULL,],&ret)
  def  save_encrypted(self, pathkey):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_configfile_save_encrypted,self.godot_owner,[NULL,],&ret)
  def  save_encrypted_pass(self, pathpass_):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_configfile_save_encrypted_pass,self.godot_owner,[NULL,],&ret)
  def  set_value(self, sectionkeyvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_configfile_set_value,self.godot_owner,[NULL,],NULL)
