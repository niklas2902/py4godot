from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packetpeer_get_available_packet_count
cdef godot_method_bind *bind_packetpeer_get_encode_buffer_max_size
cdef godot_method_bind *bind_packetpeer_get_packet
cdef godot_method_bind *bind_packetpeer_get_packet_error
cdef godot_method_bind *bind_packetpeer_get_var
cdef godot_method_bind *bind_packetpeer_is_object_decoding_allowed
cdef godot_method_bind *bind_packetpeer_put_packet
cdef godot_method_bind *bind_packetpeer_put_var
cdef godot_method_bind *bind_packetpeer_set_allow_object_decoding
cdef godot_method_bind *bind_packetpeer_set_encode_buffer_max_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packetpeer_get_available_packet_count = api_core.godot_method_bind_get_method('PacketPeer', 'get_available_packet_count')
  bind_packetpeer_get_encode_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeer', 'get_encode_buffer_max_size')
  bind_packetpeer_get_packet = api_core.godot_method_bind_get_method('PacketPeer', 'get_packet')
  bind_packetpeer_get_packet_error = api_core.godot_method_bind_get_method('PacketPeer', 'get_packet_error')
  bind_packetpeer_get_var = api_core.godot_method_bind_get_method('PacketPeer', 'get_var')
  bind_packetpeer_is_object_decoding_allowed = api_core.godot_method_bind_get_method('PacketPeer', 'is_object_decoding_allowed')
  bind_packetpeer_put_packet = api_core.godot_method_bind_get_method('PacketPeer', 'put_packet')
  bind_packetpeer_put_var = api_core.godot_method_bind_get_method('PacketPeer', 'put_var')
  bind_packetpeer_set_allow_object_decoding = api_core.godot_method_bind_get_method('PacketPeer', 'set_allow_object_decoding')
  bind_packetpeer_set_encode_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeer', 'set_encode_buffer_max_size')

############################Generated class###################################
cdef class PacketPeer(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PacketPeer")())
##################################Generated Properties#########################################
  @property
  def allow_object_decoding(self): 
    return self.get_allow_object_decoding()
  @allow_object_decoding.setter 
  def allow_object_decoding(self,value): 
    self.set_allow_object_decoding(value)
  @property
  def encode_buffer_max_size(self): 
    return self.get_encode_buffer_max_size()
  @encode_buffer_max_size.setter 
  def encode_buffer_max_size(self,value): 
    self.set_encode_buffer_max_size(value)

##################################Generated Methods#########################################
  def  get_available_packet_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_available_packet_count,self.godot_owner,[NULL,],&ret)
  def  get_encode_buffer_max_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_encode_buffer_max_size,self.godot_owner,[NULL,],&ret)
  def  get_packet(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_packet,self.godot_owner,[NULL,],&ret)
  def  get_packet_error(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_packet_error,self.godot_owner,[NULL,],&ret)
  def  get_var(self, allow_objects):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_var,self.godot_owner,[NULL,],&ret)
  def  is_object_decoding_allowed(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_is_object_decoding_allowed,self.godot_owner,[NULL,],&ret)
  def  put_packet(self, buffer):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_put_packet,self.godot_owner,[NULL,],&ret)
  def  put_var(self, varfull_objects):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_packetpeer_put_var,self.godot_owner,[NULL,],&ret)
  def  set_allow_object_decoding(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeer_set_allow_object_decoding,self.godot_owner,[NULL,],NULL)
  def  set_encode_buffer_max_size(self, max_size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeer_set_encode_buffer_max_size,self.godot_owner,[NULL,],NULL)
