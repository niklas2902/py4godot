
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
cimport classes.Texture
cimport classes.Texture
cimport classes.Resource 

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
cdef class SpriteFrames(classes.Resource.Resource):
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

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spriteframes__get_animations,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _get_frames(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spriteframes__get_frames,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _set_animations(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes__set_animations,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_frames(self,  Array arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes__set_frames,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_animation(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_add_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_frame(self,  String anim,  classes.Texture.Texture frame,  int at_position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &anim._native
    args[1] = frame.godot_owner
    args[2] = &at_position
    api_core.godot_method_bind_ptrcall(bind_spriteframes_add_frame,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_clear,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear_all(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_spriteframes_clear_all,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_animation_loop(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_animation_loop,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_animation_names(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_animation_names,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_animation_speed(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_animation_speed,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_frame(self,  String anim,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &anim._native
    args[1] = &idx
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_frame,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_frame_count(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_get_frame_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_animation(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_has_animation,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_animation(self,  String anim):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &anim._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_remove_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_frame(self,  String anim,  int idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &anim._native
    args[1] = &idx
    api_core.godot_method_bind_ptrcall(bind_spriteframes_remove_frame,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_animation(self,  String anim,  String newname):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &anim._native
    args[1] = &newname._native
    api_core.godot_method_bind_ptrcall(bind_spriteframes_rename_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_animation_loop(self,  String anim,  bool loop):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &anim._native
    args[1] = &loop
    api_core.godot_method_bind_ptrcall(bind_spriteframes_set_animation_loop,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_animation_speed(self,  String anim,  float speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &anim._native
    args[1] = &speed
    api_core.godot_method_bind_ptrcall(bind_spriteframes_set_animation_speed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_frame(self,  String anim,  int idx,  classes.Texture.Texture txt):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &anim._native
    args[1] = &idx
    args[2] = txt.godot_owner
    api_core.godot_method_bind_ptrcall(bind_spriteframes_set_frame,self.godot_owner,args,NULL)
    hello('hallo2')
