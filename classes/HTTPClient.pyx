from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class HTTPClient(Reference):
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
    api_core.godot_method_bind_ptrcall(bind_httpclient_close,self.godot_owner,[NULL,],NULL)
  def  connect_to_host(self, hostportuse_sslverify_host):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_connect_to_host,self.godot_owner,[NULL,],&ret)
  def  get_connection(self):
    cdef godot_object *_owner = self.godot_owner
    cdef StreamPeer ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_get_connection,self.godot_owner,[NULL,],&ret)
  def  get_read_chunk_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_get_read_chunk_size,self.godot_owner,[NULL,],&ret)
  def  get_response_body_length(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_body_length,self.godot_owner,[NULL,],&ret)
  def  get_response_code(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_code,self.godot_owner,[NULL,],&ret)
  def  get_response_headers(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolStringArray ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_headers,self.godot_owner,[NULL,],&ret)
  def  get_response_headers_as_dictionary(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_get_response_headers_as_dictionary,self.godot_owner,[NULL,],&ret)
  def  get_status(self):
    cdef godot_object *_owner = self.godot_owner
    cdef HTTPClient::Status ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_get_status,self.godot_owner,[NULL,],&ret)
  def  has_response(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_has_response,self.godot_owner,[NULL,],&ret)
  def  is_blocking_mode_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_is_blocking_mode_enabled,self.godot_owner,[NULL,],&ret)
  def  is_response_chunked(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_is_response_chunked,self.godot_owner,[NULL,],&ret)
  def  poll(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_poll,self.godot_owner,[NULL,],&ret)
  def  query_string_from_dict(self, fields):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_query_string_from_dict,self.godot_owner,[NULL,],&ret)
  def  read_response_body_chunk(self):
    cdef godot_object *_owner = self.godot_owner
    cdef PoolByteArray ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_read_response_body_chunk,self.godot_owner,[NULL,],&ret)
  def  request(self, methodurlheadersbody):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_request,self.godot_owner,[NULL,],&ret)
  def  request_raw(self, methodurlheadersbody):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_httpclient_request_raw,self.godot_owner,[NULL,],&ret)
  def  set_blocking_mode(self, enabled):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_httpclient_set_blocking_mode,self.godot_owner,[NULL,],NULL)
  def  set_connection(self, connection):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_httpclient_set_connection,self.godot_owner,[NULL,],NULL)
  def  set_read_chunk_size(self, bytes):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_httpclient_set_read_chunk_size,self.godot_owner,[NULL,],NULL)
