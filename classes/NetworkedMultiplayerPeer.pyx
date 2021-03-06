from classes.PacketPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_networkedmultiplayerpeer_get_connection_status
cdef godot_method_bind *bind_networkedmultiplayerpeer_get_packet_peer
cdef godot_method_bind *bind_networkedmultiplayerpeer_get_transfer_mode
cdef godot_method_bind *bind_networkedmultiplayerpeer_get_unique_id
cdef godot_method_bind *bind_networkedmultiplayerpeer_is_refusing_new_connections
cdef godot_method_bind *bind_networkedmultiplayerpeer_poll
cdef godot_method_bind *bind_networkedmultiplayerpeer_set_refuse_new_connections
cdef godot_method_bind *bind_networkedmultiplayerpeer_set_target_peer
cdef godot_method_bind *bind_networkedmultiplayerpeer_set_transfer_mode
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_networkedmultiplayerpeer_get_connection_status = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'get_connection_status')
  bind_networkedmultiplayerpeer_get_packet_peer = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'get_packet_peer')
  bind_networkedmultiplayerpeer_get_transfer_mode = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'get_transfer_mode')
  bind_networkedmultiplayerpeer_get_unique_id = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'get_unique_id')
  bind_networkedmultiplayerpeer_is_refusing_new_connections = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'is_refusing_new_connections')
  bind_networkedmultiplayerpeer_poll = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'poll')
  bind_networkedmultiplayerpeer_set_refuse_new_connections = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'set_refuse_new_connections')
  bind_networkedmultiplayerpeer_set_target_peer = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'set_target_peer')
  bind_networkedmultiplayerpeer_set_transfer_mode = api_core.godot_method_bind_get_method('NetworkedMultiplayerPeer', 'set_transfer_mode')

############################Generated class###################################
cdef class NetworkedMultiplayerPeer(PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("NetworkedMultiplayerPeer")())
##################################Generated Properties#########################################
  @property
  def refuse_new_connections(self): 
    return self.get_refuse_new_connections()
  @refuse_new_connections.setter 
  def refuse_new_connections(self,value): 
    self.set_refuse_new_connections(value)
  @property
  def transfer_mode(self): 
    return self.get_transfer_mode()
  @transfer_mode.setter 
  def transfer_mode(self,value): 
    self.set_transfer_mode(value)

##################################Generated Methods#########################################
  def  get_connection_status(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NetworkedMultiplayerPeer::ConnectionStatus ret
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_get_connection_status,self.godot_owner,[NULL,],&ret)
  def  get_packet_peer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_get_packet_peer,self.godot_owner,[NULL,],&ret)
  def  get_transfer_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef NetworkedMultiplayerPeer::TransferMode ret
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_get_transfer_mode,self.godot_owner,[NULL,],&ret)
  def  get_unique_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_get_unique_id,self.godot_owner,[NULL,],&ret)
  def  is_refusing_new_connections(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_is_refusing_new_connections,self.godot_owner,[NULL,],&ret)
  def  poll(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_poll,self.godot_owner,[NULL,],NULL)
  def  set_refuse_new_connections(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_set_refuse_new_connections,self.godot_owner,[NULL,],NULL)
  def  set_target_peer(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_set_target_peer,self.godot_owner,[NULL,],NULL)
  def  set_transfer_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_networkedmultiplayerpeer_set_transfer_mode,self.godot_owner,[NULL,],NULL)
