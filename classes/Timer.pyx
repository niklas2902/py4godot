
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
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_timer_get_time_left
cdef godot_method_bind *bind_timer_get_timer_process_mode
cdef godot_method_bind *bind_timer_get_wait_time
cdef godot_method_bind *bind_timer_has_autostart
cdef godot_method_bind *bind_timer_is_one_shot
cdef godot_method_bind *bind_timer_is_paused
cdef godot_method_bind *bind_timer_is_stopped
cdef godot_method_bind *bind_timer_set_autostart
cdef godot_method_bind *bind_timer_set_one_shot
cdef godot_method_bind *bind_timer_set_paused
cdef godot_method_bind *bind_timer_set_timer_process_mode
cdef godot_method_bind *bind_timer_set_wait_time
cdef godot_method_bind *bind_timer_start
cdef godot_method_bind *bind_timer_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_timer_get_time_left = api_core.godot_method_bind_get_method('Timer', 'get_time_left')
  bind_timer_get_timer_process_mode = api_core.godot_method_bind_get_method('Timer', 'get_timer_process_mode')
  bind_timer_get_wait_time = api_core.godot_method_bind_get_method('Timer', 'get_wait_time')
  bind_timer_has_autostart = api_core.godot_method_bind_get_method('Timer', 'has_autostart')
  bind_timer_is_one_shot = api_core.godot_method_bind_get_method('Timer', 'is_one_shot')
  bind_timer_is_paused = api_core.godot_method_bind_get_method('Timer', 'is_paused')
  bind_timer_is_stopped = api_core.godot_method_bind_get_method('Timer', 'is_stopped')
  bind_timer_set_autostart = api_core.godot_method_bind_get_method('Timer', 'set_autostart')
  bind_timer_set_one_shot = api_core.godot_method_bind_get_method('Timer', 'set_one_shot')
  bind_timer_set_paused = api_core.godot_method_bind_get_method('Timer', 'set_paused')
  bind_timer_set_timer_process_mode = api_core.godot_method_bind_get_method('Timer', 'set_timer_process_mode')
  bind_timer_set_wait_time = api_core.godot_method_bind_get_method('Timer', 'set_wait_time')
  bind_timer_start = api_core.godot_method_bind_get_method('Timer', 'start')
  bind_timer_stop = api_core.godot_method_bind_get_method('Timer', 'stop')

############################Generated class###################################
cdef class Timer(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Timer")())
##################################Generated Properties#########################################
  @property
  def autostart(self): 
    return self.get_autostart()
  @autostart.setter 
  def autostart(self,value): 
    self.set_autostart(value)
  @property
  def one_shot(self): 
    return self.get_one_shot()
  @one_shot.setter 
  def one_shot(self,value): 
    self.set_one_shot(value)
  @property
  def paused(self): 
    return self.get_paused()
  @paused.setter 
  def paused(self,value): 
    self.set_paused(value)
  @property
  def process_mode(self): 
    return self.get_process_mode()
  @process_mode.setter 
  def process_mode(self,value): 
    self.set_process_mode(value)
  @property
  def time_left(self): 
    return self.get_time_left()
  @time_left.setter 
  def time_left(self,value): 
    self.set_time_left(value)
  @property
  def wait_time(self): 
    return self.get_wait_time()
  @wait_time.setter 
  def wait_time(self,value): 
    self.set_wait_time(value)

##################################Generated Methods#########################################
  def  get_time_left(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_timer_get_time_left,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_timer_process_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef TimerProcessMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_timer_get_timer_process_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_wait_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_timer_get_wait_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_autostart(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_timer_has_autostart,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_one_shot(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_timer_is_one_shot,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_paused(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_timer_is_paused,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_stopped(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_timer_is_stopped,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_autostart(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_timer_set_autostart,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_one_shot(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_timer_set_one_shot,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_paused(self,  bool paused):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &paused
    api_core.godot_method_bind_ptrcall(bind_timer_set_paused,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_timer_process_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_timer_set_timer_process_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_wait_time(self,  float time_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &time_sec
    api_core.godot_method_bind_ptrcall(bind_timer_set_wait_time,self.godot_owner,args,NULL)
    hello('hallo2')
  def  start(self,  float time_sec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &time_sec
    api_core.godot_method_bind_ptrcall(bind_timer_start,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_timer_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
