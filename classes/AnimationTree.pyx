from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class AnimationTree(Node):
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
    api_core.godot_method_bind_ptrcall(bind_animationtree__clear_caches,self.godot_owner,[NULL,],NULL)
  def  _node_removed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree__node_removed,self.godot_owner,[NULL,],NULL)
  def  _tree_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree__tree_changed,self.godot_owner,[NULL,],NULL)
  def  _update_properties(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree__update_properties,self.godot_owner,[NULL,],NULL)
  def  advance(self, delta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_advance,self.godot_owner,[NULL,],NULL)
  def  get_animation_player(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_animationtree_get_animation_player,self.godot_owner,[NULL,],&ret)
  def  get_process_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationTree::AnimationProcessMode ret
    api_core.godot_method_bind_ptrcall(bind_animationtree_get_process_mode,self.godot_owner,[NULL,],&ret)
  def  get_root_motion_track(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_animationtree_get_root_motion_track,self.godot_owner,[NULL,],&ret)
  def  get_root_motion_transform(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Transform ret
    api_core.godot_method_bind_ptrcall(bind_animationtree_get_root_motion_transform,self.godot_owner,[NULL,],&ret)
  def  get_tree_root(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationNode ret
    api_core.godot_method_bind_ptrcall(bind_animationtree_get_tree_root,self.godot_owner,[NULL,],&ret)
  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationtree_is_active,self.godot_owner,[NULL,],&ret)
  def  rename_parameter(self, old_namenew_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_rename_parameter,self.godot_owner,[NULL,],NULL)
  def  set_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_active,self.godot_owner,[NULL,],NULL)
  def  set_animation_player(self, root):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_animation_player,self.godot_owner,[NULL,],NULL)
  def  set_process_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_process_mode,self.godot_owner,[NULL,],NULL)
  def  set_root_motion_track(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_root_motion_track,self.godot_owner,[NULL,],NULL)
  def  set_tree_root(self, root):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtree_set_tree_root,self.godot_owner,[NULL,],NULL)
