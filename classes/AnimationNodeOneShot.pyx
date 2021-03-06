from classes.AnimationNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodeoneshot_get_autorestart_delay
cdef godot_method_bind *bind_animationnodeoneshot_get_autorestart_random_delay
cdef godot_method_bind *bind_animationnodeoneshot_get_fadein_time
cdef godot_method_bind *bind_animationnodeoneshot_get_fadeout_time
cdef godot_method_bind *bind_animationnodeoneshot_get_mix_mode
cdef godot_method_bind *bind_animationnodeoneshot_has_autorestart
cdef godot_method_bind *bind_animationnodeoneshot_is_using_sync
cdef godot_method_bind *bind_animationnodeoneshot_set_autorestart
cdef godot_method_bind *bind_animationnodeoneshot_set_autorestart_delay
cdef godot_method_bind *bind_animationnodeoneshot_set_autorestart_random_delay
cdef godot_method_bind *bind_animationnodeoneshot_set_fadein_time
cdef godot_method_bind *bind_animationnodeoneshot_set_fadeout_time
cdef godot_method_bind *bind_animationnodeoneshot_set_mix_mode
cdef godot_method_bind *bind_animationnodeoneshot_set_use_sync
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodeoneshot_get_autorestart_delay = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'get_autorestart_delay')
  bind_animationnodeoneshot_get_autorestart_random_delay = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'get_autorestart_random_delay')
  bind_animationnodeoneshot_get_fadein_time = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'get_fadein_time')
  bind_animationnodeoneshot_get_fadeout_time = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'get_fadeout_time')
  bind_animationnodeoneshot_get_mix_mode = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'get_mix_mode')
  bind_animationnodeoneshot_has_autorestart = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'has_autorestart')
  bind_animationnodeoneshot_is_using_sync = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'is_using_sync')
  bind_animationnodeoneshot_set_autorestart = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'set_autorestart')
  bind_animationnodeoneshot_set_autorestart_delay = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'set_autorestart_delay')
  bind_animationnodeoneshot_set_autorestart_random_delay = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'set_autorestart_random_delay')
  bind_animationnodeoneshot_set_fadein_time = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'set_fadein_time')
  bind_animationnodeoneshot_set_fadeout_time = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'set_fadeout_time')
  bind_animationnodeoneshot_set_mix_mode = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'set_mix_mode')
  bind_animationnodeoneshot_set_use_sync = api_core.godot_method_bind_get_method('AnimationNodeOneShot', 'set_use_sync')

############################Generated class###################################
cdef class AnimationNodeOneShot(AnimationNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeOneShot")())
##################################Generated Properties#########################################
  @property
  def autorestart(self): 
    return self.get_autorestart()
  @autorestart.setter 
  def autorestart(self,value): 
    self.set_autorestart(value)
  @property
  def autorestart_delay(self): 
    return self.get_autorestart_delay()
  @autorestart_delay.setter 
  def autorestart_delay(self,value): 
    self.set_autorestart_delay(value)
  @property
  def autorestart_random_delay(self): 
    return self.get_autorestart_random_delay()
  @autorestart_random_delay.setter 
  def autorestart_random_delay(self,value): 
    self.set_autorestart_random_delay(value)
  @property
  def fadein_time(self): 
    return self.get_fadein_time()
  @fadein_time.setter 
  def fadein_time(self,value): 
    self.set_fadein_time(value)
  @property
  def fadeout_time(self): 
    return self.get_fadeout_time()
  @fadeout_time.setter 
  def fadeout_time(self,value): 
    self.set_fadeout_time(value)
  @property
  def sync(self): 
    return self.get_sync()
  @sync.setter 
  def sync(self,value): 
    self.set_sync(value)

##################################Generated Methods#########################################
  def  get_autorestart_delay(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_get_autorestart_delay,self.godot_owner,[NULL,],&ret)
  def  get_autorestart_random_delay(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_get_autorestart_random_delay,self.godot_owner,[NULL,],&ret)
  def  get_fadein_time(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_get_fadein_time,self.godot_owner,[NULL,],&ret)
  def  get_fadeout_time(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_get_fadeout_time,self.godot_owner,[NULL,],&ret)
  def  get_mix_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef AnimationNodeOneShot::MixMode ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_get_mix_mode,self.godot_owner,[NULL,],&ret)
  def  has_autorestart(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_has_autorestart,self.godot_owner,[NULL,],&ret)
  def  is_using_sync(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_is_using_sync,self.godot_owner,[NULL,],&ret)
  def  set_autorestart(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_set_autorestart,self.godot_owner,[NULL,],NULL)
  def  set_autorestart_delay(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_set_autorestart_delay,self.godot_owner,[NULL,],NULL)
  def  set_autorestart_random_delay(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_set_autorestart_random_delay,self.godot_owner,[NULL,],NULL)
  def  set_fadein_time(self, time):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_set_fadein_time,self.godot_owner,[NULL,],NULL)
  def  set_fadeout_time(self, time):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_set_fadeout_time,self.godot_owner,[NULL,],NULL)
  def  set_mix_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_set_mix_mode,self.godot_owner,[NULL,],NULL)
  def  set_use_sync(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodeoneshot_set_use_sync,self.godot_owner,[NULL,],NULL)
