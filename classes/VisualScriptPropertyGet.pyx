from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptpropertyget__get_type_cache
cdef godot_method_bind *bind_visualscriptpropertyget__set_type_cache
cdef godot_method_bind *bind_visualscriptpropertyget_get_base_path
cdef godot_method_bind *bind_visualscriptpropertyget_get_base_script
cdef godot_method_bind *bind_visualscriptpropertyget_get_base_type
cdef godot_method_bind *bind_visualscriptpropertyget_get_basic_type
cdef godot_method_bind *bind_visualscriptpropertyget_get_call_mode
cdef godot_method_bind *bind_visualscriptpropertyget_get_index
cdef godot_method_bind *bind_visualscriptpropertyget_get_property
cdef godot_method_bind *bind_visualscriptpropertyget_set_base_path
cdef godot_method_bind *bind_visualscriptpropertyget_set_base_script
cdef godot_method_bind *bind_visualscriptpropertyget_set_base_type
cdef godot_method_bind *bind_visualscriptpropertyget_set_basic_type
cdef godot_method_bind *bind_visualscriptpropertyget_set_call_mode
cdef godot_method_bind *bind_visualscriptpropertyget_set_index
cdef godot_method_bind *bind_visualscriptpropertyget_set_property
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptpropertyget__get_type_cache = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', '_get_type_cache')
  bind_visualscriptpropertyget__set_type_cache = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', '_set_type_cache')
  bind_visualscriptpropertyget_get_base_path = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'get_base_path')
  bind_visualscriptpropertyget_get_base_script = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'get_base_script')
  bind_visualscriptpropertyget_get_base_type = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'get_base_type')
  bind_visualscriptpropertyget_get_basic_type = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'get_basic_type')
  bind_visualscriptpropertyget_get_call_mode = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'get_call_mode')
  bind_visualscriptpropertyget_get_index = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'get_index')
  bind_visualscriptpropertyget_get_property = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'get_property')
  bind_visualscriptpropertyget_set_base_path = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'set_base_path')
  bind_visualscriptpropertyget_set_base_script = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'set_base_script')
  bind_visualscriptpropertyget_set_base_type = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'set_base_type')
  bind_visualscriptpropertyget_set_basic_type = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'set_basic_type')
  bind_visualscriptpropertyget_set_call_mode = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'set_call_mode')
  bind_visualscriptpropertyget_set_index = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'set_index')
  bind_visualscriptpropertyget_set_property = api_core.godot_method_bind_get_method('VisualScriptPropertyGet', 'set_property')

############################Generated class###################################
cdef class VisualScriptPropertyGet(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptPropertyGet")())
##################################Generated Properties#########################################
  @property
  def base_script(self): 
    return self.get_base_script()
  @base_script.setter 
  def base_script(self,value): 
    self.set_base_script(value)
  @property
  def base_type(self): 
    return self.get_base_type()
  @base_type.setter 
  def base_type(self,value): 
    self.set_base_type(value)
  @property
  def basic_type(self): 
    return self.get_basic_type()
  @basic_type.setter 
  def basic_type(self,value): 
    self.set_basic_type(value)
  @property
  def index(self): 
    return self.get_index()
  @index.setter 
  def index(self,value): 
    self.set_index(value)
  @property
  def node_path(self): 
    return self.get_node_path()
  @node_path.setter 
  def node_path(self,value): 
    self.set_node_path(value)
  @property
  def property(self): 
    return self.get_property()
  @property.setter 
  def property(self,value): 
    self.set_property(value)
  @property
  def set_mode(self): 
    return self.get_set_mode()
  @set_mode.setter 
  def set_mode(self,value): 
    self.set_set_mode(value)
  @property
  def type_cache(self): 
    return self.get_type_cache()
  @type_cache.setter 
  def type_cache(self,value): 
    self.set_type_cache(value)

##################################Generated Methods#########################################
  def  _get_type_cache(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget__get_type_cache,self.godot_owner,[NULL,],&ret)
  def  _set_type_cache(self, type_cache):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget__set_type_cache,self.godot_owner,[NULL,],NULL)
  def  get_base_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_get_base_path,self.godot_owner,[NULL,],&ret)
  def  get_base_script(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_get_base_script,self.godot_owner,[NULL,],&ret)
  def  get_base_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_get_base_type,self.godot_owner,[NULL,],&ret)
  def  get_basic_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_get_basic_type,self.godot_owner,[NULL,],&ret)
  def  get_call_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualScriptPropertyGet::CallMode ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_get_call_mode,self.godot_owner,[NULL,],&ret)
  def  get_index(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_get_index,self.godot_owner,[NULL,],&ret)
  def  get_property(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_get_property,self.godot_owner,[NULL,],&ret)
  def  set_base_path(self, base_path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_set_base_path,self.godot_owner,[NULL,],NULL)
  def  set_base_script(self, base_script):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_set_base_script,self.godot_owner,[NULL,],NULL)
  def  set_base_type(self, base_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_set_base_type,self.godot_owner,[NULL,],NULL)
  def  set_basic_type(self, basic_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_set_basic_type,self.godot_owner,[NULL,],NULL)
  def  set_call_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_set_call_mode,self.godot_owner,[NULL,],NULL)
  def  set_index(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_set_index,self.godot_owner,[NULL,],NULL)
  def  set_property(self, property):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpropertyget_set_property,self.godot_owner,[NULL,],NULL)
