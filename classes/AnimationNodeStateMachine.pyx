from classes.AnimationRootNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodestatemachine__tree_changed
cdef godot_method_bind *bind_animationnodestatemachine_add_node
cdef godot_method_bind *bind_animationnodestatemachine_add_transition
cdef godot_method_bind *bind_animationnodestatemachine_get_end_node
cdef godot_method_bind *bind_animationnodestatemachine_get_graph_offset
cdef godot_method_bind *bind_animationnodestatemachine_get_node
cdef godot_method_bind *bind_animationnodestatemachine_get_node_name
cdef godot_method_bind *bind_animationnodestatemachine_get_node_position
cdef godot_method_bind *bind_animationnodestatemachine_get_start_node
cdef godot_method_bind *bind_animationnodestatemachine_get_transition
cdef godot_method_bind *bind_animationnodestatemachine_get_transition_count
cdef godot_method_bind *bind_animationnodestatemachine_get_transition_from
cdef godot_method_bind *bind_animationnodestatemachine_get_transition_to
cdef godot_method_bind *bind_animationnodestatemachine_has_node
cdef godot_method_bind *bind_animationnodestatemachine_has_transition
cdef godot_method_bind *bind_animationnodestatemachine_remove_node
cdef godot_method_bind *bind_animationnodestatemachine_remove_transition
cdef godot_method_bind *bind_animationnodestatemachine_remove_transition_by_index
cdef godot_method_bind *bind_animationnodestatemachine_rename_node
cdef godot_method_bind *bind_animationnodestatemachine_set_end_node
cdef godot_method_bind *bind_animationnodestatemachine_set_graph_offset
cdef godot_method_bind *bind_animationnodestatemachine_set_node_position
cdef godot_method_bind *bind_animationnodestatemachine_set_start_node
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodestatemachine__tree_changed = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', '_tree_changed')
  bind_animationnodestatemachine_add_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'add_node')
  bind_animationnodestatemachine_add_transition = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'add_transition')
  bind_animationnodestatemachine_get_end_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_end_node')
  bind_animationnodestatemachine_get_graph_offset = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_graph_offset')
  bind_animationnodestatemachine_get_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_node')
  bind_animationnodestatemachine_get_node_name = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_node_name')
  bind_animationnodestatemachine_get_node_position = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_node_position')
  bind_animationnodestatemachine_get_start_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_start_node')
  bind_animationnodestatemachine_get_transition = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_transition')
  bind_animationnodestatemachine_get_transition_count = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_transition_count')
  bind_animationnodestatemachine_get_transition_from = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_transition_from')
  bind_animationnodestatemachine_get_transition_to = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'get_transition_to')
  bind_animationnodestatemachine_has_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'has_node')
  bind_animationnodestatemachine_has_transition = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'has_transition')
  bind_animationnodestatemachine_remove_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'remove_node')
  bind_animationnodestatemachine_remove_transition = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'remove_transition')
  bind_animationnodestatemachine_remove_transition_by_index = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'remove_transition_by_index')
  bind_animationnodestatemachine_rename_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'rename_node')
  bind_animationnodestatemachine_set_end_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'set_end_node')
  bind_animationnodestatemachine_set_graph_offset = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'set_graph_offset')
  bind_animationnodestatemachine_set_node_position = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'set_node_position')
  bind_animationnodestatemachine_set_start_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachine', 'set_start_node')

############################Generated class###################################
cdef class AnimationNodeStateMachine(AnimationRootNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeStateMachine")())
##################################Generated Methods#########################################
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine__tree_changed,self.godot_owner,[NULL,],NULL)
  def  add_node(self, namenodeposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_add_node,self.godot_owner,[NULL,],NULL)
  def  add_transition(self, from_, totransition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_add_transition,self.godot_owner,[NULL,],NULL)
  def  get_end_node(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_end_node,self.godot_owner,[NULL,],&ret)
  def  get_graph_offset(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_graph_offset,self.godot_owner,[NULL,],&ret)
  def  get_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationNode ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_node,self.godot_owner,[NULL,],&ret)
  def  get_node_name(self, node):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_node_name,self.godot_owner,[NULL,],&ret)
  def  get_node_position(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_node_position,self.godot_owner,[NULL,],&ret)
  def  get_start_node(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_start_node,self.godot_owner,[NULL,],&ret)
  def  get_transition(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationNodeStateMachineTransition ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition,self.godot_owner,[NULL,],&ret)
  def  get_transition_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition_count,self.godot_owner,[NULL,],&ret)
  def  get_transition_from(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition_from,self.godot_owner,[NULL,],&ret)
  def  get_transition_to(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition_to,self.godot_owner,[NULL,],&ret)
  def  has_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_has_node,self.godot_owner,[NULL,],&ret)
  def  has_transition(self, from_, to):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_has_transition,self.godot_owner,[NULL,],&ret)
  def  remove_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_remove_node,self.godot_owner,[NULL,],NULL)
  def  remove_transition(self, from_, to):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_remove_transition,self.godot_owner,[NULL,],NULL)
  def  remove_transition_by_index(self, idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_remove_transition_by_index,self.godot_owner,[NULL,],NULL)
  def  rename_node(self, namenew_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_rename_node,self.godot_owner,[NULL,],NULL)
  def  set_end_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_end_node,self.godot_owner,[NULL,],NULL)
  def  set_graph_offset(self, offset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_graph_offset,self.godot_owner,[NULL,],NULL)
  def  set_node_position(self, nameposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_node_position,self.godot_owner,[NULL,],NULL)
  def  set_start_node(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_start_node,self.godot_owner,[NULL,],NULL)
