
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
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Object
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tween__remove_by_uid
cdef godot_method_bind *bind_tween_follow_method
cdef godot_method_bind *bind_tween_follow_property
cdef godot_method_bind *bind_tween_get_runtime
cdef godot_method_bind *bind_tween_get_speed_scale
cdef godot_method_bind *bind_tween_get_tween_process_mode
cdef godot_method_bind *bind_tween_interpolate_callback
cdef godot_method_bind *bind_tween_interpolate_deferred_callback
cdef godot_method_bind *bind_tween_interpolate_method
cdef godot_method_bind *bind_tween_interpolate_property
cdef godot_method_bind *bind_tween_is_active
cdef godot_method_bind *bind_tween_is_repeat
cdef godot_method_bind *bind_tween_remove
cdef godot_method_bind *bind_tween_remove_all
cdef godot_method_bind *bind_tween_reset
cdef godot_method_bind *bind_tween_reset_all
cdef godot_method_bind *bind_tween_resume
cdef godot_method_bind *bind_tween_resume_all
cdef godot_method_bind *bind_tween_seek
cdef godot_method_bind *bind_tween_set_active
cdef godot_method_bind *bind_tween_set_repeat
cdef godot_method_bind *bind_tween_set_speed_scale
cdef godot_method_bind *bind_tween_set_tween_process_mode
cdef godot_method_bind *bind_tween_start
cdef godot_method_bind *bind_tween_stop
cdef godot_method_bind *bind_tween_stop_all
cdef godot_method_bind *bind_tween_targeting_method
cdef godot_method_bind *bind_tween_targeting_property
cdef godot_method_bind *bind_tween_tell
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tween__remove_by_uid = api_core.godot_method_bind_get_method('Tween', '_remove_by_uid')
  bind_tween_follow_method = api_core.godot_method_bind_get_method('Tween', 'follow_method')
  bind_tween_follow_property = api_core.godot_method_bind_get_method('Tween', 'follow_property')
  bind_tween_get_runtime = api_core.godot_method_bind_get_method('Tween', 'get_runtime')
  bind_tween_get_speed_scale = api_core.godot_method_bind_get_method('Tween', 'get_speed_scale')
  bind_tween_get_tween_process_mode = api_core.godot_method_bind_get_method('Tween', 'get_tween_process_mode')
  bind_tween_interpolate_callback = api_core.godot_method_bind_get_method('Tween', 'interpolate_callback')
  bind_tween_interpolate_deferred_callback = api_core.godot_method_bind_get_method('Tween', 'interpolate_deferred_callback')
  bind_tween_interpolate_method = api_core.godot_method_bind_get_method('Tween', 'interpolate_method')
  bind_tween_interpolate_property = api_core.godot_method_bind_get_method('Tween', 'interpolate_property')
  bind_tween_is_active = api_core.godot_method_bind_get_method('Tween', 'is_active')
  bind_tween_is_repeat = api_core.godot_method_bind_get_method('Tween', 'is_repeat')
  bind_tween_remove = api_core.godot_method_bind_get_method('Tween', 'remove')
  bind_tween_remove_all = api_core.godot_method_bind_get_method('Tween', 'remove_all')
  bind_tween_reset = api_core.godot_method_bind_get_method('Tween', 'reset')
  bind_tween_reset_all = api_core.godot_method_bind_get_method('Tween', 'reset_all')
  bind_tween_resume = api_core.godot_method_bind_get_method('Tween', 'resume')
  bind_tween_resume_all = api_core.godot_method_bind_get_method('Tween', 'resume_all')
  bind_tween_seek = api_core.godot_method_bind_get_method('Tween', 'seek')
  bind_tween_set_active = api_core.godot_method_bind_get_method('Tween', 'set_active')
  bind_tween_set_repeat = api_core.godot_method_bind_get_method('Tween', 'set_repeat')
  bind_tween_set_speed_scale = api_core.godot_method_bind_get_method('Tween', 'set_speed_scale')
  bind_tween_set_tween_process_mode = api_core.godot_method_bind_get_method('Tween', 'set_tween_process_mode')
  bind_tween_start = api_core.godot_method_bind_get_method('Tween', 'start')
  bind_tween_stop = api_core.godot_method_bind_get_method('Tween', 'stop')
  bind_tween_stop_all = api_core.godot_method_bind_get_method('Tween', 'stop_all')
  bind_tween_targeting_method = api_core.godot_method_bind_get_method('Tween', 'targeting_method')
  bind_tween_targeting_property = api_core.godot_method_bind_get_method('Tween', 'targeting_property')
  bind_tween_tell = api_core.godot_method_bind_get_method('Tween', 'tell')

