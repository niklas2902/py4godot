from classes.WebSocketMultiplayerPeer cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_websocketserver_disconnect_peer
cdef godot_method_bind *bind_websocketserver_get_bind_ip
cdef godot_method_bind *bind_websocketserver_get_ca_chain
cdef godot_method_bind *bind_websocketserver_get_peer_address
cdef godot_method_bind *bind_websocketserver_get_peer_port
cdef godot_method_bind *bind_websocketserver_get_private_key
cdef godot_method_bind *bind_websocketserver_get_ssl_certificate
cdef godot_method_bind *bind_websocketserver_has_peer
cdef godot_method_bind *bind_websocketserver_is_listening
cdef godot_method_bind *bind_websocketserver_listen
cdef godot_method_bind *bind_websocketserver_set_bind_ip
cdef godot_method_bind *bind_websocketserver_set_ca_chain
cdef godot_method_bind *bind_websocketserver_set_private_key
cdef godot_method_bind *bind_websocketserver_set_ssl_certificate
cdef godot_method_bind *bind_websocketserver_stop
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_websocketserver_disconnect_peer = api_core.godot_method_bind_get_method('WebSocketServer', 'disconnect_peer')
  bind_websocketserver_get_bind_ip = api_core.godot_method_bind_get_method('WebSocketServer', 'get_bind_ip')
  bind_websocketserver_get_ca_chain = api_core.godot_method_bind_get_method('WebSocketServer', 'get_ca_chain')
  bind_websocketserver_get_peer_address = api_core.godot_method_bind_get_method('WebSocketServer', 'get_peer_address')
  bind_websocketserver_get_peer_port = api_core.godot_method_bind_get_method('WebSocketServer', 'get_peer_port')
  bind_websocketserver_get_private_key = api_core.godot_method_bind_get_method('WebSocketServer', 'get_private_key')
  bind_websocketserver_get_ssl_certificate = api_core.godot_method_bind_get_method('WebSocketServer', 'get_ssl_certificate')
  bind_websocketserver_has_peer = api_core.godot_method_bind_get_method('WebSocketServer', 'has_peer')
  bind_websocketserver_is_listening = api_core.godot_method_bind_get_method('WebSocketServer', 'is_listening')
  bind_websocketserver_listen = api_core.godot_method_bind_get_method('WebSocketServer', 'listen')
  bind_websocketserver_set_bind_ip = api_core.godot_method_bind_get_method('WebSocketServer', 'set_bind_ip')
  bind_websocketserver_set_ca_chain = api_core.godot_method_bind_get_method('WebSocketServer', 'set_ca_chain')
  bind_websocketserver_set_private_key = api_core.godot_method_bind_get_method('WebSocketServer', 'set_private_key')
  bind_websocketserver_set_ssl_certificate = api_core.godot_method_bind_get_method('WebSocketServer', 'set_ssl_certificate')
  bind_websocketserver_stop = api_core.godot_method_bind_get_method('WebSocketServer', 'stop')

############################Generated class###################################
cdef class WebSocketServer(WebSocketMultiplayerPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebSocketServer")())
##################################Generated Properties#########################################
  @property
  def bind_ip(self): 
    return self.get_bind_ip()
  @bind_ip.setter 
  def bind_ip(self,value): 
    self.set_bind_ip(value)
  @property
  def ca_chain(self): 
    return self.get_ca_chain()
  @ca_chain.setter 
  def ca_chain(self,value): 
    self.set_ca_chain(value)
  @property
  def private_key(self): 
    return self.get_private_key()
  @private_key.setter 
  def private_key(self,value): 
    self.set_private_key(value)
  @property
  def ssl_certificate(self): 
    return self.get_ssl_certificate()
  @ssl_certificate.setter 
  def ssl_certificate(self,value): 
    self.set_ssl_certificate(value)

##################################Generated Methods#########################################
  def  disconnect_peer(self, idcodereason):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_disconnect_peer,self.godot_owner,[NULL,],NULL)
  def  get_bind_ip(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_bind_ip,self.godot_owner,[NULL,],&ret)
  def  get_ca_chain(self):
    cdef godot_object *_owner = self.godot_owner
    cdef X509Certificate ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_ca_chain,self.godot_owner,[NULL,],&ret)
  def  get_peer_address(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_peer_address,self.godot_owner,[NULL,],&ret)
  def  get_peer_port(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_peer_port,self.godot_owner,[NULL,],&ret)
  def  get_private_key(self):
    cdef godot_object *_owner = self.godot_owner
    cdef CryptoKey ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_private_key,self.godot_owner,[NULL,],&ret)
  def  get_ssl_certificate(self):
    cdef godot_object *_owner = self.godot_owner
    cdef X509Certificate ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_ssl_certificate,self.godot_owner,[NULL,],&ret)
  def  has_peer(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_has_peer,self.godot_owner,[NULL,],&ret)
  def  is_listening(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_is_listening,self.godot_owner,[NULL,],&ret)
  def  listen(self, portprotocolsgd_mp_api):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_websocketserver_listen,self.godot_owner,[NULL,],&ret)
  def  set_bind_ip(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_bind_ip,self.godot_owner,[NULL,],NULL)
  def  set_ca_chain(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_ca_chain,self.godot_owner,[NULL,],NULL)
  def  set_private_key(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_private_key,self.godot_owner,[NULL,],NULL)
  def  set_ssl_certificate(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_ssl_certificate,self.godot_owner,[NULL,],NULL)
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_stop,self.godot_owner,[NULL,],NULL)
