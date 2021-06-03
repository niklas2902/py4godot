
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
cimport classes.GDNativeLibrary
cimport classes.Script 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_nativescript_get_class_documentation
cdef godot_method_bind *bind_nativescript_get_class_name
cdef godot_method_bind *bind_nativescript_get_library
cdef godot_method_bind *bind_nativescript_get_method_documentation
cdef godot_method_bind *bind_nativescript_get_property_documentation
cdef godot_method_bind *bind_nativescript_get_script_class_icon_path
cdef godot_method_bind *bind_nativescript_get_script_class_name
cdef godot_method_bind *bind_nativescript_get_signal_documentation
cdef godot_method_bind *bind_nativescript_new
cdef godot_method_bind *bind_nativescript_set_class_name
cdef godot_method_bind *bind_nativescript_set_library
cdef godot_method_bind *bind_nativescript_set_script_class_icon_path
cdef godot_method_bind *bind_nativescript_set_script_class_name
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_nativescript_get_class_documentation = api_core.godot_method_bind_get_method('NativeScript', 'get_class_documentation')
  bind_nativescript_get_class_name = api_core.godot_method_bind_get_method('NativeScript', 'get_class_name')
  bind_nativescript_get_library = api_core.godot_method_bind_get_method('NativeScript', 'get_library')
  bind_nativescript_get_method_documentation = api_core.godot_method_bind_get_method('NativeScript', 'get_method_documentation')
  bind_nativescript_get_property_documentation = api_core.godot_method_bind_get_method('NativeScript', 'get_property_documentation')
  bind_nativescript_get_script_class_icon_path = api_core.godot_method_bind_get_method('NativeScript', 'get_script_class_icon_path')
  bind_nativescript_get_script_class_name = api_core.godot_method_bind_get_method('NativeScript', 'get_script_class_name')
  bind_nativescript_get_signal_documentation = api_core.godot_method_bind_get_method('NativeScript', 'get_signal_documentation')
  bind_nativescript_new = api_core.godot_method_bind_get_method('NativeScript', 'new')
  bind_nativescript_set_class_name = api_core.godot_method_bind_get_method('NativeScript', 'set_class_name')
  bind_nativescript_set_library = api_core.godot_method_bind_get_method('NativeScript', 'set_library')
  bind_nativescript_set_script_class_icon_path = api_core.godot_method_bind_get_method('NativeScript', 'set_script_class_icon_path')
  bind_nativescript_set_script_class_name = api_core.godot_method_bind_get_method('NativeScript', 'set_script_class_name')

############################Generated class###################################
cdef class NativeScript(classes.Script.Script):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NativeScript")())
##################################Generated Properties#########################################
  @property
  def class_name(self): 
    return self.get_class_name()
  @class_name.setter 
  def class_name(self,value): 
    self.set_class_name(value)
  @property
  def library(self): 
    return self.get_library()
  @library.setter 
  def library(self,value): 
    self.set_library(value)
  @property
  def script_class_icon_path(self): 
    return self.get_script_class_icon_path()
  @script_class_icon_path.setter 
  def script_class_icon_path(self,value): 
    self.set_script_class_icon_path(value)
  @property
  def script_class_name(self): 
    return self.get_script_class_name()
  @script_class_name.setter 
  def script_class_name(self,value): 
    self.set_script_class_name(value)

##################################Generated Methods#########################################
  def  get_class_documentation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_nativescript_get_class_documentation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_class_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_nativescript_get_class_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_library(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_nativescript_get_library,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_method_documentation(self,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &method._native
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_method_documentation,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_property_documentation(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_property_documentation,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_script_class_icon_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_nativescript_get_script_class_icon_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_script_class_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_nativescript_get_script_class_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_signal_documentation(self,  String signal_name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &signal_name._native
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_signal_documentation,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  new(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_nativescript_new,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  set_class_name(self,  String class_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &class_name._native
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_class_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_library(self,  classes.GDNativeLibrary.GDNativeLibrary library):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = library.godot_owner
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_library,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_script_class_icon_path(self,  String icon_path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &icon_path._native
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_script_class_icon_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_script_class_name(self,  String class_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &class_name._native
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_script_class_name,self.godot_owner,args,NULL)
    hello('hallo2')
