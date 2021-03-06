from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptdeconstruct__get_elem_cache
cdef godot_method_bind *bind_visualscriptdeconstruct__set_elem_cache
cdef godot_method_bind *bind_visualscriptdeconstruct_get_deconstruct_type
cdef godot_method_bind *bind_visualscriptdeconstruct_set_deconstruct_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptdeconstruct__get_elem_cache = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', '_get_elem_cache')
  bind_visualscriptdeconstruct__set_elem_cache = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', '_set_elem_cache')
  bind_visualscriptdeconstruct_get_deconstruct_type = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', 'get_deconstruct_type')
  bind_visualscriptdeconstruct_set_deconstruct_type = api_core.godot_method_bind_get_method('VisualScriptDeconstruct', 'set_deconstruct_type')

############################Generated class###################################
cdef class VisualScriptDeconstruct(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptDeconstruct")())
##################################Generated Properties#########################################
  @property
  def elem_cache(self): 
    return self.get_elem_cache()
  @elem_cache.setter 
  def elem_cache(self,value): 
    self.set_elem_cache(value)
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  _get_elem_cache(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct__get_elem_cache,self.godot_owner,[NULL,],&ret)
  def  _set_elem_cache(self, _cache):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct__set_elem_cache,self.godot_owner,[NULL,],NULL)
  def  get_deconstruct_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct_get_deconstruct_type,self.godot_owner,[NULL,],&ret)
  def  set_deconstruct_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptdeconstruct_set_deconstruct_type,self.godot_owner,[NULL,],NULL)
