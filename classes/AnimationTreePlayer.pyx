from classes.Node cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationtreeplayer_add_node
cdef godot_method_bind *bind_animationtreeplayer_advance
cdef godot_method_bind *bind_animationtreeplayer_animation_node_get_animation
cdef godot_method_bind *bind_animationtreeplayer_animation_node_get_master_animation
cdef godot_method_bind *bind_animationtreeplayer_animation_node_get_position
cdef godot_method_bind *bind_animationtreeplayer_animation_node_set_animation
cdef godot_method_bind *bind_animationtreeplayer_animation_node_set_filter_path
cdef godot_method_bind *bind_animationtreeplayer_animation_node_set_master_animation
cdef godot_method_bind *bind_animationtreeplayer_are_nodes_connected
cdef godot_method_bind *bind_animationtreeplayer_blend2_node_get_amount
cdef godot_method_bind *bind_animationtreeplayer_blend2_node_set_amount
cdef godot_method_bind *bind_animationtreeplayer_blend2_node_set_filter_path
cdef godot_method_bind *bind_animationtreeplayer_blend3_node_get_amount
cdef godot_method_bind *bind_animationtreeplayer_blend3_node_set_amount
cdef godot_method_bind *bind_animationtreeplayer_blend4_node_get_amount
cdef godot_method_bind *bind_animationtreeplayer_blend4_node_set_amount
cdef godot_method_bind *bind_animationtreeplayer_connect_nodes
cdef godot_method_bind *bind_animationtreeplayer_disconnect_nodes
cdef godot_method_bind *bind_animationtreeplayer_get_animation_process_mode
cdef godot_method_bind *bind_animationtreeplayer_get_base_path
cdef godot_method_bind *bind_animationtreeplayer_get_master_player
cdef godot_method_bind *bind_animationtreeplayer_get_node_list
cdef godot_method_bind *bind_animationtreeplayer_is_active
cdef godot_method_bind *bind_animationtreeplayer_mix_node_get_amount
cdef godot_method_bind *bind_animationtreeplayer_mix_node_set_amount
cdef godot_method_bind *bind_animationtreeplayer_node_exists
cdef godot_method_bind *bind_animationtreeplayer_node_get_input_count
cdef godot_method_bind *bind_animationtreeplayer_node_get_input_source
cdef godot_method_bind *bind_animationtreeplayer_node_get_position
cdef godot_method_bind *bind_animationtreeplayer_node_get_type
cdef godot_method_bind *bind_animationtreeplayer_node_rename
cdef godot_method_bind *bind_animationtreeplayer_node_set_position
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_get_autorestart_delay
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_get_autorestart_random_delay
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_get_fadein_time
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_get_fadeout_time
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_has_autorestart
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_is_active
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_set_autorestart
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_set_autorestart_delay
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_set_autorestart_random_delay
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_set_fadein_time
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_set_fadeout_time
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_set_filter_path
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_start
cdef godot_method_bind *bind_animationtreeplayer_oneshot_node_stop
cdef godot_method_bind *bind_animationtreeplayer_recompute_caches
cdef godot_method_bind *bind_animationtreeplayer_remove_node
cdef godot_method_bind *bind_animationtreeplayer_reset
cdef godot_method_bind *bind_animationtreeplayer_set_active
cdef godot_method_bind *bind_animationtreeplayer_set_animation_process_mode
cdef godot_method_bind *bind_animationtreeplayer_set_base_path
cdef godot_method_bind *bind_animationtreeplayer_set_master_player
cdef godot_method_bind *bind_animationtreeplayer_timescale_node_get_scale
cdef godot_method_bind *bind_animationtreeplayer_timescale_node_set_scale
cdef godot_method_bind *bind_animationtreeplayer_timeseek_node_seek
cdef godot_method_bind *bind_animationtreeplayer_transition_node_delete_input
cdef godot_method_bind *bind_animationtreeplayer_transition_node_get_current
cdef godot_method_bind *bind_animationtreeplayer_transition_node_get_input_count
cdef godot_method_bind *bind_animationtreeplayer_transition_node_get_xfade_time
cdef godot_method_bind *bind_animationtreeplayer_transition_node_has_input_auto_advance
cdef godot_method_bind *bind_animationtreeplayer_transition_node_set_current
cdef godot_method_bind *bind_animationtreeplayer_transition_node_set_input_auto_advance
cdef godot_method_bind *bind_animationtreeplayer_transition_node_set_input_count
cdef godot_method_bind *bind_animationtreeplayer_transition_node_set_xfade_time
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationtreeplayer_add_node = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'add_node')
  bind_animationtreeplayer_advance = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'advance')
  bind_animationtreeplayer_animation_node_get_animation = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'animation_node_get_animation')
  bind_animationtreeplayer_animation_node_get_master_animation = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'animation_node_get_master_animation')
  bind_animationtreeplayer_animation_node_get_position = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'animation_node_get_position')
  bind_animationtreeplayer_animation_node_set_animation = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'animation_node_set_animation')
  bind_animationtreeplayer_animation_node_set_filter_path = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'animation_node_set_filter_path')
  bind_animationtreeplayer_animation_node_set_master_animation = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'animation_node_set_master_animation')
  bind_animationtreeplayer_are_nodes_connected = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'are_nodes_connected')
  bind_animationtreeplayer_blend2_node_get_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'blend2_node_get_amount')
  bind_animationtreeplayer_blend2_node_set_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'blend2_node_set_amount')
  bind_animationtreeplayer_blend2_node_set_filter_path = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'blend2_node_set_filter_path')
  bind_animationtreeplayer_blend3_node_get_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'blend3_node_get_amount')
  bind_animationtreeplayer_blend3_node_set_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'blend3_node_set_amount')
  bind_animationtreeplayer_blend4_node_get_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'blend4_node_get_amount')
  bind_animationtreeplayer_blend4_node_set_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'blend4_node_set_amount')
  bind_animationtreeplayer_connect_nodes = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'connect_nodes')
  bind_animationtreeplayer_disconnect_nodes = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'disconnect_nodes')
  bind_animationtreeplayer_get_animation_process_mode = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'get_animation_process_mode')
  bind_animationtreeplayer_get_base_path = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'get_base_path')
  bind_animationtreeplayer_get_master_player = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'get_master_player')
  bind_animationtreeplayer_get_node_list = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'get_node_list')
  bind_animationtreeplayer_is_active = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'is_active')
  bind_animationtreeplayer_mix_node_get_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'mix_node_get_amount')
  bind_animationtreeplayer_mix_node_set_amount = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'mix_node_set_amount')
  bind_animationtreeplayer_node_exists = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'node_exists')
  bind_animationtreeplayer_node_get_input_count = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'node_get_input_count')
  bind_animationtreeplayer_node_get_input_source = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'node_get_input_source')
  bind_animationtreeplayer_node_get_position = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'node_get_position')
  bind_animationtreeplayer_node_get_type = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'node_get_type')
  bind_animationtreeplayer_node_rename = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'node_rename')
  bind_animationtreeplayer_node_set_position = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'node_set_position')
  bind_animationtreeplayer_oneshot_node_get_autorestart_delay = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_get_autorestart_delay')
  bind_animationtreeplayer_oneshot_node_get_autorestart_random_delay = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_get_autorestart_random_delay')
  bind_animationtreeplayer_oneshot_node_get_fadein_time = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_get_fadein_time')
  bind_animationtreeplayer_oneshot_node_get_fadeout_time = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_get_fadeout_time')
  bind_animationtreeplayer_oneshot_node_has_autorestart = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_has_autorestart')
  bind_animationtreeplayer_oneshot_node_is_active = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_is_active')
  bind_animationtreeplayer_oneshot_node_set_autorestart = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_set_autorestart')
  bind_animationtreeplayer_oneshot_node_set_autorestart_delay = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_set_autorestart_delay')
  bind_animationtreeplayer_oneshot_node_set_autorestart_random_delay = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_set_autorestart_random_delay')
  bind_animationtreeplayer_oneshot_node_set_fadein_time = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_set_fadein_time')
  bind_animationtreeplayer_oneshot_node_set_fadeout_time = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_set_fadeout_time')
  bind_animationtreeplayer_oneshot_node_set_filter_path = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_set_filter_path')
  bind_animationtreeplayer_oneshot_node_start = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_start')
  bind_animationtreeplayer_oneshot_node_stop = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'oneshot_node_stop')
  bind_animationtreeplayer_recompute_caches = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'recompute_caches')
  bind_animationtreeplayer_remove_node = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'remove_node')
  bind_animationtreeplayer_reset = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'reset')
  bind_animationtreeplayer_set_active = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'set_active')
  bind_animationtreeplayer_set_animation_process_mode = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'set_animation_process_mode')
  bind_animationtreeplayer_set_base_path = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'set_base_path')
  bind_animationtreeplayer_set_master_player = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'set_master_player')
  bind_animationtreeplayer_timescale_node_get_scale = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'timescale_node_get_scale')
  bind_animationtreeplayer_timescale_node_set_scale = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'timescale_node_set_scale')
  bind_animationtreeplayer_timeseek_node_seek = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'timeseek_node_seek')
  bind_animationtreeplayer_transition_node_delete_input = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_delete_input')
  bind_animationtreeplayer_transition_node_get_current = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_get_current')
  bind_animationtreeplayer_transition_node_get_input_count = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_get_input_count')
  bind_animationtreeplayer_transition_node_get_xfade_time = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_get_xfade_time')
  bind_animationtreeplayer_transition_node_has_input_auto_advance = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_has_input_auto_advance')
  bind_animationtreeplayer_transition_node_set_current = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_set_current')
  bind_animationtreeplayer_transition_node_set_input_auto_advance = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_set_input_auto_advance')
  bind_animationtreeplayer_transition_node_set_input_count = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_set_input_count')
  bind_animationtreeplayer_transition_node_set_xfade_time = api_core.godot_method_bind_get_method('AnimationTreePlayer', 'transition_node_set_xfade_time')

