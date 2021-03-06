from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptlocalvar_get_var_name
cdef godot_method_bind *bind_visualscriptlocalvar_get_var_type
cdef godot_method_bind *bind_visualscriptlocalvar_set_var_name
cdef godot_method_bind *bind_visualscriptlocalvar_set_var_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptlocalvar_get_var_name = api_core.godot_method_bind_get_method('VisualScriptLocalVar', 'get_var_name')
  bind_visualscriptlocalvar_get_var_type = api_core.godot_method_bind_get_method('VisualScriptLocalVar', 'get_var_type')
  bind_visualscriptlocalvar_set_var_name = api_core.godot_method_bind_get_method('VisualScriptLocalVar', 'set_var_name')
  bind_visualscriptlocalvar_set_var_type = api_core.godot_method_bind_get_method('VisualScriptLocalVar', 'set_var_type')

############################Generated class###################################
cdef class VisualScriptLocalVar(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptLocalVar")())
##################################Generated Properties#########################################
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)
  @property
  def var_name(self): 
    return self.get_var_name()
  @var_name.setter 
  def var_name(self,value): 
    self.set_var_name(value)

##################################Generated Methods#########################################
  def  get_var_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptlocalvar_get_var_name,self.godot_owner,[NULL,],&ret)
  def  get_var_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptlocalvar_get_var_type,self.godot_owner,[NULL,],&ret)
  def  set_var_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlocalvar_set_var_name,self.godot_owner,[NULL,],NULL)
  def  set_var_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptlocalvar_set_var_type,self.godot_owner,[NULL,],NULL)
