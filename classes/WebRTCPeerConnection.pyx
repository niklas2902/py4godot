from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class WebRTCPeerConnection(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebRTCPeerConnection")())
##################################Generated Methods#########################################
  def  add_ice_candidate(self, mediaindexname):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_add_ice_candidate,self.godot_owner,[NULL,],&ret)
  def  close(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_close,self.godot_owner,[NULL,],NULL)
  def  create_data_channel(self, labeloptions):
    cdef godot_object *_owner = self.godot_owner
    cdef WebRTCDataChannel ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_create_data_channel,self.godot_owner,[NULL,],&ret)
  def  create_offer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_create_offer,self.godot_owner,[NULL,],&ret)
  def  get_connection_state(self):
    cdef godot_object *_owner = self.godot_owner
    cdef WebRTCPeerConnection::ConnectionState ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_get_connection_state,self.godot_owner,[NULL,],&ret)
  def  initialize(self, configuration):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_initialize,self.godot_owner,[NULL,],&ret)
  def  poll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_poll,self.godot_owner,[NULL,],&ret)
  def  set_local_description(self, typesdp):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_set_local_description,self.godot_owner,[NULL,],&ret)
  def  set_remote_description(self, typesdp):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_webrtcpeerconnection_set_remote_description,self.godot_owner,[NULL,],&ret)
