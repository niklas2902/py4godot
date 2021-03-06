from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodeis_get_function
cdef godot_method_bind *bind_visualshadernodeis_set_function
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodeis_get_function = api_core.godot_method_bind_get_method('VisualShaderNodeIs', 'get_function')
  bind_visualshadernodeis_set_function = api_core.godot_method_bind_get_method('VisualShaderNodeIs', 'set_function')

############################Generated class###################################
cdef class VisualShaderNodeIs(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeIs")())
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
    cdef VisualShaderNodeIs::Function ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeis_get_function,self.godot_owner,[NULL,],&ret)
  def  set_function(self, func):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeis_set_function,self.godot_owner,[NULL,],NULL)
