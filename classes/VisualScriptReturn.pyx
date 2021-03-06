from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptreturn_get_return_type
cdef godot_method_bind *bind_visualscriptreturn_is_return_value_enabled
cdef godot_method_bind *bind_visualscriptreturn_set_enable_return_value
cdef godot_method_bind *bind_visualscriptreturn_set_return_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptreturn_get_return_type = api_core.godot_method_bind_get_method('VisualScriptReturn', 'get_return_type')
  bind_visualscriptreturn_is_return_value_enabled = api_core.godot_method_bind_get_method('VisualScriptReturn', 'is_return_value_enabled')
  bind_visualscriptreturn_set_enable_return_value = api_core.godot_method_bind_get_method('VisualScriptReturn', 'set_enable_return_value')
  bind_visualscriptreturn_set_return_type = api_core.godot_method_bind_get_method('VisualScriptReturn', 'set_return_type')

############################Generated class###################################
cdef class VisualScriptReturn(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptReturn")())
##################################Generated Properties#########################################
  @property
  def return_enabled(self): 
    return self.get_return_enabled()
  @return_enabled.setter 
  def return_enabled(self,value): 
    self.set_return_enabled(value)
  @property
  def return_type(self): 
    return self.get_return_type()
  @return_type.setter 
  def return_type(self,value): 
    self.set_return_type(value)

##################################Generated Methods#########################################
  def  get_return_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_get_return_type,self.godot_owner,[NULL,],&ret)
  def  is_return_value_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_is_return_value_enabled,self.godot_owner,[NULL,],&ret)
  def  set_enable_return_value(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_set_enable_return_value,self.godot_owner,[NULL,],NULL)
  def  set_return_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptreturn_set_return_type,self.godot_owner,[NULL,],NULL)
