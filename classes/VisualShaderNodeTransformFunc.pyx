from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodetransformfunc_get_function
cdef godot_method_bind *bind_visualshadernodetransformfunc_set_function
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodetransformfunc_get_function = api_core.godot_method_bind_get_method('VisualShaderNodeTransformFunc', 'get_function')
  bind_visualshadernodetransformfunc_set_function = api_core.godot_method_bind_get_method('VisualShaderNodeTransformFunc', 'set_function')

############################Generated class###################################
cdef class VisualShaderNodeTransformFunc(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeTransformFunc")())
##################################Generated Properties#########################################
  @property
  def function(self): 
    return self.get_function()
  @function.setter 
  def function(self,value): 
    self.set_function(value)

##################################Generated Methods#########################################
  def  get_function(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeTransformFunc::Function ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetransformfunc_get_function,self.godot_owner,[NULL,],&ret)
  def  set_function(self, func):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodetransformfunc_set_function,self.godot_owner,[NULL,],NULL)
