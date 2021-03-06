from classes.NetworkedMultiplayerPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_websocketmultiplayerpeer_get_peer
cdef godot_method_bind *bind_websocketmultiplayerpeer_set_buffers
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_websocketmultiplayerpeer_get_peer = api_core.godot_method_bind_get_method('WebSocketMultiplayerPeer', 'get_peer')
  bind_websocketmultiplayerpeer_set_buffers = api_core.godot_method_bind_get_method('WebSocketMultiplayerPeer', 'set_buffers')

############################Generated class###################################
cdef class WebSocketMultiplayerPeer(NetworkedMultiplayerPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebSocketMultiplayerPeer")())
##################################Generated Methods#########################################
  def  get_peer(self, peer_id):
    cdef godot_object *_owner = self.godot_owner
    cdef WebSocketPeer ret
    api_core.godot_method_bind_ptrcall(bind_websocketmultiplayerpeer_get_peer,self.godot_owner,[NULL,],&ret)
  def  set_buffers(self, input_buffer_size_kbinput_max_packetsoutput_buffer_size_kboutput_max_packets):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_websocketmultiplayerpeer_set_buffers,self.godot_owner,[NULL,],&ret)
