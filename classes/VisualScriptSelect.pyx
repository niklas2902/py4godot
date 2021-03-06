from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptselect_get_typed
cdef godot_method_bind *bind_visualscriptselect_set_typed
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptselect_get_typed = api_core.godot_method_bind_get_method('VisualScriptSelect', 'get_typed')
  bind_visualscriptselect_set_typed = api_core.godot_method_bind_get_method('VisualScriptSelect', 'set_typed')

############################Generated class###################################
cdef class VisualScriptSelect(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptSelect")())
##################################Generated Properties#########################################
  @property
  def type(self): 
    return self.get_type()
  @type.setter 
  def type(self,value): 
    self.set_type(value)

##################################Generated Methods#########################################
  def  get_typed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptselect_get_typed,self.godot_owner,[NULL,],&ret)
  def  set_typed(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptselect_set_typed,self.godot_owner,[NULL,],NULL)
