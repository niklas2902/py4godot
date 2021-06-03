
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
cimport classes.X509Certificate
cimport classes.WebSocketMultiplayerPeer 

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
cdef class WebSocketClient(classes.WebSocketMultiplayerPeer.WebSocketMultiplayerPeer):
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
  def  connect_to_url(self,  String url,  PoolStringArray protocols,  bool gd_mp_api,  PoolStringArray custom_headers):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = &url._native
    args[1] = &protocols._native
    args[2] = &gd_mp_api
    args[3] = &custom_headers._native
    api_core.godot_method_bind_ptrcall(bind_websocketclient_connect_to_url,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  disconnect_from_host(self,  int code,  String reason):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &code
    args[1] = &reason._native
    api_core.godot_method_bind_ptrcall(bind_websocketclient_disconnect_from_host,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_connected_host(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketclient_get_connected_host,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_connected_port(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketclient_get_connected_port,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_trusted_ssl_certificate(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketclient_get_trusted_ssl_certificate,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_verify_ssl_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketclient_is_verify_ssl_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_trusted_ssl_certificate(self,  classes.X509Certificate.X509Certificate arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = arg0.godot_owner
    api_core.godot_method_bind_ptrcall(bind_websocketclient_set_trusted_ssl_certificate,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_verify_ssl_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_websocketclient_set_verify_ssl_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
