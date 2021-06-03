
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
cimport classes.Object 

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
cdef class ProjectSettings(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("ProjectSettings")())
##################################Generated Methods#########################################
  def  add_property_info(self,  Dictionary hint):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hint._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_add_property_info,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_clear,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_order(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_get_order,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_setting(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_get_setting,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  globalize_path(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_globalize_path,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  has_setting(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_has_setting,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  load_resource_pack(self,  String pack,  bool replace_files):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &pack._native
    args[1] = &replace_files
    api_core.godot_method_bind_ptrcall(bind_projectsettings_load_resource_pack,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  localize_path(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_localize_path,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  property_can_revert(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_property_can_revert,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  property_get_revert(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_property_get_revert,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  save(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_projectsettings_save,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  save_custom(self,  String file):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &file._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_save_custom,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_initial_value(self,  String name,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_set_initial_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_order(self,  String name,  int position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &position
    api_core.godot_method_bind_ptrcall(bind_projectsettings_set_order,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_setting(self,  String name,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_projectsettings_set_setting,self.godot_owner,args,NULL)
    hello('hallo2')
