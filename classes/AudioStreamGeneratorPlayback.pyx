
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
cimport classes.AudioStreamPlaybackResampled 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_audiostreamgeneratorplayback_can_push_buffer
cdef godot_method_bind *bind_audiostreamgeneratorplayback_clear_buffer
cdef godot_method_bind *bind_audiostreamgeneratorplayback_get_frames_available
cdef godot_method_bind *bind_audiostreamgeneratorplayback_get_skips
cdef godot_method_bind *bind_audiostreamgeneratorplayback_push_buffer
cdef godot_method_bind *bind_audiostreamgeneratorplayback_push_frame
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_audiostreamgeneratorplayback_can_push_buffer = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'can_push_buffer')
  bind_audiostreamgeneratorplayback_clear_buffer = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'clear_buffer')
  bind_audiostreamgeneratorplayback_get_frames_available = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'get_frames_available')
  bind_audiostreamgeneratorplayback_get_skips = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'get_skips')
  bind_audiostreamgeneratorplayback_push_buffer = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'push_buffer')
  bind_audiostreamgeneratorplayback_push_frame = api_core.godot_method_bind_get_method('AudioStreamGeneratorPlayback', 'push_frame')

############################Generated class###################################
cdef class AudioStreamGeneratorPlayback(classes.AudioStreamPlaybackResampled.AudioStreamPlaybackResampled):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("AudioStreamGeneratorPlayback")())
##################################Generated Methods#########################################
  def  can_push_buffer(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_can_push_buffer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  clear_buffer(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_clear_buffer,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_frames_available(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_get_frames_available,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_skips(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_get_skips,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  push_buffer(self,  PoolVector2Array frames):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &frames._native
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_push_buffer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  push_frame(self,  Vector2 frame):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &frame._native
    api_core.godot_method_bind_ptrcall(bind_audiostreamgeneratorplayback_push_frame,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

