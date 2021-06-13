
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
cimport classes.VideoStream
cimport classes.Control 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_videoplayer_get_audio_track
cdef godot_method_bind *bind_videoplayer_get_buffering_msec
cdef godot_method_bind *bind_videoplayer_get_bus
cdef godot_method_bind *bind_videoplayer_get_stream
cdef godot_method_bind *bind_videoplayer_get_stream_name
cdef godot_method_bind *bind_videoplayer_get_stream_position
cdef godot_method_bind *bind_videoplayer_get_video_texture
cdef godot_method_bind *bind_videoplayer_get_volume
cdef godot_method_bind *bind_videoplayer_get_volume_db
cdef godot_method_bind *bind_videoplayer_has_autoplay
cdef godot_method_bind *bind_videoplayer_has_expand
cdef godot_method_bind *bind_videoplayer_is_paused
cdef godot_method_bind *bind_videoplayer_is_playing
cdef godot_method_bind *bind_videoplayer_play
cdef godot_method_bind *bind_videoplayer_set_audio_track
cdef godot_method_bind *bind_videoplayer_set_autoplay
cdef godot_method_bind *bind_videoplayer_set_buffering_msec
cdef godot_method_bind *bind_videoplayer_set_bus
cdef godot_method_bind *bind_videoplayer_set_expand
cdef godot_method_bind *bind_videoplayer_set_paused
cdef godot_method_bind *bind_videoplayer_set_stream
cdef godot_method_bind *bind_videoplayer_set_stream_position
cdef godot_method_bind *bind_videoplayer_set_volume
cdef godot_method_bind *bind_videoplayer_set_volume_db
cdef godot_method_bind *bind_videoplayer_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_videoplayer_get_audio_track = api_core.godot_method_bind_get_method('VideoPlayer', 'get_audio_track')
  bind_videoplayer_get_buffering_msec = api_core.godot_method_bind_get_method('VideoPlayer', 'get_buffering_msec')
  bind_videoplayer_get_bus = api_core.godot_method_bind_get_method('VideoPlayer', 'get_bus')
  bind_videoplayer_get_stream = api_core.godot_method_bind_get_method('VideoPlayer', 'get_stream')
  bind_videoplayer_get_stream_name = api_core.godot_method_bind_get_method('VideoPlayer', 'get_stream_name')
  bind_videoplayer_get_stream_position = api_core.godot_method_bind_get_method('VideoPlayer', 'get_stream_position')
  bind_videoplayer_get_video_texture = api_core.godot_method_bind_get_method('VideoPlayer', 'get_video_texture')
  bind_videoplayer_get_volume = api_core.godot_method_bind_get_method('VideoPlayer', 'get_volume')
  bind_videoplayer_get_volume_db = api_core.godot_method_bind_get_method('VideoPlayer', 'get_volume_db')
  bind_videoplayer_has_autoplay = api_core.godot_method_bind_get_method('VideoPlayer', 'has_autoplay')
  bind_videoplayer_has_expand = api_core.godot_method_bind_get_method('VideoPlayer', 'has_expand')
  bind_videoplayer_is_paused = api_core.godot_method_bind_get_method('VideoPlayer', 'is_paused')
  bind_videoplayer_is_playing = api_core.godot_method_bind_get_method('VideoPlayer', 'is_playing')
  bind_videoplayer_play = api_core.godot_method_bind_get_method('VideoPlayer', 'play')
  bind_videoplayer_set_audio_track = api_core.godot_method_bind_get_method('VideoPlayer', 'set_audio_track')
  bind_videoplayer_set_autoplay = api_core.godot_method_bind_get_method('VideoPlayer', 'set_autoplay')
  bind_videoplayer_set_buffering_msec = api_core.godot_method_bind_get_method('VideoPlayer', 'set_buffering_msec')
  bind_videoplayer_set_bus = api_core.godot_method_bind_get_method('VideoPlayer', 'set_bus')
  bind_videoplayer_set_expand = api_core.godot_method_bind_get_method('VideoPlayer', 'set_expand')
  bind_videoplayer_set_paused = api_core.godot_method_bind_get_method('VideoPlayer', 'set_paused')
  bind_videoplayer_set_stream = api_core.godot_method_bind_get_method('VideoPlayer', 'set_stream')
  bind_videoplayer_set_stream_position = api_core.godot_method_bind_get_method('VideoPlayer', 'set_stream_position')
  bind_videoplayer_set_volume = api_core.godot_method_bind_get_method('VideoPlayer', 'set_volume')
  bind_videoplayer_set_volume_db = api_core.godot_method_bind_get_method('VideoPlayer', 'set_volume_db')
  bind_videoplayer_stop = api_core.godot_method_bind_get_method('VideoPlayer', 'stop')

############################Generated class###################################
cdef class VideoPlayer(classes.Control.Control):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VideoPlayer")())
##################################Generated Properties#########################################
  @property
  def audio_track(self): 
    return self.get_audio_track()
  @audio_track.setter 
  def audio_track(self,value): 
    self.set_audio_track(value)
  @property
  def autoplay(self): 
    return self.get_autoplay()
  @autoplay.setter 
  def autoplay(self,value): 
    self.set_autoplay(value)
  @property
  def buffering_msec(self): 
    return self.get_buffering_msec()
  @buffering_msec.setter 
  def buffering_msec(self,value): 
    self.set_buffering_msec(value)
  @property
  def bus(self): 
    return self.get_bus()
  @bus.setter 
  def bus(self,value): 
    self.set_bus(value)
  @property
  def expand(self): 
    return self.get_expand()
  @expand.setter 
  def expand(self,value): 
    self.set_expand(value)
  @property
  def paused(self): 
    return self.get_paused()
  @paused.setter 
  def paused(self,value): 
    self.set_paused(value)
  @property
  def stream(self): 
    return self.get_stream()
  @stream.setter 
  def stream(self,value): 
    self.set_stream(value)
  @property
  def stream_position(self): 
    return self.get_stream_position()
  @stream_position.setter 
  def stream_position(self,value): 
    self.set_stream_position(value)
  @property
  def volume(self): 
    return self.get_volume()
  @volume.setter 
  def volume(self,value): 
    self.set_volume(value)
  @property
  def volume_db(self): 
    return self.get_volume_db()
  @volume_db.setter 
  def volume_db(self,value): 
    self.set_volume_db(value)

##################################Generated Methods#########################################
  def  get_audio_track(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_audio_track,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_buffering_msec(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_buffering_msec,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_bus(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_bus,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_stream(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_stream,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_stream_name(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_stream_name,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_stream_position(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_stream_position,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_video_texture(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_video_texture,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_volume(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_volume,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_volume_db(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_get_volume_db,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_autoplay(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_has_autoplay,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_expand(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_has_expand,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_paused(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_is_paused,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_videoplayer_is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  play(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_videoplayer_play,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_audio_track(self,  int track):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &track
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_audio_track,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_autoplay(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_autoplay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_buffering_msec(self,  int msec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &msec
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_buffering_msec,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bus(self,  String bus):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bus._native
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_bus,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_expand(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_expand,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_paused(self,  bool paused):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &paused
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_paused,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stream(self,  classes.VideoStream.VideoStream stream):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = stream.godot_owner
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_stream,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stream_position(self,  float position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &position
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_stream_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_volume(self,  float volume):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &volume
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_volume,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_volume_db(self,  float db):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &db
    api_core.godot_method_bind_ptrcall(bind_videoplayer_set_volume_db,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_videoplayer_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
