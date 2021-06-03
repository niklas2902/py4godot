
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.AnimationNode
cimport classes.AnimationRootNode 

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
cdef class AnimationNodeBlendTree(classes.AnimationRootNode.AnimationRootNode):
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
  def  _node_changed(self,  String node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &node._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree__node_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree__tree_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  add_node(self,  String name,  classes.AnimationNode.AnimationNode node,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = node.godot_owner
    args[2] = &position._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_add_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  connect_node(self,  String input_node,  int input_index,  String output_node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &input_node._native
    args[1] = &input_index
    args[2] = &output_node._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_connect_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  disconnect_node(self,  String input_node,  int input_index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &input_node._native
    args[1] = &input_index
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_disconnect_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_graph_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_get_graph_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_get_node,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_position(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_get_node_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  has_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_has_node,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_node(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_remove_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_node(self,  String name,  String new_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &new_name._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_rename_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_graph_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_set_graph_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_node_position(self,  String name,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &position._native
    api_core.godot_method_bind_ptrcall(bind_animationnodeblendtree_set_node_position,self.godot_owner,args,NULL)
    hello('hallo2')
