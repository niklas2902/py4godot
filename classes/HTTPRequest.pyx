
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
cimport classes.HTTPClient
cimport classes.Node 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_httprequest__redirect_request
cdef godot_method_bind *bind_httprequest__request_done
cdef godot_method_bind *bind_httprequest__timeout
cdef godot_method_bind *bind_httprequest_cancel_request
cdef godot_method_bind *bind_httprequest_get_body_size
cdef godot_method_bind *bind_httprequest_get_body_size_limit
cdef godot_method_bind *bind_httprequest_get_download_chunk_size
cdef godot_method_bind *bind_httprequest_get_download_file
cdef godot_method_bind *bind_httprequest_get_downloaded_bytes
cdef godot_method_bind *bind_httprequest_get_http_client_status
cdef godot_method_bind *bind_httprequest_get_max_redirects
cdef godot_method_bind *bind_httprequest_get_timeout
cdef godot_method_bind *bind_httprequest_is_using_threads
cdef godot_method_bind *bind_httprequest_request
cdef godot_method_bind *bind_httprequest_set_body_size_limit
cdef godot_method_bind *bind_httprequest_set_download_chunk_size
cdef godot_method_bind *bind_httprequest_set_download_file
cdef godot_method_bind *bind_httprequest_set_max_redirects
cdef godot_method_bind *bind_httprequest_set_timeout
cdef godot_method_bind *bind_httprequest_set_use_threads
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_httprequest__redirect_request = api_core.godot_method_bind_get_method('HTTPRequest', '_redirect_request')
  bind_httprequest__request_done = api_core.godot_method_bind_get_method('HTTPRequest', '_request_done')
  bind_httprequest__timeout = api_core.godot_method_bind_get_method('HTTPRequest', '_timeout')
  bind_httprequest_cancel_request = api_core.godot_method_bind_get_method('HTTPRequest', 'cancel_request')
  bind_httprequest_get_body_size = api_core.godot_method_bind_get_method('HTTPRequest', 'get_body_size')
  bind_httprequest_get_body_size_limit = api_core.godot_method_bind_get_method('HTTPRequest', 'get_body_size_limit')
  bind_httprequest_get_download_chunk_size = api_core.godot_method_bind_get_method('HTTPRequest', 'get_download_chunk_size')
  bind_httprequest_get_download_file = api_core.godot_method_bind_get_method('HTTPRequest', 'get_download_file')
  bind_httprequest_get_downloaded_bytes = api_core.godot_method_bind_get_method('HTTPRequest', 'get_downloaded_bytes')
  bind_httprequest_get_http_client_status = api_core.godot_method_bind_get_method('HTTPRequest', 'get_http_client_status')
  bind_httprequest_get_max_redirects = api_core.godot_method_bind_get_method('HTTPRequest', 'get_max_redirects')
  bind_httprequest_get_timeout = api_core.godot_method_bind_get_method('HTTPRequest', 'get_timeout')
  bind_httprequest_is_using_threads = api_core.godot_method_bind_get_method('HTTPRequest', 'is_using_threads')
  bind_httprequest_request = api_core.godot_method_bind_get_method('HTTPRequest', 'request')
  bind_httprequest_set_body_size_limit = api_core.godot_method_bind_get_method('HTTPRequest', 'set_body_size_limit')
  bind_httprequest_set_download_chunk_size = api_core.godot_method_bind_get_method('HTTPRequest', 'set_download_chunk_size')
  bind_httprequest_set_download_file = api_core.godot_method_bind_get_method('HTTPRequest', 'set_download_file')
  bind_httprequest_set_max_redirects = api_core.godot_method_bind_get_method('HTTPRequest', 'set_max_redirects')
  bind_httprequest_set_timeout = api_core.godot_method_bind_get_method('HTTPRequest', 'set_timeout')
  bind_httprequest_set_use_threads = api_core.godot_method_bind_get_method('HTTPRequest', 'set_use_threads')

############################Generated class###################################
cdef class HTTPRequest(classes.Node.Node):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("HTTPRequest")())
##################################Generated Properties#########################################
  @property
  def body_size_limit(self): 
    return self.get_body_size_limit()
  @body_size_limit.setter 
  def body_size_limit(self,value): 
    self.set_body_size_limit(value)
  @property
  def download_chunk_size(self): 
    return self.get_download_chunk_size()
  @download_chunk_size.setter 
  def download_chunk_size(self,value): 
    self.set_download_chunk_size(value)
  @property
  def download_file(self): 
    return self.get_download_file()
  @download_file.setter 
  def download_file(self,value): 
    self.set_download_file(value)
  @property
  def max_redirects(self): 
    return self.get_max_redirects()
  @max_redirects.setter 
  def max_redirects(self,value): 
    self.set_max_redirects(value)
  @property
  def timeout(self): 
    return self.get_timeout()
  @timeout.setter 
  def timeout(self,value): 
    self.set_timeout(value)
  @property
  def use_threads(self): 
    return self.get_use_threads()
  @use_threads.setter 
  def use_threads(self,value): 
    self.set_use_threads(value)

##################################Generated Methods#########################################
  def  _redirect_request(self,  String arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0._native
    api_core.godot_method_bind_ptrcall(bind_httprequest__redirect_request,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _request_done(self,  int arg0,  int arg1,  PoolStringArray arg2,  PoolByteArray arg3):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &arg0
    args[1] = &arg1
    args[2] = &arg2._native
    args[3] = &arg3._native
    api_core.godot_method_bind_ptrcall(bind_httprequest__request_done,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _timeout(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_httprequest__timeout,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  cancel_request(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_httprequest_cancel_request,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_body_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_body_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_body_size_limit(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_body_size_limit,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_download_chunk_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_download_chunk_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_download_file(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_download_file,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_downloaded_bytes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_downloaded_bytes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_http_client_status(self):
    cdef godot_object *_owner = self.godot_owner

    cdef classes.HTTPClient.HTTPClient_Status* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_http_client_status,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_redirects(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_max_redirects,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_timeout(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_get_timeout,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_using_threads(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_httprequest_is_using_threads,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  request(self,  String url,  PoolStringArray custom_headers,  bool ssl_validate_domain,  int method,  String request_data):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[5]

    args[0] = &url._native
    args[1] = &custom_headers._native
    args[2] = &ssl_validate_domain
    args[3] = &method
    args[4] = &request_data._native
    api_core.godot_method_bind_ptrcall(bind_httprequest_request,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_body_size_limit(self,  int bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &bytes
    api_core.godot_method_bind_ptrcall(bind_httprequest_set_body_size_limit,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_download_chunk_size(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_httprequest_set_download_chunk_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_download_file(self,  String path):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &path._native
    api_core.godot_method_bind_ptrcall(bind_httprequest_set_download_file,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_max_redirects(self,  int amount):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &amount
    api_core.godot_method_bind_ptrcall(bind_httprequest_set_max_redirects,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_timeout(self,  int timeout):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &timeout
    api_core.godot_method_bind_ptrcall(bind_httprequest_set_timeout,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_use_threads(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_httprequest_set_use_threads,self.godot_owner,args,NULL)
    hello('hallo2')
