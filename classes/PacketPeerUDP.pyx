from classes.PacketPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packetpeerudp_close
cdef godot_method_bind *bind_packetpeerudp_get_packet_ip
cdef godot_method_bind *bind_packetpeerudp_get_packet_port
cdef godot_method_bind *bind_packetpeerudp_is_listening
cdef godot_method_bind *bind_packetpeerudp_join_multicast_group
cdef godot_method_bind *bind_packetpeerudp_leave_multicast_group
cdef godot_method_bind *bind_packetpeerudp_listen
cdef godot_method_bind *bind_packetpeerudp_set_broadcast_enabled
cdef godot_method_bind *bind_packetpeerudp_set_dest_address
cdef godot_method_bind *bind_packetpeerudp_wait
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packetpeerudp_close = api_core.godot_method_bind_get_method('PacketPeerUDP', 'close')
  bind_packetpeerudp_get_packet_ip = api_core.godot_method_bind_get_method('PacketPeerUDP', 'get_packet_ip')
  bind_packetpeerudp_get_packet_port = api_core.godot_method_bind_get_method('PacketPeerUDP', 'get_packet_port')
  bind_packetpeerudp_is_listening = api_core.godot_method_bind_get_method('PacketPeerUDP', 'is_listening')
  bind_packetpeerudp_join_multicast_group = api_core.godot_method_bind_get_method('PacketPeerUDP', 'join_multicast_group')
  bind_packetpeerudp_leave_multicast_group = api_core.godot_method_bind_get_method('PacketPeerUDP', 'leave_multicast_group')
  bind_packetpeerudp_listen = api_core.godot_method_bind_get_method('PacketPeerUDP', 'listen')
  bind_packetpeerudp_set_broadcast_enabled = api_core.godot_method_bind_get_method('PacketPeerUDP', 'set_broadcast_enabled')
  bind_packetpeerudp_set_dest_address = api_core.godot_method_bind_get_method('PacketPeerUDP', 'set_dest_address')
  bind_packetpeerudp_wait = api_core.godot_method_bind_get_method('PacketPeerUDP', 'wait')

############################Generated class###################################
cdef class PacketPeerUDP(PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PacketPeerUDP")())
##################################Generated Methods#########################################
  def  close(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_close,self.godot_owner,[NULL,],NULL)
  def  get_packet_ip(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_get_packet_ip,self.godot_owner,[NULL,],&ret)
  def  get_packet_port(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_get_packet_port,self.godot_owner,[NULL,],&ret)
  def  is_listening(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_is_listening,self.godot_owner,[NULL,],&ret)
  def  join_multicast_group(self, multicast_addressinterface_name):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_join_multicast_group,self.godot_owner,[NULL,],&ret)
  def  leave_multicast_group(self, multicast_addressinterface_name):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_leave_multicast_group,self.godot_owner,[NULL,],&ret)
  def  listen(self, portbind_addressrecv_buf_size):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_listen,self.godot_owner,[NULL,],&ret)
  def  set_broadcast_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_set_broadcast_enabled,self.godot_owner,[NULL,],NULL)
  def  set_dest_address(self, hostport):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_set_dest_address,self.godot_owner,[NULL,],&ret)
  def  wait(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_wait,self.godot_owner,[NULL,],&ret)
