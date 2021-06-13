
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.Resource 

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
cdef class EditorSettings(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSettings")())
##################################Generated Methods#########################################
  def  add_property_info(self,  Dictionary info):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &info._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_add_property_info,self.godot_owner,args,NULL)
    hello('hallo2')
  def  erase(self,  String property):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &property._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_erase,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_favorites(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_favorites,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_project_metadata(self,  String section,  String key,  Variant default):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[3]

    args[0] = &section._native
    args[1] = &key._native
    args[2] = &default._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_project_metadata,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_project_settings_dir(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_project_settings_dir,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_recent_dirs(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_recent_dirs,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_setting(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_setting,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_settings_dir(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_editorsettings_get_settings_dir,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  has_setting(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_has_setting,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  property_can_revert(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_property_can_revert,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  property_get_revert(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_property_get_revert,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  set_favorites(self,  PoolStringArray dirs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &dirs._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_favorites,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_initial_value(self,  String name,  Variant value,  bool update_current):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &value._native
    args[2] = &update_current
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_initial_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_project_metadata(self,  String section,  String key,  Variant data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &section._native
    args[1] = &key._native
    args[2] = &data._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_project_metadata,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_recent_dirs(self,  PoolStringArray dirs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &dirs._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_recent_dirs,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_setting(self,  String name,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_editorsettings_set_setting,self.godot_owner,args,NULL)
    hello('hallo2')
