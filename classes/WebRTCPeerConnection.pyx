
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_webrtcpeerconnection_add_ice_candidate
cdef godot_method_bind *bind_webrtcpeerconnection_close
cdef godot_method_bind *bind_webrtcpeerconnection_create_data_channel
cdef godot_method_bind *bind_webrtcpeerconnection_create_offer
cdef godot_method_bind *bind_webrtcpeerconnection_get_connection_state
cdef godot_method_bind *bind_webrtcpeerconnection_initialize
cdef godot_method_bind *bind_webrtcpeerconnection_poll
cdef godot_method_bind *bind_webrtcpeerconnection_set_local_description
cdef godot_method_bind *bind_webrtcpeerconnection_set_remote_description
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_webrtcpeerconnection_add_ice_candidate = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'add_ice_candidate')
  bind_webrtcpeerconnection_close = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'close')
  bind_webrtcpeerconnection_create_data_channel = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'create_data_channel')
  bind_webrtcpeerconnection_create_offer = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'create_offer')
  bind_webrtcpeerconnection_get_connection_state = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'get_connection_state')
  bind_webrtcpeerconnection_initialize = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'initialize')
  bind_webrtcpeerconnection_poll = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'poll')
  bind_webrtcpeerconnection_set_local_description = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'set_local_description')
  bind_webrtcpeerconnection_set_remote_description = api_core.godot_method_bind_get_method('WebRTCPeerConnection', 'set_remote_description')

############################Generated class###################################
cdef class WebRTCPeerConnection(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebRTCPeerConnection")())
##################################Generated Methods#########################################
  def  add_ice_candidate(self,  String media,  int index,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[3]

    args[0] = &media._native
    args[1] = &index
    args[2] = &name._native
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_add_ice_candidate,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  close(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_close,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  create_data_channel(self,  String label,  Dictionary options):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &label._native
    args[1] = &options._native
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_create_data_channel,self.godot_owner,args,&ret)
    hello('hallo2')
  def  create_offer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_create_offer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connection_state(self):
    cdef godot_object *_owner = self.godot_owner

    cdef ConnectionState* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_get_connection_state,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  initialize(self,  Dictionary configuration):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &configuration._native
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_initialize,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  poll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_poll,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_local_description(self,  String type,  String sdp):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &type._native
    args[1] = &sdp._native
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_set_local_description,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_remote_description(self,  String type,  String sdp):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &type._native
    args[1] = &sdp._native
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_set_remote_description,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

