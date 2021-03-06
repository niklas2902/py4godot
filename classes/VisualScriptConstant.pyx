from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptconstant_get_constant_type
cdef godot_method_bind *bind_visualscriptconstant_get_constant_value
cdef godot_method_bind *bind_visualscriptconstant_set_constant_type
cdef godot_method_bind *bind_visualscriptconstant_set_constant_value
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptconstant_get_constant_type = api_core.godot_method_bind_get_method('VisualScriptConstant', 'get_constant_type')
  bind_visualscriptconstant_get_constant_value = api_core.godot_method_bind_get_method('VisualScriptConstant', 'get_constant_value')
  bind_visualscriptconstant_set_constant_type = api_core.godot_method_bind_get_method('VisualScriptConstant', 'set_constant_type')
  bind_visualscriptconstant_set_constant_value = api_core.godot_method_bind_get_method('VisualScriptConstant', 'set_constant_value')

############################Generated class###################################
cdef class VisualScriptConstant(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptConstant")())
##################################Generated Properties#########################################
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)
  @property
  def value(self): 
    return self.get_value()
  @value.setter 
  def value(self,value): 
    self.set_value(value)

##################################Generated Methods#########################################
  def  get_constant_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_get_constant_type,self.godot_owner,[NULL,],&ret)
  def  get_constant_value(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_get_constant_value,self.godot_owner,[NULL,],&ret)
  def  set_constant_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_set_constant_type,self.godot_owner,[NULL,],NULL)
  def  set_constant_value(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptconstant_set_constant_value,self.godot_owner,[NULL,],NULL)
