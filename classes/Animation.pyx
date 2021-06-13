
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
cimport classes.Resource
cimport classes.Resource
cimport classes.Animation
cimport classes.Resource 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animation_add_track
cdef godot_method_bind *bind_animation_animation_track_get_key_animation
cdef godot_method_bind *bind_animation_animation_track_insert_key
cdef godot_method_bind *bind_animation_animation_track_set_key_animation
cdef godot_method_bind *bind_animation_audio_track_get_key_end_offset
cdef godot_method_bind *bind_animation_audio_track_get_key_start_offset
cdef godot_method_bind *bind_animation_audio_track_get_key_stream
cdef godot_method_bind *bind_animation_audio_track_insert_key
cdef godot_method_bind *bind_animation_audio_track_set_key_end_offset
cdef godot_method_bind *bind_animation_audio_track_set_key_start_offset
cdef godot_method_bind *bind_animation_audio_track_set_key_stream
cdef godot_method_bind *bind_animation_bezier_track_get_key_in_handle
cdef godot_method_bind *bind_animation_bezier_track_get_key_out_handle
cdef godot_method_bind *bind_animation_bezier_track_get_key_value
cdef godot_method_bind *bind_animation_bezier_track_insert_key
cdef godot_method_bind *bind_animation_bezier_track_interpolate
cdef godot_method_bind *bind_animation_bezier_track_set_key_in_handle
cdef godot_method_bind *bind_animation_bezier_track_set_key_out_handle
cdef godot_method_bind *bind_animation_bezier_track_set_key_value
cdef godot_method_bind *bind_animation_clear
cdef godot_method_bind *bind_animation_copy_track
cdef godot_method_bind *bind_animation_find_track
cdef godot_method_bind *bind_animation_get_length
cdef godot_method_bind *bind_animation_get_step
cdef godot_method_bind *bind_animation_get_track_count
cdef godot_method_bind *bind_animation_has_loop
cdef godot_method_bind *bind_animation_method_track_get_key_indices
cdef godot_method_bind *bind_animation_method_track_get_name
cdef godot_method_bind *bind_animation_method_track_get_params
cdef godot_method_bind *bind_animation_remove_track
cdef godot_method_bind *bind_animation_set_length
cdef godot_method_bind *bind_animation_set_loop
cdef godot_method_bind *bind_animation_set_step
cdef godot_method_bind *bind_animation_track_find_key
cdef godot_method_bind *bind_animation_track_get_interpolation_loop_wrap
cdef godot_method_bind *bind_animation_track_get_interpolation_type
cdef godot_method_bind *bind_animation_track_get_key_count
cdef godot_method_bind *bind_animation_track_get_key_time
cdef godot_method_bind *bind_animation_track_get_key_transition
cdef godot_method_bind *bind_animation_track_get_key_value
cdef godot_method_bind *bind_animation_track_get_path
cdef godot_method_bind *bind_animation_track_get_type
cdef godot_method_bind *bind_animation_track_insert_key
cdef godot_method_bind *bind_animation_track_is_enabled
cdef godot_method_bind *bind_animation_track_is_imported
cdef godot_method_bind *bind_animation_track_move_down
cdef godot_method_bind *bind_animation_track_move_to
cdef godot_method_bind *bind_animation_track_move_up
cdef godot_method_bind *bind_animation_track_remove_key
cdef godot_method_bind *bind_animation_track_remove_key_at_position
cdef godot_method_bind *bind_animation_track_set_enabled
cdef godot_method_bind *bind_animation_track_set_imported
cdef godot_method_bind *bind_animation_track_set_interpolation_loop_wrap
cdef godot_method_bind *bind_animation_track_set_interpolation_type
cdef godot_method_bind *bind_animation_track_set_key_time
cdef godot_method_bind *bind_animation_track_set_key_transition
cdef godot_method_bind *bind_animation_track_set_key_value
cdef godot_method_bind *bind_animation_track_set_path
cdef godot_method_bind *bind_animation_track_swap
cdef godot_method_bind *bind_animation_transform_track_insert_key
cdef godot_method_bind *bind_animation_transform_track_interpolate
cdef godot_method_bind *bind_animation_value_track_get_key_indices
cdef godot_method_bind *bind_animation_value_track_get_update_mode
cdef godot_method_bind *bind_animation_value_track_set_update_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animation_add_track = api_core.godot_method_bind_get_method('Animation', 'add_track')
  bind_animation_animation_track_get_key_animation = api_core.godot_method_bind_get_method('Animation', 'animation_track_get_key_animation')
  bind_animation_animation_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'animation_track_insert_key')
  bind_animation_animation_track_set_key_animation = api_core.godot_method_bind_get_method('Animation', 'animation_track_set_key_animation')
  bind_animation_audio_track_get_key_end_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_get_key_end_offset')
  bind_animation_audio_track_get_key_start_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_get_key_start_offset')
  bind_animation_audio_track_get_key_stream = api_core.godot_method_bind_get_method('Animation', 'audio_track_get_key_stream')
  bind_animation_audio_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'audio_track_insert_key')
  bind_animation_audio_track_set_key_end_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_set_key_end_offset')
  bind_animation_audio_track_set_key_start_offset = api_core.godot_method_bind_get_method('Animation', 'audio_track_set_key_start_offset')
  bind_animation_audio_track_set_key_stream = api_core.godot_method_bind_get_method('Animation', 'audio_track_set_key_stream')
  bind_animation_bezier_track_get_key_in_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_get_key_in_handle')
  bind_animation_bezier_track_get_key_out_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_get_key_out_handle')
  bind_animation_bezier_track_get_key_value = api_core.godot_method_bind_get_method('Animation', 'bezier_track_get_key_value')
  bind_animation_bezier_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'bezier_track_insert_key')
  bind_animation_bezier_track_interpolate = api_core.godot_method_bind_get_method('Animation', 'bezier_track_interpolate')
  bind_animation_bezier_track_set_key_in_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_set_key_in_handle')
  bind_animation_bezier_track_set_key_out_handle = api_core.godot_method_bind_get_method('Animation', 'bezier_track_set_key_out_handle')
  bind_animation_bezier_track_set_key_value = api_core.godot_method_bind_get_method('Animation', 'bezier_track_set_key_value')
  bind_animation_clear = api_core.godot_method_bind_get_method('Animation', 'clear')
  bind_animation_copy_track = api_core.godot_method_bind_get_method('Animation', 'copy_track')
  bind_animation_find_track = api_core.godot_method_bind_get_method('Animation', 'find_track')
  bind_animation_get_length = api_core.godot_method_bind_get_method('Animation', 'get_length')
  bind_animation_get_step = api_core.godot_method_bind_get_method('Animation', 'get_step')
  bind_animation_get_track_count = api_core.godot_method_bind_get_method('Animation', 'get_track_count')
  bind_animation_has_loop = api_core.godot_method_bind_get_method('Animation', 'has_loop')
  bind_animation_method_track_get_key_indices = api_core.godot_method_bind_get_method('Animation', 'method_track_get_key_indices')
  bind_animation_method_track_get_name = api_core.godot_method_bind_get_method('Animation', 'method_track_get_name')
  bind_animation_method_track_get_params = api_core.godot_method_bind_get_method('Animation', 'method_track_get_params')
  bind_animation_remove_track = api_core.godot_method_bind_get_method('Animation', 'remove_track')
  bind_animation_set_length = api_core.godot_method_bind_get_method('Animation', 'set_length')
  bind_animation_set_loop = api_core.godot_method_bind_get_method('Animation', 'set_loop')
  bind_animation_set_step = api_core.godot_method_bind_get_method('Animation', 'set_step')
  bind_animation_track_find_key = api_core.godot_method_bind_get_method('Animation', 'track_find_key')
  bind_animation_track_get_interpolation_loop_wrap = api_core.godot_method_bind_get_method('Animation', 'track_get_interpolation_loop_wrap')
  bind_animation_track_get_interpolation_type = api_core.godot_method_bind_get_method('Animation', 'track_get_interpolation_type')
  bind_animation_track_get_key_count = api_core.godot_method_bind_get_method('Animation', 'track_get_key_count')
  bind_animation_track_get_key_time = api_core.godot_method_bind_get_method('Animation', 'track_get_key_time')
  bind_animation_track_get_key_transition = api_core.godot_method_bind_get_method('Animation', 'track_get_key_transition')
  bind_animation_track_get_key_value = api_core.godot_method_bind_get_method('Animation', 'track_get_key_value')
  bind_animation_track_get_path = api_core.godot_method_bind_get_method('Animation', 'track_get_path')
  bind_animation_track_get_type = api_core.godot_method_bind_get_method('Animation', 'track_get_type')
  bind_animation_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'track_insert_key')
  bind_animation_track_is_enabled = api_core.godot_method_bind_get_method('Animation', 'track_is_enabled')
  bind_animation_track_is_imported = api_core.godot_method_bind_get_method('Animation', 'track_is_imported')
  bind_animation_track_move_down = api_core.godot_method_bind_get_method('Animation', 'track_move_down')
  bind_animation_track_move_to = api_core.godot_method_bind_get_method('Animation', 'track_move_to')
  bind_animation_track_move_up = api_core.godot_method_bind_get_method('Animation', 'track_move_up')
  bind_animation_track_remove_key = api_core.godot_method_bind_get_method('Animation', 'track_remove_key')
  bind_animation_track_remove_key_at_position = api_core.godot_method_bind_get_method('Animation', 'track_remove_key_at_position')
  bind_animation_track_set_enabled = api_core.godot_method_bind_get_method('Animation', 'track_set_enabled')
  bind_animation_track_set_imported = api_core.godot_method_bind_get_method('Animation', 'track_set_imported')
  bind_animation_track_set_interpolation_loop_wrap = api_core.godot_method_bind_get_method('Animation', 'track_set_interpolation_loop_wrap')
  bind_animation_track_set_interpolation_type = api_core.godot_method_bind_get_method('Animation', 'track_set_interpolation_type')
  bind_animation_track_set_key_time = api_core.godot_method_bind_get_method('Animation', 'track_set_key_time')
  bind_animation_track_set_key_transition = api_core.godot_method_bind_get_method('Animation', 'track_set_key_transition')
  bind_animation_track_set_key_value = api_core.godot_method_bind_get_method('Animation', 'track_set_key_value')
  bind_animation_track_set_path = api_core.godot_method_bind_get_method('Animation', 'track_set_path')
  bind_animation_track_swap = api_core.godot_method_bind_get_method('Animation', 'track_swap')
  bind_animation_transform_track_insert_key = api_core.godot_method_bind_get_method('Animation', 'transform_track_insert_key')
  bind_animation_transform_track_interpolate = api_core.godot_method_bind_get_method('Animation', 'transform_track_interpolate')
  bind_animation_value_track_get_key_indices = api_core.godot_method_bind_get_method('Animation', 'value_track_get_key_indices')
  bind_animation_value_track_get_update_mode = api_core.godot_method_bind_get_method('Animation', 'value_track_get_update_mode')
  bind_animation_value_track_set_update_mode = api_core.godot_method_bind_get_method('Animation', 'value_track_set_update_mode')

