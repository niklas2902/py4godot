from classes.StreamPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_streampeertcp_connect_to_host
cdef godot_method_bind *bind_streampeertcp_disconnect_from_host
cdef godot_method_bind *bind_streampeertcp_get_connected_host
cdef godot_method_bind *bind_streampeertcp_get_connected_port
cdef godot_method_bind *bind_streampeertcp_get_status
cdef godot_method_bind *bind_streampeertcp_is_connected_to_host
cdef godot_method_bind *bind_streampeertcp_set_no_delay
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_streampeertcp_connect_to_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'connect_to_host')
  bind_streampeertcp_disconnect_from_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'disconnect_from_host')
  bind_streampeertcp_get_connected_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'get_connected_host')
  bind_streampeertcp_get_connected_port = api_core.godot_method_bind_get_method('StreamPeerTCP', 'get_connected_port')
  bind_streampeertcp_get_status = api_core.godot_method_bind_get_method('StreamPeerTCP', 'get_status')
  bind_streampeertcp_is_connected_to_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'is_connected_to_host')
  bind_streampeertcp_set_no_delay = api_core.godot_method_bind_get_method('StreamPeerTCP', 'set_no_delay')

############################Generated class###################################
cdef class StreamPeerTCP(StreamPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StreamPeerTCP")())
##################################Generated Methods#########################################
  def  connect_to_host(self, hostport):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_connect_to_host,self.godot_owner,[NULL,],&ret)
  def  disconnect_from_host(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_disconnect_from_host,self.godot_owner,[NULL,],NULL)
  def  get_connected_host(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_get_connected_host,self.godot_owner,[NULL,],&ret)
  def  get_connected_port(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_get_connected_port,self.godot_owner,[NULL,],&ret)
  def  get_status(self):
    cdef godot_object *_owner = self.godot_owner
    cdef StreamPeerTCP::Status ret
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_get_status,self.godot_owner,[NULL,],&ret)
  def  is_connected_to_host(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_is_connected_to_host,self.godot_owner,[NULL,],&ret)
  def  set_no_delay(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_set_no_delay,self.godot_owner,[NULL,],NULL)
