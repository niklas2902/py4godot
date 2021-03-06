from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptfunctionstate__signal_callback
cdef godot_method_bind *bind_visualscriptfunctionstate_connect_to_signal
cdef godot_method_bind *bind_visualscriptfunctionstate_is_valid
cdef godot_method_bind *bind_visualscriptfunctionstate_resume
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptfunctionstate__signal_callback = api_core.godot_method_bind_get_method('VisualScriptFunctionState', '_signal_callback')
  bind_visualscriptfunctionstate_connect_to_signal = api_core.godot_method_bind_get_method('VisualScriptFunctionState', 'connect_to_signal')
  bind_visualscriptfunctionstate_is_valid = api_core.godot_method_bind_get_method('VisualScriptFunctionState', 'is_valid')
  bind_visualscriptfunctionstate_resume = api_core.godot_method_bind_get_method('VisualScriptFunctionState', 'resume')

############################Generated class###################################
cdef class VisualScriptFunctionState(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptFunctionState")())
##################################Generated Methods#########################################
  def  _signal_callback(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate__signal_callback,self.godot_owner,[NULL,],&ret)
  def  connect_to_signal(self, objsignalsargs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate_connect_to_signal,self.godot_owner,[NULL,],NULL)
  def  is_valid(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate_is_valid,self.godot_owner,[NULL,],&ret)
  def  resume(self, args):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptfunctionstate_resume,self.godot_owner,[NULL,],&ret)
