from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_gdscriptfunctionstate__signal_callback
cdef godot_method_bind *bind_gdscriptfunctionstate_is_valid
cdef godot_method_bind *bind_gdscriptfunctionstate_resume
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_gdscriptfunctionstate__signal_callback = api_core.godot_method_bind_get_method('GDScriptFunctionState', '_signal_callback')
  bind_gdscriptfunctionstate_is_valid = api_core.godot_method_bind_get_method('GDScriptFunctionState', 'is_valid')
  bind_gdscriptfunctionstate_resume = api_core.godot_method_bind_get_method('GDScriptFunctionState', 'resume')

############################Generated class###################################
cdef class GDScriptFunctionState(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("GDScriptFunctionState")())
##################################Generated Methods#########################################
  def  _signal_callback(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_gdscriptfunctionstate__signal_callback,self.godot_owner,[NULL,],&ret)
  def  is_valid(self, extended_check):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_gdscriptfunctionstate_is_valid,self.godot_owner,[NULL,],&ret)
  def  resume(self, arg):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_gdscriptfunctionstate_resume,self.godot_owner,[NULL,],&ret)
