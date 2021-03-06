from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_javascript_eval
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_javascript_eval = api_core.godot_method_bind_get_method('JavaScript', 'eval')

############################Generated class###################################
cdef class JavaScript(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("JavaScript")())
##################################Generated Methods#########################################
  def  eval(self, codeuse_global_execution_context):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_javascript_eval,self.godot_owner,[NULL,],&ret)
