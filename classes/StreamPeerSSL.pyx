
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
cimport classes.StreamPeer
cimport classes.CryptoKey
cimport classes.X509Certificate
cimport classes.X509Certificate
cimport classes.StreamPeer
cimport classes.X509Certificate
cimport classes.StreamPeer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_streampeerssl_accept_stream
cdef godot_method_bind *bind_streampeerssl_connect_to_stream
cdef godot_method_bind *bind_streampeerssl_disconnect_from_stream
cdef godot_method_bind *bind_streampeerssl_get_status
cdef godot_method_bind *bind_streampeerssl_is_blocking_handshake_enabled
cdef godot_method_bind *bind_streampeerssl_poll
cdef godot_method_bind *bind_streampeerssl_set_blocking_handshake_enabled
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_streampeerssl_accept_stream = api_core.godot_method_bind_get_method('StreamPeerSSL', 'accept_stream')
  bind_streampeerssl_connect_to_stream = api_core.godot_method_bind_get_method('StreamPeerSSL', 'connect_to_stream')
  bind_streampeerssl_disconnect_from_stream = api_core.godot_method_bind_get_method('StreamPeerSSL', 'disconnect_from_stream')
  bind_streampeerssl_get_status = api_core.godot_method_bind_get_method('StreamPeerSSL', 'get_status')
  bind_streampeerssl_is_blocking_handshake_enabled = api_core.godot_method_bind_get_method('StreamPeerSSL', 'is_blocking_handshake_enabled')
  bind_streampeerssl_poll = api_core.godot_method_bind_get_method('StreamPeerSSL', 'poll')
  bind_streampeerssl_set_blocking_handshake_enabled = api_core.godot_method_bind_get_method('StreamPeerSSL', 'set_blocking_handshake_enabled')

############################Generated class###################################
cdef class StreamPeerSSL(classes.StreamPeer.StreamPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StreamPeerSSL")())
##################################Generated Properties#########################################
  @property
  def blocking_handshake(self): 
    return self.get_blocking_handshake()
  @blocking_handshake.setter 
  def blocking_handshake(self,value): 
    self.set_blocking_handshake(value)

##################################Generated Methods#########################################
  def  accept_stream(self,  classes.StreamPeer.StreamPeer stream,  classes.CryptoKey.CryptoKey private_key,  classes.X509Certificate.X509Certificate certificate,  classes.X509Certificate.X509Certificate chain):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = stream.godot_owner
    args[1] = private_key.godot_owner
    args[2] = certificate.godot_owner
    args[3] = chain.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_accept_stream,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  connect_to_stream(self,  classes.StreamPeer.StreamPeer stream,  bool validate_certs,  String for_hostname,  classes.X509Certificate.X509Certificate valid_certificate):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = stream.godot_owner
    args[1] = &validate_certs
    args[2] = &for_hostname._native
    args[3] = valid_certificate.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_connect_to_stream,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  disconnect_from_stream(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_streampeerssl_disconnect_from_stream,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_status(self):
    cdef godot_object *_owner = self.godot_owner

    cdef StreamPeerSSL_Status* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeerssl_get_status,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_blocking_handshake_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeerssl_is_blocking_handshake_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  poll(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_streampeerssl_poll,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  set_blocking_handshake_enabled(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_streampeerssl_set_blocking_handshake_enabled,self.godot_owner,args,NULL)
    hello('hallo2')
