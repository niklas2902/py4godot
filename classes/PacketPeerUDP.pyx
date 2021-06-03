
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
cimport classes.PacketPeer 

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
cdef class PacketPeerUDP(classes.PacketPeer.PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PacketPeerUDP")())
##################################Generated Methods#########################################
  def  close(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_close,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_packet_ip(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_get_packet_ip,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_packet_port(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_get_packet_port,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_listening(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_is_listening,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  join_multicast_group(self,  String multicast_address,  String interface_name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &multicast_address._native
    args[1] = &interface_name._native
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_join_multicast_group,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  leave_multicast_group(self,  String multicast_address,  String interface_name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &multicast_address._native
    args[1] = &interface_name._native
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_leave_multicast_group,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  listen(self,  int port,  String bind_address,  int recv_buf_size):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[3]

    args[0] = &port
    args[1] = &bind_address._native
    args[2] = &recv_buf_size
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_listen,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_broadcast_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_set_broadcast_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_dest_address(self,  String host,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &host._native
    args[1] = &port
    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_set_dest_address,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  wait(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeerudp_wait,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

