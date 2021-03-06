from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodescalarconstant_get_constant
cdef godot_method_bind *bind_visualshadernodescalarconstant_set_constant
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodescalarconstant_get_constant = api_core.godot_method_bind_get_method('VisualShaderNodeScalarConstant', 'get_constant')
  bind_visualshadernodescalarconstant_set_constant = api_core.godot_method_bind_get_method('VisualShaderNodeScalarConstant', 'set_constant')

############################Generated class###################################
cdef class VisualShaderNodeScalarConstant(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeScalarConstant")())
##################################Generated Properties#########################################
  @property
  def constant(self): 
    return self.get_constant()
  @constant.setter 
  def constant(self,value): 
    self.set_constant(value)

##################################Generated Methods#########################################
  def  get_constant(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodescalarconstant_get_constant,self.godot_owner,[NULL,],&ret)
  def  set_constant(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodescalarconstant_set_constant,self.godot_owner,[NULL,],NULL)
