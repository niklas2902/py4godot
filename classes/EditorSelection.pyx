from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_editorselection__emit_change
cdef godot_method_bind *bind_editorselection__node_removed
cdef godot_method_bind *bind_editorselection_add_node
cdef godot_method_bind *bind_editorselection_clear
cdef godot_method_bind *bind_editorselection_get_selected_nodes
cdef godot_method_bind *bind_editorselection_get_transformable_selected_nodes
cdef godot_method_bind *bind_editorselection_remove_node
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_editorselection__emit_change = api_core.godot_method_bind_get_method('EditorSelection', '_emit_change')
  bind_editorselection__node_removed = api_core.godot_method_bind_get_method('EditorSelection', '_node_removed')
  bind_editorselection_add_node = api_core.godot_method_bind_get_method('EditorSelection', 'add_node')
  bind_editorselection_clear = api_core.godot_method_bind_get_method('EditorSelection', 'clear')
  bind_editorselection_get_selected_nodes = api_core.godot_method_bind_get_method('EditorSelection', 'get_selected_nodes')
  bind_editorselection_get_transformable_selected_nodes = api_core.godot_method_bind_get_method('EditorSelection', 'get_transformable_selected_nodes')
  bind_editorselection_remove_node = api_core.godot_method_bind_get_method('EditorSelection', 'remove_node')

############################Generated class###################################
cdef class EditorSelection(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("EditorSelection")())
##################################Generated Methods#########################################
  def  _emit_change(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection__emit_change,self.godot_owner,[NULL,],NULL)
  def  _node_removed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection__node_removed,self.godot_owner,[NULL,],NULL)
  def  add_node(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection_add_node,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection_clear,self.godot_owner,[NULL,],NULL)
  def  get_selected_nodes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_editorselection_get_selected_nodes,self.godot_owner,[NULL,],&ret)
  def  get_transformable_selected_nodes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_editorselection_get_transformable_selected_nodes,self.godot_owner,[NULL,],&ret)
  def  remove_node(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_editorselection_remove_node,self.godot_owner,[NULL,],NULL)
