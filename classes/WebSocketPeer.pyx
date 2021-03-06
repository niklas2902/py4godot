from classes.PacketPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_websocketpeer_close
cdef godot_method_bind *bind_websocketpeer_get_connected_host
cdef godot_method_bind *bind_websocketpeer_get_connected_port
cdef godot_method_bind *bind_websocketpeer_get_write_mode
cdef godot_method_bind *bind_websocketpeer_is_connected_to_host
cdef godot_method_bind *bind_websocketpeer_set_no_delay
cdef godot_method_bind *bind_websocketpeer_set_write_mode
cdef godot_method_bind *bind_websocketpeer_was_string_packet
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_websocketpeer_close = api_core.godot_method_bind_get_method('WebSocketPeer', 'close')
  bind_websocketpeer_get_connected_host = api_core.godot_method_bind_get_method('WebSocketPeer', 'get_connected_host')
  bind_websocketpeer_get_connected_port = api_core.godot_method_bind_get_method('WebSocketPeer', 'get_connected_port')
  bind_websocketpeer_get_write_mode = api_core.godot_method_bind_get_method('WebSocketPeer', 'get_write_mode')
  bind_websocketpeer_is_connected_to_host = api_core.godot_method_bind_get_method('WebSocketPeer', 'is_connected_to_host')
  bind_websocketpeer_set_no_delay = api_core.godot_method_bind_get_method('WebSocketPeer', 'set_no_delay')
  bind_websocketpeer_set_write_mode = api_core.godot_method_bind_get_method('WebSocketPeer', 'set_write_mode')
  bind_websocketpeer_was_string_packet = api_core.godot_method_bind_get_method('WebSocketPeer', 'was_string_packet')

############################Generated class###################################
cdef class WebSocketPeer(PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebSocketPeer")())
##################################Generated Methods#########################################
  def  close(self, codereason):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_close,self.godot_owner,[NULL,],NULL)
  def  get_connected_host(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_get_connected_host,self.godot_owner,[NULL,],&ret)
  def  get_connected_port(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_get_connected_port,self.godot_owner,[NULL,],&ret)
  def  get_write_mode(self):
    cdef godot_object *_owner = self.godot_owner
    cdef WebSocketPeer::WriteMode ret
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_get_write_mode,self.godot_owner,[NULL,],&ret)
  def  is_connected_to_host(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_is_connected_to_host,self.godot_owner,[NULL,],&ret)
  def  set_no_delay(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_set_no_delay,self.godot_owner,[NULL,],NULL)
  def  set_write_mode(self, mode):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_set_write_mode,self.godot_owner,[NULL,],NULL)
  def  was_string_packet(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_was_string_packet,self.godot_owner,[NULL,],&ret)
