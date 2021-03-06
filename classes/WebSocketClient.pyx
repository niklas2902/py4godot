from classes.WebSocketMultiplayerPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_websocketclient_connect_to_url
cdef godot_method_bind *bind_websocketclient_disconnect_from_host
cdef godot_method_bind *bind_websocketclient_get_connected_host
cdef godot_method_bind *bind_websocketclient_get_connected_port
cdef godot_method_bind *bind_websocketclient_get_trusted_ssl_certificate
cdef godot_method_bind *bind_websocketclient_is_verify_ssl_enabled
cdef godot_method_bind *bind_websocketclient_set_trusted_ssl_certificate
cdef godot_method_bind *bind_websocketclient_set_verify_ssl_enabled
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_websocketclient_connect_to_url = api_core.godot_method_bind_get_method('WebSocketClient', 'connect_to_url')
  bind_websocketclient_disconnect_from_host = api_core.godot_method_bind_get_method('WebSocketClient', 'disconnect_from_host')
  bind_websocketclient_get_connected_host = api_core.godot_method_bind_get_method('WebSocketClient', 'get_connected_host')
  bind_websocketclient_get_connected_port = api_core.godot_method_bind_get_method('WebSocketClient', 'get_connected_port')
  bind_websocketclient_get_trusted_ssl_certificate = api_core.godot_method_bind_get_method('WebSocketClient', 'get_trusted_ssl_certificate')
  bind_websocketclient_is_verify_ssl_enabled = api_core.godot_method_bind_get_method('WebSocketClient', 'is_verify_ssl_enabled')
  bind_websocketclient_set_trusted_ssl_certificate = api_core.godot_method_bind_get_method('WebSocketClient', 'set_trusted_ssl_certificate')
  bind_websocketclient_set_verify_ssl_enabled = api_core.godot_method_bind_get_method('WebSocketClient', 'set_verify_ssl_enabled')

############################Generated class###################################
cdef class WebSocketClient(WebSocketMultiplayerPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebSocketClient")())
##################################Generated Properties#########################################
  @property
  def trusted_ssl_certificate(self): 
    return self.get_trusted_ssl_certificate()
  @trusted_ssl_certificate.setter 
  def trusted_ssl_certificate(self,value): 
    self.set_trusted_ssl_certificate(value)
  @property
  def verify_ssl(self): 
    return self.get_verify_ssl()
  @verify_ssl.setter 
  def verify_ssl(self,value): 
    self.set_verify_ssl(value)

##################################Generated Methods#########################################
  def  connect_to_url(self, urlprotocolsgd_mp_apicustom_headers):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_websocketclient_connect_to_url,self.godot_owner,[NULL,],&ret)
  def  disconnect_from_host(self, codereason):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketclient_disconnect_from_host,self.godot_owner,[NULL,],NULL)
  def  get_connected_host(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_websocketclient_get_connected_host,self.godot_owner,[NULL,],&ret)
  def  get_connected_port(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_websocketclient_get_connected_port,self.godot_owner,[NULL,],&ret)
  def  get_trusted_ssl_certificate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef X509Certificate ret
    api_core.godot_method_bind_ptrcall(bind_websocketclient_get_trusted_ssl_certificate,self.godot_owner,[NULL,],&ret)
  def  is_verify_ssl_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_websocketclient_is_verify_ssl_enabled,self.godot_owner,[NULL,],&ret)
  def  set_trusted_ssl_certificate(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketclient_set_trusted_ssl_certificate,self.godot_owner,[NULL,],NULL)
  def  set_verify_ssl_enabled(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketclient_set_verify_ssl_enabled,self.godot_owner,[NULL,],NULL)
