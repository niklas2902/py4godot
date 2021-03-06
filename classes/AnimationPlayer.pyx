from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class AnimationPlayer(Node):
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
    api_core.godot_method_bind_ptrcall(bind_animationplayer__animation_changed,self.godot_owner,[NULL,],NULL)
  def  _node_removed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer__node_removed,self.godot_owner,[NULL,],NULL)
  def  add_animation(self, nameanimation):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_add_animation,self.godot_owner,[NULL,],&ret)
  def  advance(self, delta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_advance,self.godot_owner,[NULL,],NULL)
  def  animation_get_next(self, anim_from):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_animation_get_next,self.godot_owner,[NULL,],&ret)
  def  animation_set_next(self, anim_fromanim_to):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_animation_set_next,self.godot_owner,[NULL,],NULL)
  def  clear_caches(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_clear_caches,self.godot_owner,[NULL,],NULL)
  def  clear_queue(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_clear_queue,self.godot_owner,[NULL,],NULL)
  def  find_animation(self, animation):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_find_animation,self.godot_owner,[NULL,],&ret)
  def  get_animation(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Animation ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_animation,self.godot_owner,[NULL,],&ret)
  def  get_animation_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_animation_list,self.godot_owner,[NULL,],&ret)
  def  get_animation_process_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationPlayer::AnimationProcessMode ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_animation_process_mode,self.godot_owner,[NULL,],&ret)
  def  get_assigned_animation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_assigned_animation,self.godot_owner,[NULL,],&ret)
  def  get_autoplay(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_autoplay,self.godot_owner,[NULL,],&ret)
  def  get_blend_time(self, anim_fromanim_to):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_blend_time,self.godot_owner,[NULL,],&ret)
  def  get_current_animation(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_current_animation,self.godot_owner,[NULL,],&ret)
  def  get_current_animation_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_current_animation_length,self.godot_owner,[NULL,],&ret)
  def  get_current_animation_position(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_current_animation_position,self.godot_owner,[NULL,],&ret)
  def  get_default_blend_time(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_default_blend_time,self.godot_owner,[NULL,],&ret)
  def  get_method_call_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationPlayer::AnimationMethodCallMode ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_method_call_mode,self.godot_owner,[NULL,],&ret)
  def  get_playing_speed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_playing_speed,self.godot_owner,[NULL,],&ret)
  def  get_queue(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_queue,self.godot_owner,[NULL,],&ret)
  def  get_root(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_root,self.godot_owner,[NULL,],&ret)
  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_get_speed_scale,self.godot_owner,[NULL,],&ret)
  def  has_animation(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_has_animation,self.godot_owner,[NULL,],&ret)
  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_is_active,self.godot_owner,[NULL,],&ret)
  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationplayer_is_playing,self.godot_owner,[NULL,],&ret)
  def  play(self, namecustom_blendcustom_speedfrom_end):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_play,self.godot_owner,[NULL,],NULL)
  def  play_backwards(self, namecustom_blend):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_play_backwards,self.godot_owner,[NULL,],NULL)
  def  queue(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_queue,self.godot_owner,[NULL,],NULL)
  def  remove_animation(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_remove_animation,self.godot_owner,[NULL,],NULL)
  def  rename_animation(self, namenewname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_rename_animation,self.godot_owner,[NULL,],NULL)
  def  seek(self, secondsupdate):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_seek,self.godot_owner,[NULL,],NULL)
  def  set_active(self, active):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_active,self.godot_owner,[NULL,],NULL)
  def  set_animation_process_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_animation_process_mode,self.godot_owner,[NULL,],NULL)
  def  set_assigned_animation(self, anim):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_assigned_animation,self.godot_owner,[NULL,],NULL)
  def  set_autoplay(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_autoplay,self.godot_owner,[NULL,],NULL)
  def  set_blend_time(self, anim_fromanim_tosec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_blend_time,self.godot_owner,[NULL,],NULL)
  def  set_current_animation(self, anim):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_current_animation,self.godot_owner,[NULL,],NULL)
  def  set_default_blend_time(self, sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_default_blend_time,self.godot_owner,[NULL,],NULL)
  def  set_method_call_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_method_call_mode,self.godot_owner,[NULL,],NULL)
  def  set_root(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_root,self.godot_owner,[NULL,],NULL)
  def  set_speed_scale(self, speed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_set_speed_scale,self.godot_owner,[NULL,],NULL)
  def  stop(self, reset):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationplayer_stop,self.godot_owner,[NULL,],NULL)
