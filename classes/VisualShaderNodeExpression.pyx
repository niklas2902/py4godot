from classes.VisualShaderNodeGroupBase cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodeexpression_get_expression
cdef godot_method_bind *bind_visualshadernodeexpression_set_expression
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodeexpression_get_expression = api_core.godot_method_bind_get_method('VisualShaderNodeExpression', 'get_expression')
  bind_visualshadernodeexpression_set_expression = api_core.godot_method_bind_get_method('VisualShaderNodeExpression', 'set_expression')

############################Generated class###################################
cdef class VisualShaderNodeExpression(VisualShaderNodeGroupBase):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeExpression")())
##################################Generated Properties#########################################
  @property
  def expression(self): 
    return self.get_expression()
  @expression.setter 
  def expression(self,value): 
    self.set_expression(value)

##################################Generated Methods#########################################
  def  get_expression(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeexpression_get_expression,self.godot_owner,[NULL,],&ret)
  def  set_expression(self, expression):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodeexpression_set_expression,self.godot_owner,[NULL,],NULL)
