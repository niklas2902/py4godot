from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tcp_server_is_connection_available
cdef godot_method_bind *bind_tcp_server_is_listening
cdef godot_method_bind *bind_tcp_server_listen
cdef godot_method_bind *bind_tcp_server_stop
cdef godot_method_bind *bind_tcp_server_take_connection
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tcp_server_is_connection_available = api_core.godot_method_bind_get_method('TCP_Server', 'is_connection_available')
  bind_tcp_server_is_listening = api_core.godot_method_bind_get_method('TCP_Server', 'is_listening')
  bind_tcp_server_listen = api_core.godot_method_bind_get_method('TCP_Server', 'listen')
  bind_tcp_server_stop = api_core.godot_method_bind_get_method('TCP_Server', 'stop')
  bind_tcp_server_take_connection = api_core.godot_method_bind_get_method('TCP_Server', 'take_connection')

############################Generated class###################################
cdef class TCP_Server(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TCP_Server")())
##################################Generated Methods#########################################
  def  is_connection_available(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tcp_server_is_connection_available,self.godot_owner,[NULL,],&ret)
  def  is_listening(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_tcp_server_is_listening,self.godot_owner,[NULL,],&ret)
  def  listen(self, portbind_address):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_tcp_server_listen,self.godot_owner,[NULL,],&ret)
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_tcp_server_stop,self.godot_owner,[NULL,],NULL)
  def  take_connection(self):
    cdef godot_object *_owner = self.godot_owner
    cdef StreamPeerTCP ret
    api_core.godot_method_bind_ptrcall(bind_tcp_server_take_connection,self.godot_owner,[NULL,],&ret)