############################Generated class###################################
cdef class AnimationTreePlayer(Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationTreePlayer")())
##################################Generated Properties#########################################
  @property
  def active(self): 
    return self.get_active()
  @active.setter 
  def active(self,value): 
    self.set_active(value)
  @property
  def base_path(self): 
    return self.get_base_path()
  @base_path.setter 
  def base_path(self,value): 
    self.set_base_path(value)
  @property
  def master_player(self): 
    return self.get_master_player()
  @master_player.setter 
  def master_player(self,value): 
    self.set_master_player(value)
  @property
  def playback_process_mode(self): 
    return self.get_playback_process_mode()
  @playback_process_mode.setter 
  def playback_process_mode(self,value): 
    self.set_playback_process_mode(value)

##################################Generated Methods#########################################
  def  add_node(self, typeid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_add_node,self.godot_owner,[NULL,],NULL)
  def  advance(self, delta):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_advance,self.godot_owner,[NULL,],NULL)
  def  animation_node_get_animation(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Animation ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_get_animation,self.godot_owner,[NULL,],&ret)
  def  animation_node_get_master_animation(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_get_master_animation,self.godot_owner,[NULL,],&ret)
  def  animation_node_get_position(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_get_position,self.godot_owner,[NULL,],&ret)
  def  animation_node_set_animation(self, idanimation):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_set_animation,self.godot_owner,[NULL,],NULL)
  def  animation_node_set_filter_path(self, idpathenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_set_filter_path,self.godot_owner,[NULL,],NULL)
  def  animation_node_set_master_animation(self, idsource):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_set_master_animation,self.godot_owner,[NULL,],NULL)
  def  are_nodes_connected(self, iddst_iddst_input_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_are_nodes_connected,self.godot_owner,[NULL,],&ret)
  def  blend2_node_get_amount(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend2_node_get_amount,self.godot_owner,[NULL,],&ret)
  def  blend2_node_set_amount(self, idblend):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend2_node_set_amount,self.godot_owner,[NULL,],NULL)
  def  blend2_node_set_filter_path(self, idpathenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend2_node_set_filter_path,self.godot_owner,[NULL,],NULL)
  def  blend3_node_get_amount(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend3_node_get_amount,self.godot_owner,[NULL,],&ret)
  def  blend3_node_set_amount(self, idblend):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend3_node_set_amount,self.godot_owner,[NULL,],NULL)
  def  blend4_node_get_amount(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend4_node_get_amount,self.godot_owner,[NULL,],&ret)
  def  blend4_node_set_amount(self, idblend):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend4_node_set_amount,self.godot_owner,[NULL,],NULL)
  def  connect_nodes(self, iddst_iddst_input_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_connect_nodes,self.godot_owner,[NULL,],&ret)
  def  disconnect_nodes(self, iddst_input_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_disconnect_nodes,self.godot_owner,[NULL,],NULL)
  def  get_animation_process_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationTreePlayer::AnimationProcessMode ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_animation_process_mode,self.godot_owner,[NULL,],&ret)
  def  get_base_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_base_path,self.godot_owner,[NULL,],&ret)
  def  get_master_player(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NodePath ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_master_player,self.godot_owner,[NULL,],&ret)
  def  get_node_list(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_node_list,self.godot_owner,[NULL,],&ret)
  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_is_active,self.godot_owner,[NULL,],&ret)
  def  mix_node_get_amount(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_mix_node_get_amount,self.godot_owner,[NULL,],&ret)
  def  mix_node_set_amount(self, idratio):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_mix_node_set_amount,self.godot_owner,[NULL,],NULL)
  def  node_exists(self, node):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_exists,self.godot_owner,[NULL,],&ret)
  def  node_get_input_count(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_input_count,self.godot_owner,[NULL,],&ret)
  def  node_get_input_source(self, ididx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_input_source,self.godot_owner,[NULL,],&ret)
  def  node_get_position(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_position,self.godot_owner,[NULL,],&ret)
  def  node_get_type(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationTreePlayer::NodeType ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_type,self.godot_owner,[NULL,],&ret)
  def  node_rename(self, nodenew_name):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_rename,self.godot_owner,[NULL,],&ret)
  def  node_set_position(self, idscreen_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_set_position,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_get_autorestart_delay(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_autorestart_delay,self.godot_owner,[NULL,],&ret)
  def  oneshot_node_get_autorestart_random_delay(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_autorestart_random_delay,self.godot_owner,[NULL,],&ret)
  def  oneshot_node_get_fadein_time(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_fadein_time,self.godot_owner,[NULL,],&ret)
  def  oneshot_node_get_fadeout_time(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_fadeout_time,self.godot_owner,[NULL,],&ret)
  def  oneshot_node_has_autorestart(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_has_autorestart,self.godot_owner,[NULL,],&ret)
  def  oneshot_node_is_active(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_is_active,self.godot_owner,[NULL,],&ret)
  def  oneshot_node_set_autorestart(self, idenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_autorestart,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_set_autorestart_delay(self, iddelay_sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_autorestart_delay,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_set_autorestart_random_delay(self, idrand_sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_autorestart_random_delay,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_set_fadein_time(self, idtime_sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_fadein_time,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_set_fadeout_time(self, idtime_sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_fadeout_time,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_set_filter_path(self, idpathenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_filter_path,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_start(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_start,self.godot_owner,[NULL,],NULL)
  def  oneshot_node_stop(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_stop,self.godot_owner,[NULL,],NULL)
  def  recompute_caches(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_recompute_caches,self.godot_owner,[NULL,],NULL)
  def  remove_node(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_remove_node,self.godot_owner,[NULL,],NULL)
  def  reset(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_reset,self.godot_owner,[NULL,],NULL)
  def  set_active(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_active,self.godot_owner,[NULL,],NULL)
  def  set_animation_process_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_animation_process_mode,self.godot_owner,[NULL,],NULL)
  def  set_base_path(self, path):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_base_path,self.godot_owner,[NULL,],NULL)
  def  set_master_player(self, nodepath):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_master_player,self.godot_owner,[NULL,],NULL)
  def  timescale_node_get_scale(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_timescale_node_get_scale,self.godot_owner,[NULL,],&ret)
  def  timescale_node_set_scale(self, idscale):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_timescale_node_set_scale,self.godot_owner,[NULL,],NULL)
  def  timeseek_node_seek(self, idseconds):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_timeseek_node_seek,self.godot_owner,[NULL,],NULL)
  def  transition_node_delete_input(self, idinput_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_delete_input,self.godot_owner,[NULL,],NULL)
  def  transition_node_get_current(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_get_current,self.godot_owner,[NULL,],&ret)
  def  transition_node_get_input_count(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_get_input_count,self.godot_owner,[NULL,],&ret)
  def  transition_node_get_xfade_time(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_get_xfade_time,self.godot_owner,[NULL,],&ret)
  def  transition_node_has_input_auto_advance(self, idinput_idx):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_has_input_auto_advance,self.godot_owner,[NULL,],&ret)
  def  transition_node_set_current(self, idinput_idx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_current,self.godot_owner,[NULL,],NULL)
  def  transition_node_set_input_auto_advance(self, idinput_idxenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_input_auto_advance,self.godot_owner,[NULL,],NULL)
  def  transition_node_set_input_count(self, idcount):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_input_count,self.godot_owner,[NULL,],NULL)
  def  transition_node_set_xfade_time(self, idtime_sec):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_xfade_time,self.godot_owner,[NULL,],NULL)
