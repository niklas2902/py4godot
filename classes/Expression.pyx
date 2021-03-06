from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_expression_execute
cdef godot_method_bind *bind_expression_get_error_text
cdef godot_method_bind *bind_expression_has_execute_failed
cdef godot_method_bind *bind_expression_parse
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_expression_execute = api_core.godot_method_bind_get_method('Expression', 'execute')
  bind_expression_get_error_text = api_core.godot_method_bind_get_method('Expression', 'get_error_text')
  bind_expression_has_execute_failed = api_core.godot_method_bind_get_method('Expression', 'has_execute_failed')
  bind_expression_parse = api_core.godot_method_bind_get_method('Expression', 'parse')

############################Generated class###################################
cdef class Expression(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Expression")())
##################################Generated Methods#########################################
  def  execute(self, inputsbase_instanceshow_error):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_expression_execute,self.godot_owner,[NULL,],&ret)
  def  get_error_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_expression_get_error_text,self.godot_owner,[NULL,],&ret)
  def  has_execute_failed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_expression_has_execute_failed,self.godot_owner,[NULL,],&ret)
  def  parse(self, expressioninput_names):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_expression_parse,self.godot_owner,[NULL,],&ret)
