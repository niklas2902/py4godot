
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
cimport classes.AudioStream
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamplayer__bus_layout_changed
cdef godot_method_bind *bind_audiostreamplayer__is_active
cdef godot_method_bind *bind_audiostreamplayer__set_playing
cdef godot_method_bind *bind_audiostreamplayer_get_bus
cdef godot_method_bind *bind_audiostreamplayer_get_mix_target
cdef godot_method_bind *bind_audiostreamplayer_get_pitch_scale
cdef godot_method_bind *bind_audiostreamplayer_get_playback_position
cdef godot_method_bind *bind_audiostreamplayer_get_stream
cdef godot_method_bind *bind_audiostreamplayer_get_stream_paused
cdef godot_method_bind *bind_audiostreamplayer_get_stream_playback
cdef godot_method_bind *bind_audiostreamplayer_get_volume_db
cdef godot_method_bind *bind_audiostreamplayer_is_autoplay_enabled
cdef godot_method_bind *bind_audiostreamplayer_is_playing
cdef godot_method_bind *bind_audiostreamplayer_play
cdef godot_method_bind *bind_audiostreamplayer_seek
cdef godot_method_bind *bind_audiostreamplayer_set_autoplay
cdef godot_method_bind *bind_audiostreamplayer_set_bus
cdef godot_method_bind *bind_audiostreamplayer_set_mix_target
cdef godot_method_bind *bind_audiostreamplayer_set_pitch_scale
cdef godot_method_bind *bind_audiostreamplayer_set_stream
cdef godot_method_bind *bind_audiostreamplayer_set_stream_paused
cdef godot_method_bind *bind_audiostreamplayer_set_volume_db
cdef godot_method_bind *bind_audiostreamplayer_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamplayer__bus_layout_changed = api_core.godot_method_bind_get_method('AudioStreamPlayer', '_bus_layout_changed')
  bind_audiostreamplayer__is_active = api_core.godot_method_bind_get_method('AudioStreamPlayer', '_is_active')
  bind_audiostreamplayer__set_playing = api_core.godot_method_bind_get_method('AudioStreamPlayer', '_set_playing')
  bind_audiostreamplayer_get_bus = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_bus')
  bind_audiostreamplayer_get_mix_target = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_mix_target')
  bind_audiostreamplayer_get_pitch_scale = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_pitch_scale')
  bind_audiostreamplayer_get_playback_position = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_playback_position')
  bind_audiostreamplayer_get_stream = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_stream')
  bind_audiostreamplayer_get_stream_paused = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_stream_paused')
  bind_audiostreamplayer_get_stream_playback = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_stream_playback')
  bind_audiostreamplayer_get_volume_db = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'get_volume_db')
  bind_audiostreamplayer_is_autoplay_enabled = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'is_autoplay_enabled')
  bind_audiostreamplayer_is_playing = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'is_playing')
  bind_audiostreamplayer_play = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'play')
  bind_audiostreamplayer_seek = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'seek')
  bind_audiostreamplayer_set_autoplay = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'set_autoplay')
  bind_audiostreamplayer_set_bus = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'set_bus')
  bind_audiostreamplayer_set_mix_target = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'set_mix_target')
  bind_audiostreamplayer_set_pitch_scale = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'set_pitch_scale')
  bind_audiostreamplayer_set_stream = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'set_stream')
  bind_audiostreamplayer_set_stream_paused = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'set_stream_paused')
  bind_audiostreamplayer_set_volume_db = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'set_volume_db')
  bind_audiostreamplayer_stop = api_core.godot_method_bind_get_method('AudioStreamPlayer', 'stop')

############################Generated class###################################
cdef class AudioStreamPlayer(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamPlayer")())
##################################Generated Properties#########################################
  @property
  def autoplay(self): 
    return self.get_autoplay()
  @autoplay.setter 
  def autoplay(self,value): 
    self.set_autoplay(value)
  @property
  def bus(self): 
    return self.get_bus()
  @bus.setter 
  def bus(self,value): 
    self.set_bus(value)
  @property
  def mix_target(self): 
    return self.get_mix_target()
  @mix_target.setter 
  def mix_target(self,value): 
    self.set_mix_target(value)
  @property
  def pitch_scale(self): 
    return self.get_pitch_scale()
  @pitch_scale.setter 
  def pitch_scale(self,value): 
    self.set_pitch_scale(value)
  @property
  def playing(self): 
    return self.get_playing()
  @playing.setter 
  def playing(self,value): 
    self.set_playing(value)
  @property
  def stream(self): 
    return self.get_stream()
  @stream.setter 
  def stream(self,value): 
    self.set_stream(value)
  @property
  def stream_paused(self): 
    return self.get_stream_paused()
  @stream_paused.setter 
  def stream_paused(self,value): 
    self.set_stream_paused(value)
  @property
  def volume_db(self): 
    return self.get_volume_db()
  @volume_db.setter 
  def volume_db(self,value): 
    self.set_volume_db(value)

##################################Generated Methods#########################################
  def  _bus_layout_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer__bus_layout_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer__is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _set_playing(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer__set_playing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_bus(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_bus,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_mix_target(self):
    cdef godot_object *_owner = self.godot_owner

    cdef AudioStreamPlayer_MixTarget* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_mix_target,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_pitch_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_pitch_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_playback_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_playback_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_stream(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_stream,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_stream_paused(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_stream_paused,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_stream_playback(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_stream_playback,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_volume_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_get_volume_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_autoplay_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_is_autoplay_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  play(self,  float from_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &from_position
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_play,self.godot_owner,args,NULL)
    hello('hallo2')
  def  seek(self,  float to_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &to_position
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_seek,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_autoplay(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_set_autoplay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus(self,  String bus):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bus._native
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_set_bus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_mix_target(self,  int mix_target):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mix_target
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_set_mix_target,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_pitch_scale(self,  float pitch_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pitch_scale
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_set_pitch_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stream(self,  classes.AudioStream.AudioStream stream):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = stream.godot_owner
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_set_stream,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stream_paused(self,  bool pause):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &pause
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_set_stream_paused,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_volume_db(self,  float volume_db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &volume_db
    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_set_volume_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_audiostreamplayer_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
