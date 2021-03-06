from classes.NetworkedMultiplayerPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class WebRTCMultiplayer(NetworkedMultiplayerPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebRTCMultiplayer")())
##################################Generated Methods#########################################
  def  add_peer(self, peerpeer_idunreliable_lifetime):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_add_peer,self.godot_owner,[NULL,],&ret)
  def  close(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_close,self.godot_owner,[NULL,],NULL)
  def  get_peer(self, peer_id):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_get_peer,self.godot_owner,[NULL,],&ret)
  def  get_peers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_get_peers,self.godot_owner,[NULL,],&ret)
  def  has_peer(self, peer_id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_has_peer,self.godot_owner,[NULL,],&ret)
  def  initialize(self, peer_idserver_compatibility):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_initialize,self.godot_owner,[NULL,],&ret)
  def  remove_peer(self, peer_id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_webrtcmultiplayer_remove_peer,self.godot_owner,[NULL,],NULL)
