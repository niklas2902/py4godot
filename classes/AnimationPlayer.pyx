
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
cimport classes.Node
cimport classes.Animation
cimport classes.Animation
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationplayer__animation_changed
cdef godot_method_bind *bind_animationplayer__node_removed
cdef godot_method_bind *bind_animationplayer_add_animation
cdef godot_method_bind *bind_animationplayer_advance
cdef godot_method_bind *bind_animationplayer_animation_get_next
cdef godot_method_bind *bind_animationplayer_animation_set_next
cdef godot_method_bind *bind_animationplayer_clear_caches
cdef godot_method_bind *bind_animationplayer_clear_queue
cdef godot_method_bind *bind_animationplayer_find_animation
cdef godot_method_bind *bind_animationplayer_get_animation
cdef godot_method_bind *bind_animationplayer_get_animation_list
cdef godot_method_bind *bind_animationplayer_get_animation_process_mode
cdef godot_method_bind *bind_animationplayer_get_assigned_animation
cdef godot_method_bind *bind_animationplayer_get_autoplay
cdef godot_method_bind *bind_animationplayer_get_blend_time
cdef godot_method_bind *bind_animationplayer_get_current_animation
cdef godot_method_bind *bind_animationplayer_get_current_animation_length
cdef godot_method_bind *bind_animationplayer_get_current_animation_position
cdef godot_method_bind *bind_animationplayer_get_default_blend_time
cdef godot_method_bind *bind_animationplayer_get_method_call_mode
cdef godot_method_bind *bind_animationplayer_get_playing_speed
cdef godot_method_bind *bind_animationplayer_get_queue
cdef godot_method_bind *bind_animationplayer_get_root
cdef godot_method_bind *bind_animationplayer_get_speed_scale
cdef godot_method_bind *bind_animationplayer_has_animation
cdef godot_method_bind *bind_animationplayer_is_active
cdef godot_method_bind *bind_animationplayer_is_playing
cdef godot_method_bind *bind_animationplayer_play
cdef godot_method_bind *bind_animationplayer_play_backwards
cdef godot_method_bind *bind_animationplayer_queue
cdef godot_method_bind *bind_animationplayer_remove_animation
cdef godot_method_bind *bind_animationplayer_rename_animation
cdef godot_method_bind *bind_animationplayer_seek
cdef godot_method_bind *bind_animationplayer_set_active
cdef godot_method_bind *bind_animationplayer_set_animation_process_mode
cdef godot_method_bind *bind_animationplayer_set_assigned_animation
cdef godot_method_bind *bind_animationplayer_set_autoplay
cdef godot_method_bind *bind_animationplayer_set_blend_time
cdef godot_method_bind *bind_animationplayer_set_current_animation
cdef godot_method_bind *bind_animationplayer_set_default_blend_time
cdef godot_method_bind *bind_animationplayer_set_method_call_mode
cdef godot_method_bind *bind_animationplayer_set_root
cdef godot_method_bind *bind_animationplayer_set_speed_scale
cdef godot_method_bind *bind_animationplayer_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationplayer__animation_changed = api_core.godot_method_bind_get_method('AnimationPlayer', '_animation_changed')
  bind_animationplayer__node_removed = api_core.godot_method_bind_get_method('AnimationPlayer', '_node_removed')
  bind_animationplayer_add_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'add_animation')
  bind_animationplayer_advance = api_core.godot_method_bind_get_method('AnimationPlayer', 'advance')
  bind_animationplayer_animation_get_next = api_core.godot_method_bind_get_method('AnimationPlayer', 'animation_get_next')
  bind_animationplayer_animation_set_next = api_core.godot_method_bind_get_method('AnimationPlayer', 'animation_set_next')
  bind_animationplayer_clear_caches = api_core.godot_method_bind_get_method('AnimationPlayer', 'clear_caches')
  bind_animationplayer_clear_queue = api_core.godot_method_bind_get_method('AnimationPlayer', 'clear_queue')
  bind_animationplayer_find_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'find_animation')
  bind_animationplayer_get_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_animation')
  bind_animationplayer_get_animation_list = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_animation_list')
  bind_animationplayer_get_animation_process_mode = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_animation_process_mode')
  bind_animationplayer_get_assigned_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_assigned_animation')
  bind_animationplayer_get_autoplay = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_autoplay')
  bind_animationplayer_get_blend_time = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_blend_time')
  bind_animationplayer_get_current_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_current_animation')
  bind_animationplayer_get_current_animation_length = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_current_animation_length')
  bind_animationplayer_get_current_animation_position = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_current_animation_position')
  bind_animationplayer_get_default_blend_time = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_default_blend_time')
  bind_animationplayer_get_method_call_mode = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_method_call_mode')
  bind_animationplayer_get_playing_speed = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_playing_speed')
  bind_animationplayer_get_queue = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_queue')
  bind_animationplayer_get_root = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_root')
  bind_animationplayer_get_speed_scale = api_core.godot_method_bind_get_method('AnimationPlayer', 'get_speed_scale')
  bind_animationplayer_has_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'has_animation')
  bind_animationplayer_is_active = api_core.godot_method_bind_get_method('AnimationPlayer', 'is_active')
  bind_animationplayer_is_playing = api_core.godot_method_bind_get_method('AnimationPlayer', 'is_playing')
  bind_animationplayer_play = api_core.godot_method_bind_get_method('AnimationPlayer', 'play')
  bind_animationplayer_play_backwards = api_core.godot_method_bind_get_method('AnimationPlayer', 'play_backwards')
  bind_animationplayer_queue = api_core.godot_method_bind_get_method('AnimationPlayer', 'queue')
  bind_animationplayer_remove_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'remove_animation')
  bind_animationplayer_rename_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'rename_animation')
  bind_animationplayer_seek = api_core.godot_method_bind_get_method('AnimationPlayer', 'seek')
  bind_animationplayer_set_active = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_active')
  bind_animationplayer_set_animation_process_mode = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_animation_process_mode')
  bind_animationplayer_set_assigned_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_assigned_animation')
  bind_animationplayer_set_autoplay = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_autoplay')
  bind_animationplayer_set_blend_time = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_blend_time')
  bind_animationplayer_set_current_animation = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_current_animation')
  bind_animationplayer_set_default_blend_time = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_default_blend_time')
  bind_animationplayer_set_method_call_mode = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_method_call_mode')
  bind_animationplayer_set_root = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_root')
  bind_animationplayer_set_speed_scale = api_core.godot_method_bind_get_method('AnimationPlayer', 'set_speed_scale')
  bind_animationplayer_stop = api_core.godot_method_bind_get_method('AnimationPlayer', 'stop')

