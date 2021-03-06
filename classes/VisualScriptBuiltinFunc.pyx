from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptbuiltinfunc_get_func
cdef godot_method_bind *bind_visualscriptbuiltinfunc_set_func
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptbuiltinfunc_get_func = api_core.godot_method_bind_get_method('VisualScriptBuiltinFunc', 'get_func')
  bind_visualscriptbuiltinfunc_set_func = api_core.godot_method_bind_get_method('VisualScriptBuiltinFunc', 'set_func')

############################Generated class###################################
cdef class VisualScriptBuiltinFunc(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptBuiltinFunc")())
##################################Generated Properties#########################################
  @property
  def function(self): 
    return self.get_function()
  @function.setter 
  def function(self,value): 
    self.set_function(value)

##################################Generated Methods#########################################
  def  get_func(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualScriptBuiltinFunc::BuiltinFunc ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptbuiltinfunc_get_func,self.godot_owner,[NULL,],&ret)
  def  set_func(self, which):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptbuiltinfunc_set_func,self.godot_owner,[NULL,],NULL)
