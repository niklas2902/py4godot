from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_animationnodestatemachineplayback_get_current_node
cdef godot_method_bind *bind_animationnodestatemachineplayback_get_travel_path
cdef godot_method_bind *bind_animationnodestatemachineplayback_is_playing
cdef godot_method_bind *bind_animationnodestatemachineplayback_start
cdef godot_method_bind *bind_animationnodestatemachineplayback_stop
cdef godot_method_bind *bind_animationnodestatemachineplayback_travel
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_animationnodestatemachineplayback_get_current_node = api_core.godot_method_bind_get_method('AnimationNodeStateMachinePlayback', 'get_current_node')
  bind_animationnodestatemachineplayback_get_travel_path = api_core.godot_method_bind_get_method('AnimationNodeStateMachinePlayback', 'get_travel_path')
  bind_animationnodestatemachineplayback_is_playing = api_core.godot_method_bind_get_method('AnimationNodeStateMachinePlayback', 'is_playing')
  bind_animationnodestatemachineplayback_start = api_core.godot_method_bind_get_method('AnimationNodeStateMachinePlayback', 'start')
  bind_animationnodestatemachineplayback_stop = api_core.godot_method_bind_get_method('AnimationNodeStateMachinePlayback', 'stop')
  bind_animationnodestatemachineplayback_travel = api_core.godot_method_bind_get_method('AnimationNodeStateMachinePlayback', 'travel')

############################Generated class###################################
cdef class AnimationNodeStateMachinePlayback(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeStateMachinePlayback")())
##################################Generated Methods#########################################
  def  get_current_node(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_get_current_node,self.godot_owner,[NULL,],&ret)
  def  get_travel_path(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_get_travel_path,self.godot_owner,[NULL,],&ret)
  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_is_playing,self.godot_owner,[NULL,],&ret)
  def  start(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_start,self.godot_owner,[NULL,],NULL)
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_stop,self.godot_owner,[NULL,],NULL)
  def  travel(self, to_node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_travel,self.godot_owner,[NULL,],NULL)
