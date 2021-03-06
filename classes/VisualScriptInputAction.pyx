from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptinputaction_get_action_mode
cdef godot_method_bind *bind_visualscriptinputaction_get_action_name
cdef godot_method_bind *bind_visualscriptinputaction_set_action_mode
cdef godot_method_bind *bind_visualscriptinputaction_set_action_name
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptinputaction_get_action_mode = api_core.godot_method_bind_get_method('VisualScriptInputAction', 'get_action_mode')
  bind_visualscriptinputaction_get_action_name = api_core.godot_method_bind_get_method('VisualScriptInputAction', 'get_action_name')
  bind_visualscriptinputaction_set_action_mode = api_core.godot_method_bind_get_method('VisualScriptInputAction', 'set_action_mode')
  bind_visualscriptinputaction_set_action_name = api_core.godot_method_bind_get_method('VisualScriptInputAction', 'set_action_name')

############################Generated class###################################
cdef class VisualScriptInputAction(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptInputAction")())
##################################Generated Properties#########################################
  @property
  def action(self): 
    return self.get_action()
  @action.setter 
  def action(self,value): 
    self.set_action(value)
  @property
  def mode(self): 
    return self.get_mode()
  @mode.setter 
  def mode(self,value): 
    self.set_mode(value)

##################################Generated Methods#########################################
  def  get_action_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualScriptInputAction::Mode ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptinputaction_get_action_mode,self.godot_owner,[NULL,],&ret)
  def  get_action_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptinputaction_get_action_name,self.godot_owner,[NULL,],&ret)
  def  set_action_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptinputaction_set_action_mode,self.godot_owner,[NULL,],NULL)
  def  set_action_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptinputaction_set_action_name,self.godot_owner,[NULL,],NULL)