############################Generated class###################################
cdef class Tween(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Tween")())
##################################Generated Properties#########################################
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
  def repeat(self): 
    return self.get_repeat()
  @repeat.setter 
  def repeat(self,value): 
    self.set_repeat(value)

##################################Generated Methods#########################################
  def  _remove_by_uid(self,  int uid):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &uid
    api_core.godot_method_bind_ptrcall(bind_tween__remove_by_uid,self.godot_owner,args,NULL)
    hello('hallo2')
  def  follow_method(self,  classes.Object.Object object,  String method,  Variant initial_val,  classes.Object.Object target,  String target_method,  float duration,  int trans_type,  int ease_type,  float delay):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[9]

    args[0] = object.godot_owner
    args[1] = &method._native
    args[2] = &initial_val._native
    args[3] = target.godot_owner
    args[4] = &target_method._native
    args[5] = &duration
    args[6] = &trans_type
    args[7] = &ease_type
    args[8] = &delay
    api_core.godot_method_bind_ptrcall(bind_tween_follow_method,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  follow_property(self,  classes.Object.Object object,  NodePath property,  Variant initial_val,  classes.Object.Object target,  NodePath target_property,  float duration,  int trans_type,  int ease_type,  float delay):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[9]

    args[0] = object.godot_owner
    args[1] = &property._native
    args[2] = &initial_val._native
    args[3] = target.godot_owner
    args[4] = &target_property._native
    args[5] = &duration
    args[6] = &trans_type
    args[7] = &ease_type
    args[8] = &delay
    api_core.godot_method_bind_ptrcall(bind_tween_follow_property,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_runtime(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_get_runtime,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_speed_scale(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_get_speed_scale,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_tween_process_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Tween_TweenProcessMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_get_tween_process_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate_callback(self,  classes.Object.Object object,  float duration,  String callback,  Variant arg1,  Variant arg2,  Variant arg3,  Variant arg4,  Variant arg5):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[8]

    args[0] = object.godot_owner
    args[1] = &duration
    args[2] = &callback._native
    args[3] = &arg1._native
    args[4] = &arg2._native
    args[5] = &arg3._native
    args[6] = &arg4._native
    args[7] = &arg5._native
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_callback,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate_deferred_callback(self,  classes.Object.Object object,  float duration,  String callback,  Variant arg1,  Variant arg2,  Variant arg3,  Variant arg4,  Variant arg5):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[8]

    args[0] = object.godot_owner
    args[1] = &duration
    args[2] = &callback._native
    args[3] = &arg1._native
    args[4] = &arg2._native
    args[5] = &arg3._native
    args[6] = &arg4._native
    args[7] = &arg5._native
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_deferred_callback,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate_method(self,  classes.Object.Object object,  String method,  Variant initial_val,  Variant final_val,  float duration,  int trans_type,  int ease_type,  float delay):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[8]

    args[0] = object.godot_owner
    args[1] = &method._native
    args[2] = &initial_val._native
    args[3] = &final_val._native
    args[4] = &duration
    args[5] = &trans_type
    args[6] = &ease_type
    args[7] = &delay
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_method,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  interpolate_property(self,  classes.Object.Object object,  NodePath property,  Variant initial_val,  Variant final_val,  float duration,  int trans_type,  int ease_type,  float delay):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[8]

    args[0] = object.godot_owner
    args[1] = &property._native
    args[2] = &initial_val._native
    args[3] = &final_val._native
    args[4] = &duration
    args[5] = &trans_type
    args[6] = &ease_type
    args[7] = &delay
    api_core.godot_method_bind_ptrcall(bind_tween_interpolate_property,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_active(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_is_active,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_repeat(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_is_repeat,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove(self,  classes.Object.Object object,  String key):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_tween_remove,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_all(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_remove_all,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  reset(self,  classes.Object.Object object,  String key):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_tween_reset,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  reset_all(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_reset_all,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  resume(self,  classes.Object.Object object,  String key):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_tween_resume,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  resume_all(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_resume_all,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  seek(self,  float time):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &time
    api_core.godot_method_bind_ptrcall(bind_tween_seek,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_active(self,  bool active):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &active
    api_core.godot_method_bind_ptrcall(bind_tween_set_active,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_repeat(self,  bool repeat):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &repeat
    api_core.godot_method_bind_ptrcall(bind_tween_set_repeat,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_speed_scale(self,  float speed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &speed
    api_core.godot_method_bind_ptrcall(bind_tween_set_speed_scale,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_tween_process_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_tween_set_tween_process_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  start(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_start,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  stop(self,  classes.Object.Object object,  String key):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = object.godot_owner
    args[1] = &key._native
    api_core.godot_method_bind_ptrcall(bind_tween_stop,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  stop_all(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_stop_all,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  targeting_method(self,  classes.Object.Object object,  String method,  classes.Object.Object initial,  String initial_method,  Variant final_val,  float duration,  int trans_type,  int ease_type,  float delay):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[9]

    args[0] = object.godot_owner
    args[1] = &method._native
    args[2] = initial.godot_owner
    args[3] = &initial_method._native
    args[4] = &final_val._native
    args[5] = &duration
    args[6] = &trans_type
    args[7] = &ease_type
    args[8] = &delay
    api_core.godot_method_bind_ptrcall(bind_tween_targeting_method,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  targeting_property(self,  classes.Object.Object object,  NodePath property,  classes.Object.Object initial,  NodePath initial_val,  Variant final_val,  float duration,  int trans_type,  int ease_type,  float delay):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[9]

    args[0] = object.godot_owner
    args[1] = &property._native
    args[2] = initial.godot_owner
    args[3] = &initial_val._native
    args[4] = &final_val._native
    args[5] = &duration
    args[6] = &trans_type
    args[7] = &ease_type
    args[8] = &delay
    api_core.godot_method_bind_ptrcall(bind_tween_targeting_property,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  tell(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tween_tell,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

