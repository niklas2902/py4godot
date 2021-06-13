
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
cimport classes.SpriteFrames
cimport classes.Node2D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animatedsprite__is_playing
cdef godot_method_bind *bind_animatedsprite__res_changed
cdef godot_method_bind *bind_animatedsprite__set_playing
cdef godot_method_bind *bind_animatedsprite_get_animation
cdef godot_method_bind *bind_animatedsprite_get_frame
cdef godot_method_bind *bind_animatedsprite_get_offset
cdef godot_method_bind *bind_animatedsprite_get_speed_scale
cdef godot_method_bind *bind_animatedsprite_get_sprite_frames
cdef godot_method_bind *bind_animatedsprite_is_centered
cdef godot_method_bind *bind_animatedsprite_is_flipped_h
cdef godot_method_bind *bind_animatedsprite_is_flipped_v
cdef godot_method_bind *bind_animatedsprite_is_playing
cdef godot_method_bind *bind_animatedsprite_play
cdef godot_method_bind *bind_animatedsprite_set_animation
cdef godot_method_bind *bind_animatedsprite_set_centered
cdef godot_method_bind *bind_animatedsprite_set_flip_h
cdef godot_method_bind *bind_animatedsprite_set_flip_v
cdef godot_method_bind *bind_animatedsprite_set_frame
cdef godot_method_bind *bind_animatedsprite_set_offset
cdef godot_method_bind *bind_animatedsprite_set_speed_scale
cdef godot_method_bind *bind_animatedsprite_set_sprite_frames
cdef godot_method_bind *bind_animatedsprite_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animatedsprite__is_playing = api_core.godot_method_bind_get_method('AnimatedSprite', '_is_playing')
  bind_animatedsprite__res_changed = api_core.godot_method_bind_get_method('AnimatedSprite', '_res_changed')
  bind_animatedsprite__set_playing = api_core.godot_method_bind_get_method('AnimatedSprite', '_set_playing')
  bind_animatedsprite_get_animation = api_core.godot_method_bind_get_method('AnimatedSprite', 'get_animation')
  bind_animatedsprite_get_frame = api_core.godot_method_bind_get_method('AnimatedSprite', 'get_frame')
  bind_animatedsprite_get_offset = api_core.godot_method_bind_get_method('AnimatedSprite', 'get_offset')
  bind_animatedsprite_get_speed_scale = api_core.godot_method_bind_get_method('AnimatedSprite', 'get_speed_scale')
  bind_animatedsprite_get_sprite_frames = api_core.godot_method_bind_get_method('AnimatedSprite', 'get_sprite_frames')
  bind_animatedsprite_is_centered = api_core.godot_method_bind_get_method('AnimatedSprite', 'is_centered')
  bind_animatedsprite_is_flipped_h = api_core.godot_method_bind_get_method('AnimatedSprite', 'is_flipped_h')
  bind_animatedsprite_is_flipped_v = api_core.godot_method_bind_get_method('AnimatedSprite', 'is_flipped_v')
  bind_animatedsprite_is_playing = api_core.godot_method_bind_get_method('AnimatedSprite', 'is_playing')
  bind_animatedsprite_play = api_core.godot_method_bind_get_method('AnimatedSprite', 'play')
  bind_animatedsprite_set_animation = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_animation')
  bind_animatedsprite_set_centered = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_centered')
  bind_animatedsprite_set_flip_h = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_flip_h')
  bind_animatedsprite_set_flip_v = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_flip_v')
  bind_animatedsprite_set_frame = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_frame')
  bind_animatedsprite_set_offset = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_offset')
  bind_animatedsprite_set_speed_scale = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_speed_scale')
  bind_animatedsprite_set_sprite_frames = api_core.godot_method_bind_get_method('AnimatedSprite', 'set_sprite_frames')
  bind_animatedsprite_stop = api_core.godot_method_bind_get_method('AnimatedSprite', 'stop')

############################Generated class###################################
cdef class AnimatedSprite(classes.Node2D.Node2D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimatedSprite")())
##################################Generated Properties#########################################
  @property
  def animation(self): 
    return self.get_animation()
  @animation.setter 
  def animation(self,value): 
    self.set_animation(value)
  @property
  def centered(self): 
    return self.get_centered()
  @centered.setter 
  def centered(self,value): 
    self.set_centered(value)
  @property
  def flip_h(self): 
    return self.get_flip_h()
  @flip_h.setter 
  def flip_h(self,value): 
    self.set_flip_h(value)
  @property
  def flip_v(self): 
    return self.get_flip_v()
  @flip_v.setter 
  def flip_v(self,value): 
    self.set_flip_v(value)
  @property
  def frame(self): 
    return self.get_frame()
  @frame.setter 
  def frame(self,value): 
    self.set_frame(value)
  @property
  def frames(self): 
    return self.get_frames()
  @frames.setter 
  def frames(self,value): 
    self.set_frames(value)
  @property
  def offset(self): 
    return self.get_offset()
  @offset.setter 
  def offset(self,value): 
    self.set_offset(value)
  @property
  def playing(self): 
    return self.get_playing()
  @playing.setter 
  def playing(self,value): 
    self.set_playing(value)
  @property
  def speed_scale(self): 
    return self.get_speed_scale()
  @speed_scale.setter 
  def speed_scale(self,value): 
    self.set_speed_scale(value)

##################################Generated Methods#########################################
  def  _is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite__is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _res_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animatedsprite__res_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _set_playing(self,  bool playing):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &playing
    api_core.godot_method_bind_ptrcall(bind_animatedsprite__set_playing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_animation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_get_animation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_frame(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_get_frame,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_offset(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_get_offset,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_get_speed_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sprite_frames(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_get_sprite_frames,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_centered(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_is_centered,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_h(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_is_flipped_h,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_flipped_v(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_is_flipped_v,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  play(self,  String anim,  bool backwards):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &anim._native
    args[1] = &backwards
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_play,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_animation(self,  String animation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &animation._native
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_centered(self,  bool centered):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &centered
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_centered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_h(self,  bool flip_h):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip_h
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_flip_h,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_flip_v(self,  bool flip_v):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &flip_v
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_flip_v,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frame(self,  int frame):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &frame
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_frame,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_offset(self,  Vector2 offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &offset._native
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_speed_scale(self,  float speed_scale):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &speed_scale
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_speed_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sprite_frames(self,  classes.SpriteFrames.SpriteFrames sprite_frames):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = sprite_frames.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animatedsprite_set_sprite_frames,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animatedsprite_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
