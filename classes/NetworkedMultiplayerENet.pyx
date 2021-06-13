
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

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_networkedmultiplayerenet_close_connection
cdef godot_method_bind *bind_networkedmultiplayerenet_create_client
cdef godot_method_bind *bind_networkedmultiplayerenet_create_server
cdef godot_method_bind *bind_networkedmultiplayerenet_disconnect_peer
cdef godot_method_bind *bind_networkedmultiplayerenet_get_channel_count
cdef godot_method_bind *bind_networkedmultiplayerenet_get_compression_mode
cdef godot_method_bind *bind_networkedmultiplayerenet_get_last_packet_channel
cdef godot_method_bind *bind_networkedmultiplayerenet_get_packet_channel
cdef godot_method_bind *bind_networkedmultiplayerenet_get_peer_address
cdef godot_method_bind *bind_networkedmultiplayerenet_get_peer_port
cdef godot_method_bind *bind_networkedmultiplayerenet_get_transfer_channel
cdef godot_method_bind *bind_networkedmultiplayerenet_is_always_ordered
cdef godot_method_bind *bind_networkedmultiplayerenet_is_server_relay_enabled
cdef godot_method_bind *bind_networkedmultiplayerenet_set_always_ordered
cdef godot_method_bind *bind_networkedmultiplayerenet_set_bind_ip
cdef godot_method_bind *bind_networkedmultiplayerenet_set_channel_count
cdef godot_method_bind *bind_networkedmultiplayerenet_set_compression_mode
cdef godot_method_bind *bind_networkedmultiplayerenet_set_server_relay_enabled
cdef godot_method_bind *bind_networkedmultiplayerenet_set_transfer_channel
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_networkedmultiplayerenet_close_connection = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'close_connection')
  bind_networkedmultiplayerenet_create_client = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'create_client')
  bind_networkedmultiplayerenet_create_server = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'create_server')
  bind_networkedmultiplayerenet_disconnect_peer = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'disconnect_peer')
  bind_networkedmultiplayerenet_get_channel_count = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'get_channel_count')
  bind_networkedmultiplayerenet_get_compression_mode = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'get_compression_mode')
  bind_networkedmultiplayerenet_get_last_packet_channel = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'get_last_packet_channel')
  bind_networkedmultiplayerenet_get_packet_channel = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'get_packet_channel')
  bind_networkedmultiplayerenet_get_peer_address = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'get_peer_address')
  bind_networkedmultiplayerenet_get_peer_port = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'get_peer_port')
  bind_networkedmultiplayerenet_get_transfer_channel = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'get_transfer_channel')
  bind_networkedmultiplayerenet_is_always_ordered = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'is_always_ordered')
  bind_networkedmultiplayerenet_is_server_relay_enabled = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'is_server_relay_enabled')
  bind_networkedmultiplayerenet_set_always_ordered = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'set_always_ordered')
  bind_networkedmultiplayerenet_set_bind_ip = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'set_bind_ip')
  bind_networkedmultiplayerenet_set_channel_count = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'set_channel_count')
  bind_networkedmultiplayerenet_set_compression_mode = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'set_compression_mode')
  bind_networkedmultiplayerenet_set_server_relay_enabled = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'set_server_relay_enabled')
  bind_networkedmultiplayerenet_set_transfer_channel = api_core.godot_method_bind_get_method('NetworkedMultiplayerENet', 'set_transfer_channel')

############################Generated class###################################
cdef class NetworkedMultiplayerENet(classes.NetworkedMultiplayerPeer.NetworkedMultiplayerPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NetworkedMultiplayerENet")())
##################################Generated Properties#########################################
  @property
  def always_ordered(self): 
    return self.get_always_ordered()
  @always_ordered.setter 
  def always_ordered(self,value): 
    self.set_always_ordered(value)
  @property
  def channel_count(self): 
    return self.get_channel_count()
  @channel_count.setter 
  def channel_count(self,value): 
    self.set_channel_count(value)
  @property
  def compression_mode(self): 
    return self.get_compression_mode()
  @compression_mode.setter 
  def compression_mode(self,value): 
    self.set_compression_mode(value)
  @property
  def server_relay(self): 
    return self.get_server_relay()
  @server_relay.setter 
  def server_relay(self,value): 
    self.set_server_relay(value)
  @property
  def transfer_channel(self): 
    return self.get_transfer_channel()
  @transfer_channel.setter 
  def transfer_channel(self,value): 
    self.set_transfer_channel(value)

##################################Generated Methods#########################################
  def  close_connection(self,  int wait_usec):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &wait_usec
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_close_connection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  create_client(self,  String address,  int port,  int in_bandwidth,  int out_bandwidth,  int client_port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[5]

    args[0] = &address._native
    args[1] = &port
    args[2] = &in_bandwidth
    args[3] = &out_bandwidth
    args[4] = &client_port
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_create_client,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  create_server(self,  int port,  int max_clients,  int in_bandwidth,  int out_bandwidth):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = &port
    args[1] = &max_clients
    args[2] = &in_bandwidth
    args[3] = &out_bandwidth
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_create_server,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  disconnect_peer(self,  int id,  bool now):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &id
    args[1] = &now
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_disconnect_peer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_channel_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_get_channel_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_compression_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef NetworkedMultiplayerENet_CompressionMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_get_compression_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_last_packet_channel(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_get_last_packet_channel,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_packet_channel(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_get_packet_channel,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_peer_address(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_get_peer_address,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_peer_port(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_get_peer_port,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_transfer_channel(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_get_transfer_channel,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_always_ordered(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_is_always_ordered,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_server_relay_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_is_server_relay_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_always_ordered(self,  bool ordered):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ordered
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_set_always_ordered,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_bind_ip(self,  String ip):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ip._native
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_set_bind_ip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_channel_count(self,  int channels):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &channels
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_set_channel_count,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_compression_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_set_compression_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_server_relay_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_set_server_relay_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_transfer_channel(self,  int channel):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &channel
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerenet_set_transfer_channel,self.godot_owner,args,NULL)
    hello('hallo2')
