
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
cimport classes.NetworkedMultiplayerPeer
cimport classes.Node
cimport classes.Reference 

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
cdef class MultiplayerAPI(classes.Reference.Reference):
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
  def  _add_peer(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__add_peer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _connected_to_server(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__connected_to_server,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _connection_failed(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__connection_failed,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _del_peer(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__del_peer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _server_disconnected(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi__server_disconnected,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  clear(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_clear,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_network_connected_peers(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_network_connected_peers,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_network_peer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_network_peer,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_network_unique_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_network_unique_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_rpc_sender_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_get_rpc_sender_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_network_peer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_has_network_peer,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_network_server(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_is_network_server,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_object_decoding_allowed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_is_object_decoding_allowed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_refusing_new_network_connections(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_is_refusing_new_network_connections,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  poll(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_poll,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  send_bytes(self,  PoolByteArray bytes,  int id,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[3]

    args[0] = &bytes._native
    args[1] = &id
    args[2] = &mode
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_send_bytes,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_allow_object_decoding(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_allow_object_decoding,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_network_peer(self,  classes.NetworkedMultiplayerPeer.NetworkedMultiplayerPeer peer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = peer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_network_peer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_refuse_new_network_connections(self,  bool refuse):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &refuse
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_refuse_new_network_connections,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_root_node(self,  classes.Node.Node node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = node.godot_owner
    api_core.godot_method_bind_ptrcall(bind_multiplayerapi_set_root_node,self.godot_owner,args,NULL)
    hello('hallo2')
