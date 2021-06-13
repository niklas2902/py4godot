
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
cimport classes.SpriteBase3D 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animatedsprite3d__is_playing
cdef godot_method_bind *bind_animatedsprite3d__res_changed
cdef godot_method_bind *bind_animatedsprite3d__set_playing
cdef godot_method_bind *bind_animatedsprite3d_get_animation
cdef godot_method_bind *bind_animatedsprite3d_get_frame
cdef godot_method_bind *bind_animatedsprite3d_get_sprite_frames
cdef godot_method_bind *bind_animatedsprite3d_is_playing
cdef godot_method_bind *bind_animatedsprite3d_play
cdef godot_method_bind *bind_animatedsprite3d_set_animation
cdef godot_method_bind *bind_animatedsprite3d_set_frame
cdef godot_method_bind *bind_animatedsprite3d_set_sprite_frames
cdef godot_method_bind *bind_animatedsprite3d_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animatedsprite3d__is_playing = api_core.godot_method_bind_get_method('AnimatedSprite3D', '_is_playing')
  bind_animatedsprite3d__res_changed = api_core.godot_method_bind_get_method('AnimatedSprite3D', '_res_changed')
  bind_animatedsprite3d__set_playing = api_core.godot_method_bind_get_method('AnimatedSprite3D', '_set_playing')
  bind_animatedsprite3d_get_animation = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'get_animation')
  bind_animatedsprite3d_get_frame = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'get_frame')
  bind_animatedsprite3d_get_sprite_frames = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'get_sprite_frames')
  bind_animatedsprite3d_is_playing = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'is_playing')
  bind_animatedsprite3d_play = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'play')
  bind_animatedsprite3d_set_animation = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'set_animation')
  bind_animatedsprite3d_set_frame = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'set_frame')
  bind_animatedsprite3d_set_sprite_frames = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'set_sprite_frames')
  bind_animatedsprite3d_stop = api_core.godot_method_bind_get_method('AnimatedSprite3D', 'stop')

############################Generated class###################################
cdef class AnimatedSprite3D(classes.SpriteBase3D.SpriteBase3D):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimatedSprite3D")())
##################################Generated Properties#########################################
  @property
  def animation(self): 
    return self.get_animation()
  @animation.setter 
  def animation(self,value): 
    self.set_animation(value)
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
  def playing(self): 
    return self.get_playing()
  @playing.setter 
  def playing(self,value): 
    self.set_playing(value)

##################################Generated Methods#########################################
  def  _is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d__is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _res_changed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d__res_changed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _set_playing(self,  bool playing):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &playing
    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d__set_playing,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_animation(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_get_animation,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_frame(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_get_frame,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_sprite_frames(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_get_sprite_frames,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  play(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_play,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_animation(self,  String animation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &animation._native
    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_set_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frame(self,  int frame):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &frame
    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_set_frame,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_sprite_frames(self,  classes.SpriteFrames.SpriteFrames sprite_frames):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = sprite_frames.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_set_sprite_frames,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animatedsprite3d_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
