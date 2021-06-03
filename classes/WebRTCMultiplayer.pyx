
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
cimport classes.WebRTCPeerConnection
cimport classes.NetworkedMultiplayerPeer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_webrtcmultiplayer_add_peer
cdef godot_method_bind *bind_webrtcmultiplayer_close
cdef godot_method_bind *bind_webrtcmultiplayer_get_peer
cdef godot_method_bind *bind_webrtcmultiplayer_get_peers
cdef godot_method_bind *bind_webrtcmultiplayer_has_peer
cdef godot_method_bind *bind_webrtcmultiplayer_initialize
cdef godot_method_bind *bind_webrtcmultiplayer_remove_peer
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_webrtcmultiplayer_add_peer = api_core.godot_method_bind_get_method('WebRTCMultiplayer', 'add_peer')
  bind_webrtcmultiplayer_close = api_core.godot_method_bind_get_method('WebRTCMultiplayer', 'close')
  bind_webrtcmultiplayer_get_peer = api_core.godot_method_bind_get_method('WebRTCMultiplayer', 'get_peer')
  bind_webrtcmultiplayer_get_peers = api_core.godot_method_bind_get_method('WebRTCMultiplayer', 'get_peers')
  bind_webrtcmultiplayer_has_peer = api_core.godot_method_bind_get_method('WebRTCMultiplayer', 'has_peer')
  bind_webrtcmultiplayer_initialize = api_core.godot_method_bind_get_method('WebRTCMultiplayer', 'initialize')
  bind_webrtcmultiplayer_remove_peer = api_core.godot_method_bind_get_method('WebRTCMultiplayer', 'remove_peer')

############################Generated class###################################
cdef class WebRTCMultiplayer(classes.NetworkedMultiplayerPeer.NetworkedMultiplayerPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebRTCMultiplayer")())
##################################Generated Methods#########################################
  def  add_peer(self,  classes.WebRTCPeerConnection.WebRTCPeerConnection peer,  int peer_id,  int unreliable_lifetime):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[3]

    args[0] = peer.godot_owner
    args[1] = &peer_id
    args[2] = &unreliable_lifetime
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_add_peer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  close(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_close,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_peer(self,  int peer_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[1]

    args[0] = &peer_id
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_get_peer,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_peers(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_get_peers,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  has_peer(self,  int peer_id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &peer_id
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_has_peer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  initialize(self,  int peer_id,  bool server_compatibility):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &peer_id
    args[1] = &server_compatibility
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_initialize,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_peer(self,  int peer_id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &peer_id
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_remove_peer,self.godot_owner,args,NULL)
    hello('hallo2')