############################Generated class###################################
cdef class AnimationPlayer(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationPlayer")())
##################################Generated Properties#########################################
  @property
  def assigned_animation(self): 
    return self.get_assigned_animation()
  @assigned_animation.setter 
  def assigned_animation(self,value): 
    self.set_assigned_animation(value)
  @property
  def autoplay(self): 
    return self.get_autoplay()
  @autoplay.setter 
  def autoplay(self,value): 
    self.set_autoplay(value)
  @property
  def current_animation(self): 
    return self.get_current_animation()
  @current_animation.setter 
  def current_animation(self,value): 
    self.set_current_animation(value)
  @property
  def current_animation_length(self): 
    return self.get_current_animation_length()
  @current_animation_length.setter 
  def current_animation_length(self,value): 
    self.set_current_animation_length(value)
  @property
  def current_animation_position(self): 
    return self.get_current_animation_position()
  @current_animation_position.setter 
  def current_animation_position(self,value): 
    self.set_current_animation_position(value)
  @property
  def method_call_mode(self): 
    return self.get_method_call_mode()
  @method_call_mode.setter 
  def method_call_mode(self,value): 
    self.set_method_call_mode(value)
  @property
  def playback_active(self): 
    return self.get_playback_active()
  @playback_active.setter 
  def playback_active(self,value): 
    self.set_playback_active(value)
  @property
  def playback_default_blend_time(self): 
    return self.get_playback_default_blend_time()
  @playback_default_blend_time.setter 
  def playback_default_blend_time(self,value): 
    self.set_playback_default_blend_time(value)
  @property
  def playback_process_mode(self): 
    return self.get_playback_process_mode()
  @playback_process_mode.setter 
  def playback_process_mode(self,value): 
    self.set_playback_process_mode(value)
  @property
  def playback_speed(self): 
    return self.get_playback_speed()
  @playback_speed.setter 
  def playback_speed(self,value): 
    self.set_playback_speed(value)
  @property
  def root_node(self): 
    return self.get_root_node()
  @root_node.setter 
  def root_node(self,value): 
    self.set_root_node(value)

##################################Generated Methods#########################################
  def  _animation_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationplayer__animation_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _node_removed(self,  classes.Node.Node arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer__node_removed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_animation(self,  String name,  classes.Animation.Animation animation):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = animation.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_add_animation,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  advance(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_animationplayer_advance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  animation_get_next(self,  String anim_from):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &anim_from._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_animation_get_next,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  animation_set_next(self,  String anim_from,  String anim_to):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &anim_from._native
    args[1] = &anim_to._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_animation_set_next,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_caches(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationplayer_clear_caches,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear_queue(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationplayer_clear_queue,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  find_animation(self,  classes.Animation.Animation animation):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = animation.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_find_animation,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_animation(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_animation,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_animation_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_animation_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_animation_process_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AnimationPlayer_AnimationProcessMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_animation_process_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_assigned_animation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_assigned_animation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_autoplay(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_autoplay,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_blend_time(self,  String anim_from,  String anim_to):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &anim_from._native
    args[1] = &anim_to._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_blend_time,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_current_animation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_current_animation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_current_animation_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_current_animation_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_current_animation_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_current_animation_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_default_blend_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_default_blend_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_method_call_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AnimationPlayer_AnimationMethodCallMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_method_call_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_playing_speed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_playing_speed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_queue(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_queue,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_root(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_root,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_speed_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_animation(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_has_animation,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationplayer_is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  play(self,  String name,  float custom_blend,  float custom_speed,  bool from_end):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &name._native
    args[1] = &custom_blend
    args[2] = &custom_speed
    args[3] = &from_end
    api_core.godot_method_bind_ptrcall(bind_animationplayer_play,self.godot_owner,args,NULL)
    hello('hallo2')
  def  play_backwards(self,  String name,  float custom_blend):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &custom_blend
    api_core.godot_method_bind_ptrcall(bind_animationplayer_play_backwards,self.godot_owner,args,NULL)
    hello('hallo2')
  def  queue(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_queue,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_animation(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_remove_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_animation(self,  String name,  String newname):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &newname._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_rename_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  seek(self,  float seconds,  bool update):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &seconds
    args[1] = &update
    api_core.godot_method_bind_ptrcall(bind_animationplayer_seek,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_active(self,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &active
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_animation_process_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_animation_process_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_assigned_animation(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_assigned_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_autoplay(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_autoplay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_blend_time(self,  String anim_from,  String anim_to,  float sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &anim_from._native
    args[1] = &anim_to._native
    args[2] = &sec
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_blend_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_current_animation(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_current_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_default_blend_time(self,  float sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &sec
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_default_blend_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_method_call_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_method_call_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_root(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_root,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_speed_scale(self,  float speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &speed
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_speed_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self,  bool reset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &reset
    api_core.godot_method_bind_ptrcall(bind_animationplayer_stop,self.godot_owner,args,NULL)
    hello('hallo2')
