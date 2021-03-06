from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_multiplayerapi__add_peer
cdef godot_method_bind *bind_multiplayerapi__connected_to_server
cdef godot_method_bind *bind_multiplayerapi__connection_failed
cdef godot_method_bind *bind_multiplayerapi__del_peer
cdef godot_method_bind *bind_multiplayerapi__server_disconnected
cdef godot_method_bind *bind_multiplayerapi_clear
cdef godot_method_bind *bind_multiplayerapi_get_network_connected_peers
cdef godot_method_bind *bind_multiplayerapi_get_network_peer
cdef godot_method_bind *bind_multiplayerapi_get_network_unique_id
cdef godot_method_bind *bind_multiplayerapi_get_rpc_sender_id
cdef godot_method_bind *bind_multiplayerapi_has_network_peer
cdef godot_method_bind *bind_multiplayerapi_is_network_server
cdef godot_method_bind *bind_multiplayerapi_is_object_decoding_allowed
cdef godot_method_bind *bind_multiplayerapi_is_refusing_new_network_connections
cdef godot_method_bind *bind_multiplayerapi_poll
cdef godot_method_bind *bind_multiplayerapi_send_bytes
cdef godot_method_bind *bind_multiplayerapi_set_allow_object_decoding
cdef godot_method_bind *bind_multiplayerapi_set_network_peer
cdef godot_method_bind *bind_multiplayerapi_set_refuse_new_network_connections
cdef godot_method_bind *bind_multiplayerapi_set_root_node
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_multiplayerapi__add_peer = api_core.godot_method_bind_get_method('MultiplayerAPI', '_add_peer')
  bind_multiplayerapi__connected_to_server = api_core.godot_method_bind_get_method('MultiplayerAPI', '_connected_to_server')
  bind_multiplayerapi__connection_failed = api_core.godot_method_bind_get_method('MultiplayerAPI', '_connection_failed')
  bind_multiplayerapi__del_peer = api_core.godot_method_bind_get_method('MultiplayerAPI', '_del_peer')
  bind_multiplayerapi__server_disconnected = api_core.godot_method_bind_get_method('MultiplayerAPI', '_server_disconnected')
  bind_multiplayerapi_clear = api_core.godot_method_bind_get_method('MultiplayerAPI', 'clear')
  bind_multiplayerapi_get_network_connected_peers = api_core.godot_method_bind_get_method('MultiplayerAPI', 'get_network_connected_peers')
  bind_multiplayerapi_get_network_peer = api_core.godot_method_bind_get_method('MultiplayerAPI', 'get_network_peer')
  bind_multiplayerapi_get_network_unique_id = api_core.godot_method_bind_get_method('MultiplayerAPI', 'get_network_unique_id')
  bind_multiplayerapi_get_rpc_sender_id = api_core.godot_method_bind_get_method('MultiplayerAPI', 'get_rpc_sender_id')
  bind_multiplayerapi_has_network_peer = api_core.godot_method_bind_get_method('MultiplayerAPI', 'has_network_peer')
  bind_multiplayerapi_is_network_server = api_core.godot_method_bind_get_method('MultiplayerAPI', 'is_network_server')
  bind_multiplayerapi_is_object_decoding_allowed = api_core.godot_method_bind_get_method('MultiplayerAPI', 'is_object_decoding_allowed')
  bind_multiplayerapi_is_refusing_new_network_connections = api_core.godot_method_bind_get_method('MultiplayerAPI', 'is_refusing_new_network_connections')
  bind_multiplayerapi_poll = api_core.godot_method_bind_get_method('MultiplayerAPI', 'poll')
  bind_multiplayerapi_send_bytes = api_core.godot_method_bind_get_method('MultiplayerAPI', 'send_bytes')
  bind_multiplayerapi_set_allow_object_decoding = api_core.godot_method_bind_get_method('MultiplayerAPI', 'set_allow_object_decoding')
  bind_multiplayerapi_set_network_peer = api_core.godot_method_bind_get_method('MultiplayerAPI', 'set_network_peer')
  bind_multiplayerapi_set_refuse_new_network_connections = api_core.godot_method_bind_get_method('MultiplayerAPI', 'set_refuse_new_network_connections')
  bind_multiplayerapi_set_root_node = api_core.godot_method_bind_get_method('MultiplayerAPI', 'set_root_node')

############################Generated class###################################
cdef class MultiplayerAPI(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("MultiplayerAPI")())
##################################Generated Properties#########################################
  @property
  def allow_object_decoding(self): 
    return self.get_allow_object_decoding()
  @allow_object_decoding.setter 
  def allow_object_decoding(self,value): 
    self.set_allow_object_decoding(value)
  @property
  def network_peer(self): 
    return self.get_network_peer()
  @network_peer.setter 
  def network_peer(self,value): 
    self.set_network_peer(value)
  @property
  def refuse_new_network_connections(self): 
    return self.get_refuse_new_network_connections()
  @refuse_new_network_connections.setter 
  def refuse_new_network_connections(self,value): 
    self.set_refuse_new_network_connections(value)

##################################Generated Methods#########################################
  def  _add_peer(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__add_peer,self.godot_owner,[NULL,],NULL)
  def  _connected_to_server(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__connected_to_server,self.godot_owner,[NULL,],NULL)
  def  _connection_failed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__connection_failed,self.godot_owner,[NULL,],NULL)
  def  _del_peer(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__del_peer,self.godot_owner,[NULL,],NULL)
  def  _server_disconnected(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__server_disconnected,self.godot_owner,[NULL,],NULL)
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_clear,self.godot_owner,[NULL,],NULL)
  def  get_network_connected_peers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolIntArray ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_network_connected_peers,self.godot_owner,[NULL,],&ret)
  def  get_network_peer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NetworkedMultiplayerPeer ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_network_peer,self.godot_owner,[NULL,],&ret)
  def  get_network_unique_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_network_unique_id,self.godot_owner,[NULL,],&ret)
  def  get_rpc_sender_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_rpc_sender_id,self.godot_owner,[NULL,],&ret)
  def  has_network_peer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_has_network_peer,self.godot_owner,[NULL,],&ret)
  def  is_network_server(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_is_network_server,self.godot_owner,[NULL,],&ret)
  def  is_object_decoding_allowed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_is_object_decoding_allowed,self.godot_owner,[NULL,],&ret)
  def  is_refusing_new_network_connections(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_is_refusing_new_network_connections,self.godot_owner,[NULL,],&ret)
  def  poll(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_poll,self.godot_owner,[NULL,],NULL)
  def  send_bytes(self, bytesidmode):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_send_bytes,self.godot_owner,[NULL,],&ret)
  def  set_allow_object_decoding(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_allow_object_decoding,self.godot_owner,[NULL,],NULL)
  def  set_network_peer(self, peer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_network_peer,self.godot_owner,[NULL,],NULL)
  def  set_refuse_new_network_connections(self, refuse):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_refuse_new_network_connections,self.godot_owner,[NULL,],NULL)
  def  set_root_node(self, node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_root_node,self.godot_owner,[NULL,],NULL)
