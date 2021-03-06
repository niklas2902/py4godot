from classes.PacketPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packetpeerstream_get_input_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_get_output_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_get_stream_peer
cdef godot_method_bind *bind_packetpeerstream_set_input_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_set_output_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_set_stream_peer
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packetpeerstream_get_input_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'get_input_buffer_max_size')
  bind_packetpeerstream_get_output_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'get_output_buffer_max_size')
  bind_packetpeerstream_get_stream_peer = api_core.godot_method_bind_get_method('PacketPeerStream', 'get_stream_peer')
  bind_packetpeerstream_set_input_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'set_input_buffer_max_size')
  bind_packetpeerstream_set_output_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'set_output_buffer_max_size')
  bind_packetpeerstream_set_stream_peer = api_core.godot_method_bind_get_method('PacketPeerStream', 'set_stream_peer')

############################Generated class###################################
cdef class PacketPeerStream(PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PacketPeerStream")())
##################################Generated Properties#########################################
  @property
  def input_buffer_max_size(self): 
    return self.get_input_buffer_max_size()
  @input_buffer_max_size.setter 
  def input_buffer_max_size(self,value): 
    self.set_input_buffer_max_size(value)
  @property
  def output_buffer_max_size(self): 
    return self.get_output_buffer_max_size()
  @output_buffer_max_size.setter 
  def output_buffer_max_size(self,value): 
    self.set_output_buffer_max_size(value)
  @property
  def stream_peer(self): 
    return self.get_stream_peer()
  @stream_peer.setter 
  def stream_peer(self,value): 
    self.set_stream_peer(value)

##################################Generated Methods#########################################
  def  get_input_buffer_max_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_get_input_buffer_max_size,self.godot_owner,[NULL,],&ret)
  def  get_output_buffer_max_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_get_output_buffer_max_size,self.godot_owner,[NULL,],&ret)
  def  get_stream_peer(self):
    cdef godot_object *_owner = self.godot_owner
    cdef StreamPeer ret
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_get_stream_peer,self.godot_owner,[NULL,],&ret)
  def  set_input_buffer_max_size(self, max_size_bytes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_set_input_buffer_max_size,self.godot_owner,[NULL,],NULL)
  def  set_output_buffer_max_size(self, max_size_bytes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_set_output_buffer_max_size,self.godot_owner,[NULL,],NULL)
  def  set_stream_peer(self, peer):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_set_stream_peer,self.godot_owner,[NULL,],NULL)
