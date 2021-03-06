from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptresourcepath_get_resource_path
cdef godot_method_bind *bind_visualscriptresourcepath_set_resource_path
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptresourcepath_get_resource_path = api_core.godot_method_bind_get_method('VisualScriptResourcePath', 'get_resource_path')
  bind_visualscriptresourcepath_set_resource_path = api_core.godot_method_bind_get_method('VisualScriptResourcePath', 'set_resource_path')

############################Generated class###################################
cdef class VisualScriptResourcePath(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptResourcePath")())
##################################Generated Properties#########################################
  @property
  def path(self): 
    return self.get_path()
  @path.setter 
  def path(self,value): 
    self.set_path(value)

##################################Generated Methods#########################################
  def  get_resource_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptresourcepath_get_resource_path,self.godot_owner,[NULL,],&ret)
  def  set_resource_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptresourcepath_set_resource_path,self.godot_owner,[NULL,],NULL)
