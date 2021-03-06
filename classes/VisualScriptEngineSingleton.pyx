from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptenginesingleton_get_singleton
cdef godot_method_bind *bind_visualscriptenginesingleton_set_singleton
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptenginesingleton_get_singleton = api_core.godot_method_bind_get_method('VisualScriptEngineSingleton', 'get_singleton')
  bind_visualscriptenginesingleton_set_singleton = api_core.godot_method_bind_get_method('VisualScriptEngineSingleton', 'set_singleton')

############################Generated class###################################
cdef class VisualScriptEngineSingleton(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptEngineSingleton")())
##################################Generated Properties#########################################
  @property
  def constant(self): 
    return self.get_constant()
  @constant.setter 
  def constant(self,value): 
    self.set_constant(value)

##################################Generated Methods#########################################
  def  get_singleton(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptenginesingleton_get_singleton,self.godot_owner,[NULL,],&ret)
  def  set_singleton(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptenginesingleton_set_singleton,self.godot_owner,[NULL,],NULL)
