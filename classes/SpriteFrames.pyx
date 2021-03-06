from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_spriteframes__get_animations
cdef godot_method_bind *bind_spriteframes__get_frames
cdef godot_method_bind *bind_spriteframes__set_animations
cdef godot_method_bind *bind_spriteframes__set_frames
cdef godot_method_bind *bind_spriteframes_add_animation
cdef godot_method_bind *bind_spriteframes_add_frame
cdef godot_method_bind *bind_spriteframes_clear
cdef godot_method_bind *bind_spriteframes_clear_all
cdef godot_method_bind *bind_spriteframes_get_animation_loop
cdef godot_method_bind *bind_spriteframes_get_animation_names
cdef godot_method_bind *bind_spriteframes_get_animation_speed
cdef godot_method_bind *bind_spriteframes_get_frame
cdef godot_method_bind *bind_spriteframes_get_frame_count
cdef godot_method_bind *bind_spriteframes_has_animation
cdef godot_method_bind *bind_spriteframes_remove_animation
cdef godot_method_bind *bind_spriteframes_remove_frame
cdef godot_method_bind *bind_spriteframes_rename_animation
cdef godot_method_bind *bind_spriteframes_set_animation_loop
cdef godot_method_bind *bind_spriteframes_set_animation_speed
cdef godot_method_bind *bind_spriteframes_set_frame
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_spriteframes__get_animations = api_core.godot_method_bind_get_method('SpriteFrames', '_get_animations')
  bind_spriteframes__get_frames = api_core.godot_method_bind_get_method('SpriteFrames', '_get_frames')
  bind_spriteframes__set_animations = api_core.godot_method_bind_get_method('SpriteFrames', '_set_animations')
  bind_spriteframes__set_frames = api_core.godot_method_bind_get_method('SpriteFrames', '_set_frames')
  bind_spriteframes_add_animation = api_core.godot_method_bind_get_method('SpriteFrames', 'add_animation')
  bind_spriteframes_add_frame = api_core.godot_method_bind_get_method('SpriteFrames', 'add_frame')
  bind_spriteframes_clear = api_core.godot_method_bind_get_method('SpriteFrames', 'clear')
  bind_spriteframes_clear_all = api_core.godot_method_bind_get_method('SpriteFrames', 'clear_all')
  bind_spriteframes_get_animation_loop = api_core.godot_method_bind_get_method('SpriteFrames', 'get_animation_loop')
  bind_spriteframes_get_animation_names = api_core.godot_method_bind_get_method('SpriteFrames', 'get_animation_names')
  bind_spriteframes_get_animation_speed = api_core.godot_method_bind_get_method('SpriteFrames', 'get_animation_speed')
  bind_spriteframes_get_frame = api_core.godot_method_bind_get_method('SpriteFrames', 'get_frame')
  bind_spriteframes_get_frame_count = api_core.godot_method_bind_get_method('SpriteFrames', 'get_frame_count')
  bind_spriteframes_has_animation = api_core.godot_method_bind_get_method('SpriteFrames', 'has_animation')
  bind_spriteframes_remove_animation = api_core.godot_method_bind_get_method('SpriteFrames', 'remove_animation')
  bind_spriteframes_remove_frame = api_core.godot_method_bind_get_method('SpriteFrames', 'remove_frame')
  bind_spriteframes_rename_animation = api_core.godot_method_bind_get_method('SpriteFrames', 'rename_animation')
  bind_spriteframes_set_animation_loop = api_core.godot_method_bind_get_method('SpriteFrames', 'set_animation_loop')
  bind_spriteframes_set_animation_speed = api_core.godot_method_bind_get_method('SpriteFrames', 'set_animation_speed')
  bind_spriteframes_set_frame = api_core.godot_method_bind_get_method('SpriteFrames', 'set_frame')

############################Generated class###################################
cdef class SpriteFrames(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("SpriteFrames")())
##################################Generated Properties#########################################
  @property
  def animations(self): 
    return self.get_animations()
  @animations.setter 
  def animations(self,value): 
    self.set_animations(value)
  @property
  def frames(self): 
    return self.get_frames()
  @frames.setter 
  def frames(self,value): 
    self.set_frames(value)

##################################Generated Methods#########################################
  def  _get_animations(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes__get_animations,self.godot_owner,[NULL,],&ret)
  def  _get_frames(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes__get_frames,self.godot_owner,[NULL,],&ret)
  def  _set_animations(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes__set_animations,self.godot_owner,[NULL,],NULL)
  def  _set_frames(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes__set_frames,self.godot_owner,[NULL,],NULL)
  def  add_animation(self, anim):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_add_animation,self.godot_owner,[NULL,],NULL)
  def  add_frame(self, animframeat_position):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_add_frame,self.godot_owner,[NULL,],NULL)
  def  clear(self, anim):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_clear,self.godot_owner,[NULL,],NULL)
  def  clear_all(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_clear_all,self.godot_owner,[NULL,],NULL)
  def  get_animation_loop(self, anim):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_animation_loop,self.godot_owner,[NULL,],&ret)
  def  get_animation_names(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_animation_names,self.godot_owner,[NULL,],&ret)
  def  get_animation_speed(self, anim):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_animation_speed,self.godot_owner,[NULL,],&ret)
  def  get_frame(self, animidx):
    cdef godot_object *_owner = self.godot_owner
    cdef Texture ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_frame,self.godot_owner,[NULL,],&ret)
  def  get_frame_count(self, anim):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_frame_count,self.godot_owner,[NULL,],&ret)
  def  has_animation(self, anim):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_spriteframes_has_animation,self.godot_owner,[NULL,],&ret)
  def  remove_animation(self, anim):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_remove_animation,self.godot_owner,[NULL,],NULL)
  def  remove_frame(self, animidx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_remove_frame,self.godot_owner,[NULL,],NULL)
  def  rename_animation(self, animnewname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_rename_animation,self.godot_owner,[NULL,],NULL)
  def  set_animation_loop(self, animloop):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_set_animation_loop,self.godot_owner,[NULL,],NULL)
  def  set_animation_speed(self, animspeed):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_set_animation_speed,self.godot_owner,[NULL,],NULL)
  def  set_frame(self, animidxtxt):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_set_frame,self.godot_owner,[NULL,],NULL)
