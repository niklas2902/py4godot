
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
from core.variant.Variant cimport Variant_Type
from core.variant.Variant cimport Variant_Operator
from core.vector3.Vector3 cimport Vector3_Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.X509Certificate
cimport classes.CryptoKey
cimport classes.X509Certificate
cimport classes.WebSocketMultiplayerPeer 

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
cdef class WebSocketServer(classes.WebSocketMultiplayerPeer.WebSocketMultiplayerPeer):
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
  def  disconnect_peer(self,  int id,  int code,  String reason):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &id
    args[1] = &code
    args[2] = &reason._native
    api_core.godot_method_bind_ptrcall(bind_websocketserver_disconnect_peer,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_bind_ip(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_bind_ip,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_ca_chain(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_ca_chain,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_peer_address(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_peer_address,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_peer_port(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_peer_port,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_private_key(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_private_key,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_ssl_certificate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketserver_get_ssl_certificate,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  has_peer(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_websocketserver_has_peer,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_listening(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketserver_is_listening,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  listen(self,  int port,  PoolStringArray protocols,  bool gd_mp_api):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[3]

    args[0] = &port
    args[1] = &protocols._native
    args[2] = &gd_mp_api
    api_core.godot_method_bind_ptrcall(bind_websocketserver_listen,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_bind_ip(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_bind_ip,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ca_chain(self,  classes.X509Certificate.X509Certificate arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_ca_chain,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_private_key(self,  classes.CryptoKey.CryptoKey arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_private_key,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_ssl_certificate(self,  classes.X509Certificate.X509Certificate arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketserver_set_ssl_certificate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_websocketserver_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
