from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptyieldsignal_get_base_path
cdef godot_method_bind *bind_visualscriptyieldsignal_get_base_type
cdef godot_method_bind *bind_visualscriptyieldsignal_get_call_mode
cdef godot_method_bind *bind_visualscriptyieldsignal_get_signal
cdef godot_method_bind *bind_visualscriptyieldsignal_set_base_path
cdef godot_method_bind *bind_visualscriptyieldsignal_set_base_type
cdef godot_method_bind *bind_visualscriptyieldsignal_set_call_mode
cdef godot_method_bind *bind_visualscriptyieldsignal_set_signal
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptyieldsignal_get_base_path = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_base_path')
  bind_visualscriptyieldsignal_get_base_type = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_base_type')
  bind_visualscriptyieldsignal_get_call_mode = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_call_mode')
  bind_visualscriptyieldsignal_get_signal = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'get_signal')
  bind_visualscriptyieldsignal_set_base_path = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_base_path')
  bind_visualscriptyieldsignal_set_base_type = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_base_type')
  bind_visualscriptyieldsignal_set_call_mode = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_call_mode')
  bind_visualscriptyieldsignal_set_signal = api_core.godot_method_bind_get_method('VisualScriptYieldSignal', 'set_signal')

############################Generated class###################################
cdef class VisualScriptYieldSignal(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptYieldSignal")())
##################################Generated Properties#########################################
  @property
  def base_type(self): 
    return self.get_base_type()
  @base_type.setter 
  def base_type(self,value): 
    self.set_base_type(value)
  @property
  def call_mode(self): 
    return self.get_call_mode()
  @call_mode.setter 
  def call_mode(self,value): 
    self.set_call_mode(value)
  @property
  def node_path(self): 
    return self.get_node_path()
  @node_path.setter 
  def node_path(self,value): 
    self.set_node_path(value)
  @property
  def signal(self): 
    return self.get_signal()
  @signal.setter 
  def signal(self,value): 
    self.set_signal(value)

##################################Generated Methods#########################################
  def  get_base_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_base_path,self.godot_owner,[NULL,],&ret)
  def  get_base_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_base_type,self.godot_owner,[NULL,],&ret)
  def  get_call_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualScriptYieldSignal::CallMode ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_call_mode,self.godot_owner,[NULL,],&ret)
  def  get_signal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_get_signal,self.godot_owner,[NULL,],&ret)
  def  set_base_path(self, base_path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_base_path,self.godot_owner,[NULL,],NULL)
  def  set_base_type(self, base_type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_base_type,self.godot_owner,[NULL,],NULL)
  def  set_call_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_call_mode,self.godot_owner,[NULL,],NULL)
  def  set_signal(self, signal):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptyieldsignal_set_signal,self.godot_owner,[NULL,],NULL)
