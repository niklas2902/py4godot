from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptglobalconstant_get_global_constant
cdef godot_method_bind *bind_visualscriptglobalconstant_set_global_constant
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptglobalconstant_get_global_constant = api_core.godot_method_bind_get_method('VisualScriptGlobalConstant', 'get_global_constant')
  bind_visualscriptglobalconstant_set_global_constant = api_core.godot_method_bind_get_method('VisualScriptGlobalConstant', 'set_global_constant')

############################Generated class###################################
cdef class VisualScriptGlobalConstant(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptGlobalConstant")())
##################################Generated Properties#########################################
  @property
  def constant(self): 
    return self.get_constant()
  @constant.setter 
  def constant(self,value): 
    self.set_constant(value)

##################################Generated Methods#########################################
  def  get_global_constant(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptglobalconstant_get_global_constant,self.godot_owner,[NULL,],&ret)
  def  set_global_constant(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptglobalconstant_set_global_constant,self.godot_owner,[NULL,],NULL)
