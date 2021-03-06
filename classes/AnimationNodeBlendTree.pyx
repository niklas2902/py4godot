from classes.AnimationRootNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodeblendtree__node_changed
cdef godot_method_bind *bind_animationnodeblendtree__tree_changed
cdef godot_method_bind *bind_animationnodeblendtree_add_node
cdef godot_method_bind *bind_animationnodeblendtree_connect_node
cdef godot_method_bind *bind_animationnodeblendtree_disconnect_node
cdef godot_method_bind *bind_animationnodeblendtree_get_graph_offset
cdef godot_method_bind *bind_animationnodeblendtree_get_node
cdef godot_method_bind *bind_animationnodeblendtree_get_node_position
cdef godot_method_bind *bind_animationnodeblendtree_has_node
cdef godot_method_bind *bind_animationnodeblendtree_remove_node
cdef godot_method_bind *bind_animationnodeblendtree_rename_node
cdef godot_method_bind *bind_animationnodeblendtree_set_graph_offset
cdef godot_method_bind *bind_animationnodeblendtree_set_node_position
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodeblendtree__node_changed = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', '_node_changed')
  bind_animationnodeblendtree__tree_changed = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', '_tree_changed')
  bind_animationnodeblendtree_add_node = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'add_node')
  bind_animationnodeblendtree_connect_node = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'connect_node')
  bind_animationnodeblendtree_disconnect_node = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'disconnect_node')
  bind_animationnodeblendtree_get_graph_offset = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'get_graph_offset')
  bind_animationnodeblendtree_get_node = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'get_node')
  bind_animationnodeblendtree_get_node_position = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'get_node_position')
  bind_animationnodeblendtree_has_node = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'has_node')
  bind_animationnodeblendtree_remove_node = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'remove_node')
  bind_animationnodeblendtree_rename_node = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'rename_node')
  bind_animationnodeblendtree_set_graph_offset = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'set_graph_offset')
  bind_animationnodeblendtree_set_node_position = api_core.godot_method_bind_get_method('AnimationNodeBlendTree', 'set_node_position')

############################Generated class###################################
cdef class AnimationNodeBlendTree(AnimationRootNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeBlendTree")())
##################################Generated Properties#########################################
  @property
  def graph_offset(self): 
    return self.get_graph_offset()
  @graph_offset.setter 
  def graph_offset(self,value): 
    self.set_graph_offset(value)

##################################Generated Methods#########################################
  def  _node_changed(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree__node_changed,self.godot_owner,[NULL,],NULL)
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree__tree_changed,self.godot_owner,[NULL,],NULL)
  def  add_node(self, namenodeposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_add_node,self.godot_owner,[NULL,],NULL)
  def  connect_node(self, input_nodeinput_indexoutput_node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_connect_node,self.godot_owner,[NULL,],NULL)
  def  disconnect_node(self, input_nodeinput_index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_disconnect_node,self.godot_owner,[NULL,],NULL)
  def  get_graph_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_get_graph_offset,self.godot_owner,[NULL,],&ret)
  def  get_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationNode ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_get_node,self.godot_owner,[NULL,],&ret)
  def  get_node_position(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_get_node_position,self.godot_owner,[NULL,],&ret)
  def  has_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_has_node,self.godot_owner,[NULL,],&ret)
  def  remove_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_remove_node,self.godot_owner,[NULL,],NULL)
  def  rename_node(self, namenew_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_rename_node,self.godot_owner,[NULL,],NULL)
  def  set_graph_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_set_graph_offset,self.godot_owner,[NULL,],NULL)
  def  set_node_position(self, nameposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_set_node_position,self.godot_owner,[NULL,],NULL)
