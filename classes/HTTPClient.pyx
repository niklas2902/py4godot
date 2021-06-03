
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
cimport classes.StreamPeer
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_httpclient_close
cdef godot_method_bind *bind_httpclient_connect_to_host
cdef godot_method_bind *bind_httpclient_get_connection
cdef godot_method_bind *bind_httpclient_get_read_chunk_size
cdef godot_method_bind *bind_httpclient_get_response_body_length
cdef godot_method_bind *bind_httpclient_get_response_code
cdef godot_method_bind *bind_httpclient_get_response_headers
cdef godot_method_bind *bind_httpclient_get_response_headers_as_dictionary
cdef godot_method_bind *bind_httpclient_get_status
cdef godot_method_bind *bind_httpclient_has_response
cdef godot_method_bind *bind_httpclient_is_blocking_mode_enabled
cdef godot_method_bind *bind_httpclient_is_response_chunked
cdef godot_method_bind *bind_httpclient_poll
cdef godot_method_bind *bind_httpclient_query_string_from_dict
cdef godot_method_bind *bind_httpclient_read_response_body_chunk
cdef godot_method_bind *bind_httpclient_request
cdef godot_method_bind *bind_httpclient_request_raw
cdef godot_method_bind *bind_httpclient_set_blocking_mode
cdef godot_method_bind *bind_httpclient_set_connection
cdef godot_method_bind *bind_httpclient_set_read_chunk_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_httpclient_close = api_core.godot_method_bind_get_method('HTTPClient', 'close')
  bind_httpclient_connect_to_host = api_core.godot_method_bind_get_method('HTTPClient', 'connect_to_host')
  bind_httpclient_get_connection = api_core.godot_method_bind_get_method('HTTPClient', 'get_connection')
  bind_httpclient_get_read_chunk_size = api_core.godot_method_bind_get_method('HTTPClient', 'get_read_chunk_size')
  bind_httpclient_get_response_body_length = api_core.godot_method_bind_get_method('HTTPClient', 'get_response_body_length')
  bind_httpclient_get_response_code = api_core.godot_method_bind_get_method('HTTPClient', 'get_response_code')
  bind_httpclient_get_response_headers = api_core.godot_method_bind_get_method('HTTPClient', 'get_response_headers')
  bind_httpclient_get_response_headers_as_dictionary = api_core.godot_method_bind_get_method('HTTPClient', 'get_response_headers_as_dictionary')
  bind_httpclient_get_status = api_core.godot_method_bind_get_method('HTTPClient', 'get_status')
  bind_httpclient_has_response = api_core.godot_method_bind_get_method('HTTPClient', 'has_response')
  bind_httpclient_is_blocking_mode_enabled = api_core.godot_method_bind_get_method('HTTPClient', 'is_blocking_mode_enabled')
  bind_httpclient_is_response_chunked = api_core.godot_method_bind_get_method('HTTPClient', 'is_response_chunked')
  bind_httpclient_poll = api_core.godot_method_bind_get_method('HTTPClient', 'poll')
  bind_httpclient_query_string_from_dict = api_core.godot_method_bind_get_method('HTTPClient', 'query_string_from_dict')
  bind_httpclient_read_response_body_chunk = api_core.godot_method_bind_get_method('HTTPClient', 'read_response_body_chunk')
  bind_httpclient_request = api_core.godot_method_bind_get_method('HTTPClient', 'request')
  bind_httpclient_request_raw = api_core.godot_method_bind_get_method('HTTPClient', 'request_raw')
  bind_httpclient_set_blocking_mode = api_core.godot_method_bind_get_method('HTTPClient', 'set_blocking_mode')
  bind_httpclient_set_connection = api_core.godot_method_bind_get_method('HTTPClient', 'set_connection')
  bind_httpclient_set_read_chunk_size = api_core.godot_method_bind_get_method('HTTPClient', 'set_read_chunk_size')

############################Generated class###################################
cdef class HTTPClient(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("HTTPClient")())
##################################Generated Properties#########################################
  @property
  def blocking_mode_enabled(self): 
    return self.get_blocking_mode_enabled()
  @blocking_mode_enabled.setter 
  def blocking_mode_enabled(self,value): 
    self.set_blocking_mode_enabled(value)
  @property
  def connection(self): 
    return self.get_connection()
  @connection.setter 
  def connection(self,value): 
    self.set_connection(value)
  @property
  def read_chunk_size(self): 
    return self.get_read_chunk_size()
  @read_chunk_size.setter 
  def read_chunk_size(self,value): 
    self.set_read_chunk_size(value)

##################################Generated Methods#########################################
  def  close(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_httpclient_close,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  connect_to_host(self,  String host,  int port,  bool use_ssl,  bool verify_host):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = &host._native
    args[1] = &port
    args[2] = &use_ssl
    args[3] = &verify_host
    api_core.godot_method_bind_ptrcall(bind_httpclient_connect_to_host,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_connection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_get_connection,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_read_chunk_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_get_read_chunk_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_response_body_length(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_body_length,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_response_code(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_code,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_response_headers(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_headers,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_response_headers_as_dictionary(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_headers_as_dictionary,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  get_status(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Status* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_get_status,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_response(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_has_response,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_blocking_mode_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_is_blocking_mode_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_response_chunked(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_is_response_chunked,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  poll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_poll,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  query_string_from_dict(self,  Dictionary fields):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &fields._native
    api_core.godot_method_bind_ptrcall(bind_httpclient_query_string_from_dict,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  read_response_body_chunk(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httpclient_read_response_body_chunk,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  request(self,  int method,  String url,  PoolStringArray headers,  String body):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = &method
    args[1] = &url._native
    args[2] = &headers._native
    args[3] = &body._native
    api_core.godot_method_bind_ptrcall(bind_httpclient_request,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  request_raw(self,  int method,  String url,  PoolStringArray headers,  PoolByteArray body):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = &method
    args[1] = &url._native
    args[2] = &headers._native
    args[3] = &body._native
    api_core.godot_method_bind_ptrcall(bind_httpclient_request_raw,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_blocking_mode(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_httpclient_set_blocking_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_connection(self,  classes.StreamPeer.StreamPeer connection):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = connection.godot_owner
    api_core.godot_method_bind_ptrcall(bind_httpclient_set_connection,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_read_chunk_size(self,  int bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bytes
    api_core.godot_method_bind_ptrcall(bind_httpclient_set_read_chunk_size,self.godot_owner,args,NULL)
    hello('hallo2')
