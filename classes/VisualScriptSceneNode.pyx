from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptscenenode_get_node_path
cdef godot_method_bind *bind_visualscriptscenenode_set_node_path
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptscenenode_get_node_path = api_core.godot_method_bind_get_method('VisualScriptSceneNode', 'get_node_path')
  bind_visualscriptscenenode_set_node_path = api_core.godot_method_bind_get_method('VisualScriptSceneNode', 'set_node_path')

############################Generated class###################################
cdef class VisualScriptSceneNode(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptSceneNode")())
##################################Generated Properties#########################################
  @property
  def node_path(self): 
    return self.get_node_path()
  @node_path.setter 
  def node_path(self,value): 
    self.set_node_path(value)

##################################Generated Methods#########################################
  def  get_node_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptscenenode_get_node_path,self.godot_owner,[NULL,],&ret)
  def  set_node_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptscenenode_set_node_path,self.godot_owner,[NULL,],NULL)
