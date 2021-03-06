from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptvariableget_get_variable
cdef godot_method_bind *bind_visualscriptvariableget_set_variable
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptvariableget_get_variable = api_core.godot_method_bind_get_method('VisualScriptVariableGet', 'get_variable')
  bind_visualscriptvariableget_set_variable = api_core.godot_method_bind_get_method('VisualScriptVariableGet', 'set_variable')

############################Generated class###################################
cdef class VisualScriptVariableGet(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptVariableGet")())
##################################Generated Properties#########################################
  @property
  def var_name(self): 
    return self.get_var_name()
  @var_name.setter 
  def var_name(self,value): 
    self.set_var_name(value)

##################################Generated Methods#########################################
  def  get_variable(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptvariableget_get_variable,self.godot_owner,[NULL,],&ret)
  def  set_variable(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptvariableget_set_variable,self.godot_owner,[NULL,],NULL)
