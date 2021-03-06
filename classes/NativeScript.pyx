from classes.Script cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class NativeScript(Script):
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
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_class_documentation,self.godot_owner,[NULL,],&ret)
  def  get_class_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_class_name,self.godot_owner,[NULL,],&ret)
  def  get_library(self):
    cdef godot_object *_owner = self.godot_owner
    cdef GDNativeLibrary ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_library,self.godot_owner,[NULL,],&ret)
  def  get_method_documentation(self, method):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_method_documentation,self.godot_owner,[NULL,],&ret)
  def  get_property_documentation(self, path):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_property_documentation,self.godot_owner,[NULL,],&ret)
  def  get_script_class_icon_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_script_class_icon_path,self.godot_owner,[NULL,],&ret)
  def  get_script_class_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_script_class_name,self.godot_owner,[NULL,],&ret)
  def  get_signal_documentation(self, signal_name):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_get_signal_documentation,self.godot_owner,[NULL,],&ret)
  def  new(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_nativescript_new,self.godot_owner,[NULL,],&ret)
  def  set_class_name(self, class_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_class_name,self.godot_owner,[NULL,],NULL)
  def  set_library(self, library):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_library,self.godot_owner,[NULL,],NULL)
  def  set_script_class_icon_path(self, icon_path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_script_class_icon_path,self.godot_owner,[NULL,],NULL)
  def  set_script_class_name(self, class_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_nativescript_set_script_class_name,self.godot_owner,[NULL,],NULL)
