from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptpreload_get_preload
cdef godot_method_bind *bind_visualscriptpreload_set_preload
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptpreload_get_preload = api_core.godot_method_bind_get_method('VisualScriptPreload', 'get_preload')
  bind_visualscriptpreload_set_preload = api_core.godot_method_bind_get_method('VisualScriptPreload', 'set_preload')

############################Generated class###################################
cdef class VisualScriptPreload(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptPreload")())
##################################Generated Properties#########################################
  @property
  def resource(self): 
    return self.get_resource()
  @resource.setter 
  def resource(self,value): 
    self.set_resource(value)

##################################Generated Methods#########################################
  def  get_preload(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Resource ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptpreload_get_preload,self.godot_owner,[NULL,],&ret)
  def  set_preload(self, resource):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptpreload_set_preload,self.godot_owner,[NULL,],NULL)
