
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
cimport classes.Animation
cimport classes.Node 

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
cdef class AnimationTreePlayer(classes.Node.Node):
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
  def  add_node(self,  int type,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &type
    args[1] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_add_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  advance(self,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &delta
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_advance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  animation_node_get_animation(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_get_animation,self.godot_owner,args,&ret)
    hello('hallo2')
  def  animation_node_get_master_animation(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_get_master_animation,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  animation_node_get_position(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_get_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  animation_node_set_animation(self,  String id,  classes.Animation.Animation animation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = animation.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_set_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  animation_node_set_filter_path(self,  String id,  NodePath path,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id._native
    args[1] = &path._native
    args[2] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_set_filter_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  animation_node_set_master_animation(self,  String id,  String source):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &source._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_animation_node_set_master_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  are_nodes_connected(self,  String id,  String dst_id,  int dst_input_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[3]

    args[0] = &id._native
    args[1] = &dst_id._native
    args[2] = &dst_input_idx
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_are_nodes_connected,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  blend2_node_get_amount(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend2_node_get_amount,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  blend2_node_set_amount(self,  String id,  float blend):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &blend
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend2_node_set_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blend2_node_set_filter_path(self,  String id,  NodePath path,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id._native
    args[1] = &path._native
    args[2] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend2_node_set_filter_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blend3_node_get_amount(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend3_node_get_amount,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  blend3_node_set_amount(self,  String id,  float blend):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &blend
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend3_node_set_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  blend4_node_get_amount(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend4_node_get_amount,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  blend4_node_set_amount(self,  String id,  Vector2 blend):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &blend._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_blend4_node_set_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  connect_nodes(self,  String id,  String dst_id,  int dst_input_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[3]

    args[0] = &id._native
    args[1] = &dst_id._native
    args[2] = &dst_input_idx
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_connect_nodes,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  disconnect_nodes(self,  String id,  int dst_input_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &dst_input_idx
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_disconnect_nodes,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_animation_process_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AnimationProcessMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_animation_process_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_base_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_base_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_master_player(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_master_player,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  get_node_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_get_node_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  mix_node_get_amount(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_mix_node_get_amount,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  mix_node_set_amount(self,  String id,  float ratio):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &ratio
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_mix_node_set_amount,self.godot_owner,args,NULL)
    hello('hallo2')
  def  node_exists(self,  String node):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &node._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_exists,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  node_get_input_count(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_input_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  node_get_input_source(self,  String id,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &idx
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_input_source,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  node_get_position(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  node_get_type(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef NodeType* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_get_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  node_rename(self,  String node,  String new_name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &node._native
    args[1] = &new_name._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_rename,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  node_set_position(self,  String id,  Vector2 screen_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &screen_position._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_node_set_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_get_autorestart_delay(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_autorestart_delay,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  oneshot_node_get_autorestart_random_delay(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_autorestart_random_delay,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  oneshot_node_get_fadein_time(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_fadein_time,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  oneshot_node_get_fadeout_time(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_get_fadeout_time,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  oneshot_node_has_autorestart(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_has_autorestart,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  oneshot_node_is_active(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_is_active,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  oneshot_node_set_autorestart(self,  String id,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_autorestart,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_set_autorestart_delay(self,  String id,  float delay_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &delay_sec
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_autorestart_delay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_set_autorestart_random_delay(self,  String id,  float rand_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &rand_sec
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_autorestart_random_delay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_set_fadein_time(self,  String id,  float time_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &time_sec
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_fadein_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_set_fadeout_time(self,  String id,  float time_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &time_sec
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_fadeout_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_set_filter_path(self,  String id,  NodePath path,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id._native
    args[1] = &path._native
    args[2] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_set_filter_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_start(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_start,self.godot_owner,args,NULL)
    hello('hallo2')
  def  oneshot_node_stop(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_oneshot_node_stop,self.godot_owner,args,NULL)
    hello('hallo2')
  def  recompute_caches(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_recompute_caches,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  remove_node(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_remove_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  reset(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_reset,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_active(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_animation_process_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_animation_process_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_base_path(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_base_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_master_player(self,  NodePath nodepath):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &nodepath._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_set_master_player,self.godot_owner,args,NULL)
    hello('hallo2')
  def  timescale_node_get_scale(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_timescale_node_get_scale,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  timescale_node_set_scale(self,  String id,  float scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &scale
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_timescale_node_set_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  timeseek_node_seek(self,  String id,  float seconds):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &seconds
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_timeseek_node_seek,self.godot_owner,args,NULL)
    hello('hallo2')
  def  transition_node_delete_input(self,  String id,  int input_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &input_idx
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_delete_input,self.godot_owner,args,NULL)
    hello('hallo2')
  def  transition_node_get_current(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_get_current,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  transition_node_get_input_count(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_get_input_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  transition_node_get_xfade_time(self,  String id):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &id._native
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_get_xfade_time,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  transition_node_has_input_auto_advance(self,  String id,  int input_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &input_idx
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_has_input_auto_advance,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  transition_node_set_current(self,  String id,  int input_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &input_idx
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_current,self.godot_owner,args,NULL)
    hello('hallo2')
  def  transition_node_set_input_auto_advance(self,  String id,  int input_idx,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id._native
    args[1] = &input_idx
    args[2] = &enable
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_input_auto_advance,self.godot_owner,args,NULL)
    hello('hallo2')
  def  transition_node_set_input_count(self,  String id,  int count):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &count
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_input_count,self.godot_owner,args,NULL)
    hello('hallo2')
  def  transition_node_set_xfade_time(self,  String id,  float time_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id._native
    args[1] = &time_sec
    api_core.godot_method_bind_ptrcall(bind_animationtreeplayer_transition_node_set_xfade_time,self.godot_owner,args,NULL)
    hello('hallo2')
