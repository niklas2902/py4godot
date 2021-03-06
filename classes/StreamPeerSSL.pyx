from classes.StreamPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_streampeerssl_accept_stream
cdef godot_method_bind *bind_streampeerssl_connect_to_stream
cdef godot_method_bind *bind_streampeerssl_disconnect_from_stream
cdef godot_method_bind *bind_streampeerssl_get_status
cdef godot_method_bind *bind_streampeerssl_is_blocking_handshake_enabled
cdef godot_method_bind *bind_streampeerssl_poll
cdef godot_method_bind *bind_streampeerssl_set_blocking_handshake_enabled
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_streampeerssl_accept_stream = api_core.godot_method_bind_get_method('StreamPeerSSL', 'accept_stream')
  bind_streampeerssl_connect_to_stream = api_core.godot_method_bind_get_method('StreamPeerSSL', 'connect_to_stream')
  bind_streampeerssl_disconnect_from_stream = api_core.godot_method_bind_get_method('StreamPeerSSL', 'disconnect_from_stream')
  bind_streampeerssl_get_status = api_core.godot_method_bind_get_method('StreamPeerSSL', 'get_status')
  bind_streampeerssl_is_blocking_handshake_enabled = api_core.godot_method_bind_get_method('StreamPeerSSL', 'is_blocking_handshake_enabled')
  bind_streampeerssl_poll = api_core.godot_method_bind_get_method('StreamPeerSSL', 'poll')
  bind_streampeerssl_set_blocking_handshake_enabled = api_core.godot_method_bind_get_method('StreamPeerSSL', 'set_blocking_handshake_enabled')

############################Generated class###################################
cdef class StreamPeerSSL(StreamPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StreamPeerSSL")())
##################################Generated Properties#########################################
  @property
  def blocking_handshake(self): 
    return self.get_blocking_handshake()
  @blocking_handshake.setter 
  def blocking_handshake(self,value): 
    self.set_blocking_handshake(value)

##################################Generated Methods#########################################
  def  accept_stream(self, streamprivate_keycertificatechain):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_accept_stream,self.godot_owner,[NULL,],&ret)
  def  connect_to_stream(self, streamvalidate_certsfor_hostnamevalid_certificate):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_connect_to_stream,self.godot_owner,[NULL,],&ret)
  def  disconnect_from_stream(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_disconnect_from_stream,self.godot_owner,[NULL,],NULL)
  def  get_status(self):
    cdef godot_object *_owner = self.godot_owner
    cdef StreamPeerSSL::Status ret
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_get_status,self.godot_owner,[NULL,],&ret)
  def  is_blocking_handshake_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_is_blocking_handshake_enabled,self.godot_owner,[NULL,],&ret)
  def  poll(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_poll,self.godot_owner,[NULL,],NULL)
  def  set_blocking_handshake_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_set_blocking_handshake_enabled,self.godot_owner,[NULL,],NULL)
