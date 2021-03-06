from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptyield_get_wait_time
cdef godot_method_bind *bind_visualscriptyield_get_yield_mode
cdef godot_method_bind *bind_visualscriptyield_set_wait_time
cdef godot_method_bind *bind_visualscriptyield_set_yield_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptyield_get_wait_time = api_core.godot_method_bind_get_method('VisualScriptYield', 'get_wait_time')
  bind_visualscriptyield_get_yield_mode = api_core.godot_method_bind_get_method('VisualScriptYield', 'get_yield_mode')
  bind_visualscriptyield_set_wait_time = api_core.godot_method_bind_get_method('VisualScriptYield', 'set_wait_time')
  bind_visualscriptyield_set_yield_mode = api_core.godot_method_bind_get_method('VisualScriptYield', 'set_yield_mode')

############################Generated class###################################
cdef class VisualScriptYield(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptYield")())
##################################Generated Properties#########################################
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)
  @property
  def wait_time(self): 
    return self.get_wait_time()
  @wait_time.setter 
  def wait_time(self,value): 
    self.set_wait_time(value)

##################################Generated Methods#########################################
  def  get_wait_time(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_get_wait_time,self.godot_owner,[NULL,],&ret)
  def  get_yield_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualScriptYield::YieldMode ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_get_yield_mode,self.godot_owner,[NULL,],&ret)
  def  set_wait_time(self, sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_set_wait_time,self.godot_owner,[NULL,],NULL)
  def  set_yield_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptyield_set_yield_mode,self.godot_owner,[NULL,],NULL)
