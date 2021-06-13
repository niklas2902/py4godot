
##################################Import gdnative api#########################################
from enum import *
from utils.Wrapper cimport *
from classes.Reference cimport Reference
from core.node_path.NodePath cimport NodePath
from core.string.String cimport String
from core.variant.Variant cimport Variant
from core.array.Array cimport Array
from core.color.Color cimport Color
from core.plane.Plane cimport Plane
from core.basis.Basis cimport Basis
from core.aabb.AABB cimport AABB
from core.dictionary.Dictionary cimport Dictionary
from core.pool_array.PoolArrays cimport *
from core.quat.Quat cimport Quat
from core.rect2.Rect2 cimport Rect2
from core.rid.RID cimport RID
from core.transform.Transform cimport Transform
from core.transform.Transform2D cimport Transform2D
from core.vector2.Vector2 cimport Vector2
from core.vector3.Vector3 cimport Vector3
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.AnimationNode
cimport classes.AnimationNodeStateMachineTransition
cimport classes.AnimationNode
cimport classes.AnimationRootNode 

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
cdef class AnimationNodeStateMachine(classes.AnimationRootNode.AnimationRootNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeStateMachine")())
##################################Generated Methods#########################################
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine__tree_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_node(self,  String name,  classes.AnimationNode.AnimationNode node,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = node.godot_owner
    args[2] = &position._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_add_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_transition(self,  String from_,  String to,  classes.AnimationNodeStateMachineTransition.AnimationNodeStateMachineTransition transition):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &from_._native
    args[1] = &to._native
    args[2] = transition.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_add_transition,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_end_node(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_end_node,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_graph_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_graph_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_node,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_name(self,  classes.AnimationNode.AnimationNode node):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_node_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_node_position(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_node_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_start_node(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_start_node,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_transition(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_transition_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_transition_from(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition_from,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_transition_to(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_get_transition_to,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  has_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_has_node,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_transition(self,  String from_,  String to):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &from_._native
    args[1] = &to._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_has_transition,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_remove_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_transition(self,  String from_,  String to):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &from_._native
    args[1] = &to._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_remove_transition,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_transition_by_index(self,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &idx
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_remove_transition_by_index,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_node(self,  String name,  String new_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &new_name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_rename_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_end_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_end_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_graph_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_graph_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_node_position(self,  String name,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_node_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_start_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachine_set_start_node,self.godot_owner,args,NULL)
    hello('hallo2')
