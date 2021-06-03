
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Reference 

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
cdef class ConfigFile(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ConfigFile")())
##################################Generated Methods#########################################
  def  erase_section(self,  String section):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &section._native
    api_core.godot_method_bind_ptrcall(bind_configfile_erase_section,self.godot_owner,args,NULL)
    hello('hallo2')
  def  erase_section_key(self,  String section,  String key):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &section._native
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_configfile_erase_section_key,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_section_keys(self,  String section):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    cdef void *args[1]

    args[0] = &section._native
    api_core.godot_method_bind_ptrcall(bind_configfile_get_section_keys,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_sections(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_configfile_get_sections,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_value(self,  String section,  String key,  Variant default):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[3]

    args[0] = &section._native
    args[1] = &key._native
    args[2] = &default._native
    api_core.godot_method_bind_ptrcall(bind_configfile_get_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  has_section(self,  String section):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &section._native
    api_core.godot_method_bind_ptrcall(bind_configfile_has_section,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_section_key(self,  String section,  String key):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &section._native
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_configfile_has_section_key,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_configfile_load,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_encrypted(self,  String path,  PoolByteArray key):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_configfile_load_encrypted,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_encrypted_pass(self,  String path,  String pass_):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &pass_._native
    api_core.godot_method_bind_ptrcall(bind_configfile_load_encrypted_pass,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_configfile_save,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save_encrypted(self,  String path,  PoolByteArray key):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_configfile_save_encrypted,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save_encrypted_pass(self,  String path,  String pass_):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &path._native
    args[1] = &pass_._native
    api_core.godot_method_bind_ptrcall(bind_configfile_save_encrypted_pass,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_value(self,  String section,  String key,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &section._native
    args[1] = &key._native
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_configfile_set_value,self.godot_owner,args,NULL)
    hello('hallo2')
