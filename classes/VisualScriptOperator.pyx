from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptoperator_get_operator
cdef godot_method_bind *bind_visualscriptoperator_get_typed
cdef godot_method_bind *bind_visualscriptoperator_set_operator
cdef godot_method_bind *bind_visualscriptoperator_set_typed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptoperator_get_operator = api_core.godot_method_bind_get_method('VisualScriptOperator', 'get_operator')
  bind_visualscriptoperator_get_typed = api_core.godot_method_bind_get_method('VisualScriptOperator', 'get_typed')
  bind_visualscriptoperator_set_operator = api_core.godot_method_bind_get_method('VisualScriptOperator', 'set_operator')
  bind_visualscriptoperator_set_typed = api_core.godot_method_bind_get_method('VisualScriptOperator', 'set_typed')

############################Generated class###################################
cdef class VisualScriptOperator(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptOperator")())
##################################Generated Properties#########################################
  @property
  def operator(self): 
    return self.get_operator()
  @operator.setter 
  def operator(self,value): 
    self.set_operator(value)
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  get_operator(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Operator ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_get_operator,self.godot_owner,[NULL,],&ret)
  def  get_typed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_get_typed,self.godot_owner,[NULL,],&ret)
  def  set_operator(self, op):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_set_operator,self.godot_owner,[NULL,],NULL)
  def  set_typed(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptoperator_set_typed,self.godot_owner,[NULL,],NULL)
