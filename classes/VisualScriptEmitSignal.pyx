from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptemitsignal_get_signal
cdef godot_method_bind *bind_visualscriptemitsignal_set_signal
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptemitsignal_get_signal = api_core.godot_method_bind_get_method('VisualScriptEmitSignal', 'get_signal')
  bind_visualscriptemitsignal_set_signal = api_core.godot_method_bind_get_method('VisualScriptEmitSignal', 'set_signal')

############################Generated class###################################
cdef class VisualScriptEmitSignal(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptEmitSignal")())
##################################Generated Properties#########################################
  @property
  def signal(self): 
    return self.get_signal()
  @signal.setter 
  def signal(self,value): 
    self.set_signal(value)

##################################Generated Methods#########################################
  def  get_signal(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptemitsignal_get_signal,self.godot_owner,[NULL,],&ret)
  def  set_signal(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptemitsignal_set_signal,self.godot_owner,[NULL,],NULL)
