from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodevectorop_get_operator
cdef godot_method_bind *bind_visualshadernodevectorop_set_operator
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodevectorop_get_operator = api_core.godot_method_bind_get_method('VisualShaderNodeVectorOp', 'get_operator')
  bind_visualshadernodevectorop_set_operator = api_core.godot_method_bind_get_method('VisualShaderNodeVectorOp', 'set_operator')

############################Generated class###################################
cdef class VisualShaderNodeVectorOp(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeVectorOp")())
##################################Generated Properties#########################################
  @property
  def operator(self): 
    return self.get_operator()
  @operator.setter 
  def operator(self,value): 
    self.set_operator(value)

##################################Generated Methods#########################################
  def  get_operator(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualShaderNodeVectorOp::Operator ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodevectorop_get_operator,self.godot_owner,[NULL,],&ret)
  def  set_operator(self, op):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodevectorop_set_operator,self.godot_owner,[NULL,],NULL)
