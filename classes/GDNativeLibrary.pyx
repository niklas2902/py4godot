
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
cimport classes.ConfigFile
cimport classes.Resource 

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
cdef class GDNativeLibrary(classes.Resource.Resource):
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

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_config_file,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_current_dependencies(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_current_dependencies,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_current_library_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_current_library_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_symbol_prefix(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_get_symbol_prefix,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  is_reloadable(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_is_reloadable,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_singleton(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_is_singleton,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_config_file(self,  classes.ConfigFile.ConfigFile config_file):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = config_file.godot_owner
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_config_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_load_once(self,  bool load_once):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &load_once
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_load_once,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_reloadable(self,  bool reloadable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &reloadable
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_reloadable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_singleton(self,  bool singleton):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &singleton
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_singleton,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_symbol_prefix(self,  String symbol_prefix):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &symbol_prefix._native
    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_set_symbol_prefix,self.godot_owner,args,NULL)
    hello('hallo2')
  def  should_load_once(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_gdnativelibrary_should_load_once,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

