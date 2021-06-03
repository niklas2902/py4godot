
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
cimport classes.Node
cimport classes.AnimationNode
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationtree__clear_caches
cdef godot_method_bind *bind_animationtree__node_removed
cdef godot_method_bind *bind_animationtree__tree_changed
cdef godot_method_bind *bind_animationtree__update_properties
cdef godot_method_bind *bind_animationtree_advance
cdef godot_method_bind *bind_animationtree_get_animation_player
cdef godot_method_bind *bind_animationtree_get_process_mode
cdef godot_method_bind *bind_animationtree_get_root_motion_track
cdef godot_method_bind *bind_animationtree_get_root_motion_transform
cdef godot_method_bind *bind_animationtree_get_tree_root
cdef godot_method_bind *bind_animationtree_is_active
cdef godot_method_bind *bind_animationtree_rename_parameter
cdef godot_method_bind *bind_animationtree_set_active
cdef godot_method_bind *bind_animationtree_set_animation_player
cdef godot_method_bind *bind_animationtree_set_process_mode
cdef godot_method_bind *bind_animationtree_set_root_motion_track
cdef godot_method_bind *bind_animationtree_set_tree_root
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationtree__clear_caches = api_core.godot_method_bind_get_method('AnimationTree', '_clear_caches')
  bind_animationtree__node_removed = api_core.godot_method_bind_get_method('AnimationTree', '_node_removed')
  bind_animationtree__tree_changed = api_core.godot_method_bind_get_method('AnimationTree', '_tree_changed')
  bind_animationtree__update_properties = api_core.godot_method_bind_get_method('AnimationTree', '_update_properties')
  bind_animationtree_advance = api_core.godot_method_bind_get_method('AnimationTree', 'advance')
  bind_animationtree_get_animation_player = api_core.godot_method_bind_get_method('AnimationTree', 'get_animation_player')
  bind_animationtree_get_process_mode = api_core.godot_method_bind_get_method('AnimationTree', 'get_process_mode')
  bind_animationtree_get_root_motion_track = api_core.godot_method_bind_get_method('AnimationTree', 'get_root_motion_track')
  bind_animationtree_get_root_motion_transform = api_core.godot_method_bind_get_method('AnimationTree', 'get_root_motion_transform')
  bind_animationtree_get_tree_root = api_core.godot_method_bind_get_method('AnimationTree', 'get_tree_root')
  bind_animationtree_is_active = api_core.godot_method_bind_get_method('AnimationTree', 'is_active')
  bind_animationtree_rename_parameter = api_core.godot_method_bind_get_method('AnimationTree', 'rename_parameter')
  bind_animationtree_set_active = api_core.godot_method_bind_get_method('AnimationTree', 'set_active')
  bind_animationtree_set_animation_player = api_core.godot_method_bind_get_method('AnimationTree', 'set_animation_player')
  bind_animationtree_set_process_mode = api_core.godot_method_bind_get_method('AnimationTree', 'set_process_mode')
  bind_animationtree_set_root_motion_track = api_core.godot_method_bind_get_method('AnimationTree', 'set_root_motion_track')
  bind_animationtree_set_tree_root = api_core.godot_method_bind_get_method('AnimationTree', 'set_tree_root')

############################Generated class###################################
cdef class AnimationTree(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationTree")())
##################################Generated Properties#########################################
  @property
  def active(self): 
    return self.get_active()
  @active.setter 
  def active(self,value): 
    self.set_active(value)
  @property
  def anim_player(self): 
    return self.get_anim_player()
  @anim_player.setter 
  def anim_player(self,value): 
    self.set_anim_player(value)
  @property
  def process_mode(self): 
    return self.get_process_mode()
  @process_mode.setter 
  def process_mode(self,value): 
    self.set_process_mode(value)
  @property
  def root_motion_track(self): 
    return self.get_root_motion_track()
  @root_motion_track.setter 
  def root_motion_track(self,value): 
    self.set_root_motion_track(value)
  @property
  def tree_root(self): 
    return self.get_tree_root()
  @tree_root.setter 
  def tree_root(self,value): 
    self.set_tree_root(value)

##################################Generated Methods#########################################
  def  _clear_caches(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationtree__clear_caches,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _node_removed(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree__node_removed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationtree__tree_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _update_properties(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationtree__update_properties,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  advance(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_animationtree_advance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_animation_player(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtree_get_animation_player,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_process_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AnimationProcessMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtree_get_process_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_root_motion_track(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtree_get_root_motion_track,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_root_motion_transform(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_transform* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtree_get_root_motion_transform,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Transform.new_static(dereference(ret))

  def  get_tree_root(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtree_get_tree_root,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtree_is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  rename_parameter(self,  String old_name,  String new_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &old_name._native
    args[1] = &new_name._native
    api_core.godot_method_bind_ptrcall(bind_animationtree_rename_parameter,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_active(self,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &active
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_animation_player(self,  NodePath root):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &root._native
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_animation_player,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_process_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_process_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_root_motion_track(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_root_motion_track,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tree_root(self,  classes.AnimationNode.AnimationNode root):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = root.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_tree_root,self.godot_owner,args,NULL)
    hello('hallo2')
