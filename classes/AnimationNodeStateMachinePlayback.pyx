
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
cdef class AnimationNodeStateMachinePlayback(classes.Resource.Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AnimationNodeStateMachinePlayback")())
##################################Generated Methods#########################################
  def  get_current_node(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_get_current_node,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_travel_path(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_get_travel_path,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_playing(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_is_playing,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  start(self,  String node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &node._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_start,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  travel(self,  String to_node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &to_node._native
    api_core.godot_method_bind_ptrcall(bind_animationnodestatemachineplayback_travel,self.godot_owner,args,NULL)
    hello('hallo2')