############################Generated class###################################
cdef class Animation(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Animation")())
##################################Generated Properties#########################################
  @property
  def length(self): 
    return self.get_length()
  @length.setter 
  def length(self,value): 
    self.set_length(value)
  @property
  def loop(self): 
    return self.get_loop()
  @loop.setter 
  def loop(self,value): 
    self.set_loop(value)
  @property
  def step(self): 
    return self.get_step()
  @step.setter 
  def step(self,value): 
    self.set_step(value)

##################################Generated Methods#########################################
  def  add_track(self,  int type,  int at_position):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &type
    args[1] = &at_position
    api_core.godot_method_bind_ptrcall(bind_animation_add_track,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  animation_track_get_key_animation(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_animation_track_get_key_animation,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  animation_track_insert_key(self,  int track_idx,  float time,  String animation):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &time
    args[2] = &animation._native
    api_core.godot_method_bind_ptrcall(bind_animation_animation_track_insert_key,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  animation_track_set_key_animation(self,  int track_idx,  int key_idx,  String animation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &animation._native
    api_core.godot_method_bind_ptrcall(bind_animation_animation_track_set_key_animation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  audio_track_get_key_end_offset(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_get_key_end_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  audio_track_get_key_start_offset(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_get_key_start_offset,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  audio_track_get_key_stream(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_get_key_stream,self.godot_owner,args,&ret)
    hello('hallo2')
  def  audio_track_insert_key(self,  int track_idx,  float time,  classes.Resource.Resource stream,  float start_offset,  float end_offset):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[5]

    args[0] = &track_idx
    args[1] = &time
    args[2] = stream.godot_owner
    args[3] = &start_offset
    args[4] = &end_offset
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_insert_key,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  audio_track_set_key_end_offset(self,  int track_idx,  int key_idx,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &offset
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_set_key_end_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  audio_track_set_key_start_offset(self,  int track_idx,  int key_idx,  float offset):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &offset
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_set_key_start_offset,self.godot_owner,args,NULL)
    hello('hallo2')
  def  audio_track_set_key_stream(self,  int track_idx,  int key_idx,  classes.Resource.Resource stream):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = stream.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_audio_track_set_key_stream,self.godot_owner,args,NULL)
    hello('hallo2')
  def  bezier_track_get_key_in_handle(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_get_key_in_handle,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  bezier_track_get_key_out_handle(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_get_key_out_handle,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  bezier_track_get_key_value(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_get_key_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  bezier_track_insert_key(self,  int track_idx,  float time,  float value,  Vector2 in_handle,  Vector2 out_handle):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[5]

    args[0] = &track_idx
    args[1] = &time
    args[2] = &value
    args[3] = &in_handle._native
    args[4] = &out_handle._native
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_insert_key,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  bezier_track_interpolate(self,  int track_idx,  float time):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &time
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_interpolate,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  bezier_track_set_key_in_handle(self,  int track_idx,  int key_idx,  Vector2 in_handle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &in_handle._native
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_set_key_in_handle,self.godot_owner,args,NULL)
    hello('hallo2')
  def  bezier_track_set_key_out_handle(self,  int track_idx,  int key_idx,  Vector2 out_handle):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &out_handle._native
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_set_key_out_handle,self.godot_owner,args,NULL)
    hello('hallo2')
  def  bezier_track_set_key_value(self,  int track_idx,  int key_idx,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &value
    api_core.godot_method_bind_ptrcall(bind_animation_bezier_track_set_key_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animation_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  copy_track(self,  int track_idx,  classes.Animation.Animation to_animation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = to_animation.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animation_copy_track,self.godot_owner,args,NULL)
    hello('hallo2')
  def  find_track(self,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_animation_find_track,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animation_get_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_step(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animation_get_step,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_track_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animation_get_track_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_loop(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animation_has_loop,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  method_track_get_key_indices(self,  int track_idx,  float time_sec,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &time_sec
    args[2] = &delta
    api_core.godot_method_bind_ptrcall(bind_animation_method_track_get_key_indices,self.godot_owner,args,&ret)
    hello('hallo2')
  def  method_track_get_name(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_method_track_get_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  method_track_get_params(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_method_track_get_params,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  remove_track(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_remove_track,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_length(self,  float time_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &time_sec
    api_core.godot_method_bind_ptrcall(bind_animation_set_length,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_loop(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_animation_set_loop,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_step(self,  float size_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &size_sec
    api_core.godot_method_bind_ptrcall(bind_animation_set_step,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_find_key(self,  int track_idx,  float time,  bool exact):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &time
    args[2] = &exact
    api_core.godot_method_bind_ptrcall(bind_animation_track_find_key,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_get_interpolation_loop_wrap(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_interpolation_loop_wrap,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_get_interpolation_type(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef Animation_InterpolationType* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_interpolation_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_get_key_count(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_get_key_time(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_time,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_get_key_transition(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_transition,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_get_key_value(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_key_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  track_get_path(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_node_path* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_path,self.godot_owner,args,&ret)
    hello('hallo2')
    return NodePath.new_static(dereference(ret))

  def  track_get_type(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef Animation_TrackType* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_get_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_insert_key(self,  int track_idx,  float time,  Variant key,  float transition):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &track_idx
    args[1] = &time
    args[2] = &key._native
    args[3] = &transition
    api_core.godot_method_bind_ptrcall(bind_animation_track_insert_key,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_is_enabled(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_is_enabled,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_is_imported(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_is_imported,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  track_move_down(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_move_down,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_move_to(self,  int track_idx,  int to_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &to_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_move_to,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_move_up(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_move_up,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_remove_key(self,  int track_idx,  int key_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &key_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_remove_key,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_remove_key_at_position(self,  int track_idx,  float position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &position
    api_core.godot_method_bind_ptrcall(bind_animation_track_remove_key_at_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_enabled(self,  int track_idx,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &enabled
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_imported(self,  int track_idx,  bool imported):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &imported
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_imported,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_interpolation_loop_wrap(self,  int track_idx,  bool interpolation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &interpolation
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_interpolation_loop_wrap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_interpolation_type(self,  int track_idx,  int interpolation):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &interpolation
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_interpolation_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_key_time(self,  int track_idx,  int key_idx,  float time):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &time
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_key_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_key_transition(self,  int track_idx,  int key_idx,  float transition):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key_idx
    args[2] = &transition
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_key_transition,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_key_value(self,  int track_idx,  int key,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &key
    args[2] = &value._native
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_key_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_set_path(self,  int track_idx,  NodePath path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &path._native
    api_core.godot_method_bind_ptrcall(bind_animation_track_set_path,self.godot_owner,args,NULL)
    hello('hallo2')
  def  track_swap(self,  int track_idx,  int with_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &with_idx
    api_core.godot_method_bind_ptrcall(bind_animation_track_swap,self.godot_owner,args,NULL)
    hello('hallo2')
  def  transform_track_insert_key(self,  int track_idx,  float time,  Vector3 location,  Quat rotation,  Vector3 scale):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[5]

    args[0] = &track_idx
    args[1] = &time
    args[2] = &location._native
    args[3] = &rotation._native
    args[4] = &scale._native
    api_core.godot_method_bind_ptrcall(bind_animation_transform_track_insert_key,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  transform_track_interpolate(self,  int track_idx,  float time_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &time_sec
    api_core.godot_method_bind_ptrcall(bind_animation_transform_track_interpolate,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  value_track_get_key_indices(self,  int track_idx,  float time_sec,  float delta):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[3]

    args[0] = &track_idx
    args[1] = &time_sec
    args[2] = &delta
    api_core.godot_method_bind_ptrcall(bind_animation_value_track_get_key_indices,self.godot_owner,args,&ret)
    hello('hallo2')
  def  value_track_get_update_mode(self,  int track_idx):
    cdef godot_object *_owner = self.godot_owner

    cdef Animation_UpdateMode* ret = NULL;

    cdef void *args[1]

    args[0] = &track_idx
    api_core.godot_method_bind_ptrcall(bind_animation_value_track_get_update_mode,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  value_track_set_update_mode(self,  int track_idx,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &track_idx
    args[1] = &mode
    api_core.godot_method_bind_ptrcall(bind_animation_value_track_set_update_mode,self.godot_owner,args,NULL)
    hello('hallo2')
