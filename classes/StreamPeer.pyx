from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_streampeer_get_16
cdef godot_method_bind *bind_streampeer_get_32
cdef godot_method_bind *bind_streampeer_get_64
cdef godot_method_bind *bind_streampeer_get_8
cdef godot_method_bind *bind_streampeer_get_available_bytes
cdef godot_method_bind *bind_streampeer_get_data
cdef godot_method_bind *bind_streampeer_get_double
cdef godot_method_bind *bind_streampeer_get_float
cdef godot_method_bind *bind_streampeer_get_partial_data
cdef godot_method_bind *bind_streampeer_get_string
cdef godot_method_bind *bind_streampeer_get_u16
cdef godot_method_bind *bind_streampeer_get_u32
cdef godot_method_bind *bind_streampeer_get_u64
cdef godot_method_bind *bind_streampeer_get_u8
cdef godot_method_bind *bind_streampeer_get_utf8_string
cdef godot_method_bind *bind_streampeer_get_var
cdef godot_method_bind *bind_streampeer_is_big_endian_enabled
cdef godot_method_bind *bind_streampeer_put_16
cdef godot_method_bind *bind_streampeer_put_32
cdef godot_method_bind *bind_streampeer_put_64
cdef godot_method_bind *bind_streampeer_put_8
cdef godot_method_bind *bind_streampeer_put_data
cdef godot_method_bind *bind_streampeer_put_double
cdef godot_method_bind *bind_streampeer_put_float
cdef godot_method_bind *bind_streampeer_put_partial_data
cdef godot_method_bind *bind_streampeer_put_string
cdef godot_method_bind *bind_streampeer_put_u16
cdef godot_method_bind *bind_streampeer_put_u32
cdef godot_method_bind *bind_streampeer_put_u64
cdef godot_method_bind *bind_streampeer_put_u8
cdef godot_method_bind *bind_streampeer_put_utf8_string
cdef godot_method_bind *bind_streampeer_put_var
cdef godot_method_bind *bind_streampeer_set_big_endian
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_streampeer_get_16 = api_core.godot_method_bind_get_method('StreamPeer', 'get_16')
  bind_streampeer_get_32 = api_core.godot_method_bind_get_method('StreamPeer', 'get_32')
  bind_streampeer_get_64 = api_core.godot_method_bind_get_method('StreamPeer', 'get_64')
  bind_streampeer_get_8 = api_core.godot_method_bind_get_method('StreamPeer', 'get_8')
  bind_streampeer_get_available_bytes = api_core.godot_method_bind_get_method('StreamPeer', 'get_available_bytes')
  bind_streampeer_get_data = api_core.godot_method_bind_get_method('StreamPeer', 'get_data')
  bind_streampeer_get_double = api_core.godot_method_bind_get_method('StreamPeer', 'get_double')
  bind_streampeer_get_float = api_core.godot_method_bind_get_method('StreamPeer', 'get_float')
  bind_streampeer_get_partial_data = api_core.godot_method_bind_get_method('StreamPeer', 'get_partial_data')
  bind_streampeer_get_string = api_core.godot_method_bind_get_method('StreamPeer', 'get_string')
  bind_streampeer_get_u16 = api_core.godot_method_bind_get_method('StreamPeer', 'get_u16')
  bind_streampeer_get_u32 = api_core.godot_method_bind_get_method('StreamPeer', 'get_u32')
  bind_streampeer_get_u64 = api_core.godot_method_bind_get_method('StreamPeer', 'get_u64')
  bind_streampeer_get_u8 = api_core.godot_method_bind_get_method('StreamPeer', 'get_u8')
  bind_streampeer_get_utf8_string = api_core.godot_method_bind_get_method('StreamPeer', 'get_utf8_string')
  bind_streampeer_get_var = api_core.godot_method_bind_get_method('StreamPeer', 'get_var')
  bind_streampeer_is_big_endian_enabled = api_core.godot_method_bind_get_method('StreamPeer', 'is_big_endian_enabled')
  bind_streampeer_put_16 = api_core.godot_method_bind_get_method('StreamPeer', 'put_16')
  bind_streampeer_put_32 = api_core.godot_method_bind_get_method('StreamPeer', 'put_32')
  bind_streampeer_put_64 = api_core.godot_method_bind_get_method('StreamPeer', 'put_64')
  bind_streampeer_put_8 = api_core.godot_method_bind_get_method('StreamPeer', 'put_8')
  bind_streampeer_put_data = api_core.godot_method_bind_get_method('StreamPeer', 'put_data')
  bind_streampeer_put_double = api_core.godot_method_bind_get_method('StreamPeer', 'put_double')
  bind_streampeer_put_float = api_core.godot_method_bind_get_method('StreamPeer', 'put_float')
  bind_streampeer_put_partial_data = api_core.godot_method_bind_get_method('StreamPeer', 'put_partial_data')
  bind_streampeer_put_string = api_core.godot_method_bind_get_method('StreamPeer', 'put_string')
  bind_streampeer_put_u16 = api_core.godot_method_bind_get_method('StreamPeer', 'put_u16')
  bind_streampeer_put_u32 = api_core.godot_method_bind_get_method('StreamPeer', 'put_u32')
  bind_streampeer_put_u64 = api_core.godot_method_bind_get_method('StreamPeer', 'put_u64')
  bind_streampeer_put_u8 = api_core.godot_method_bind_get_method('StreamPeer', 'put_u8')
  bind_streampeer_put_utf8_string = api_core.godot_method_bind_get_method('StreamPeer', 'put_utf8_string')
  bind_streampeer_put_var = api_core.godot_method_bind_get_method('StreamPeer', 'put_var')
  bind_streampeer_set_big_endian = api_core.godot_method_bind_get_method('StreamPeer', 'set_big_endian')

############################Generated class###################################
cdef class StreamPeer(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StreamPeer")())
##################################Generated Properties#########################################
  @property
  def big_endian(self): 
    return self.get_big_endian()
  @big_endian.setter 
  def big_endian(self,value): 
    self.set_big_endian(value)

##################################Generated Methods#########################################
  def  get_16(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_16,self.godot_owner,[NULL,],&ret)
  def  get_32(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_32,self.godot_owner,[NULL,],&ret)
  def  get_64(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_64,self.godot_owner,[NULL,],&ret)
  def  get_8(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_8,self.godot_owner,[NULL,],&ret)
  def  get_available_bytes(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_available_bytes,self.godot_owner,[NULL,],&ret)
  def  get_data(self, bytes):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_data,self.godot_owner,[NULL,],&ret)
  def  get_double(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_double,self.godot_owner,[NULL,],&ret)
  def  get_float(self):
    cdef godot_object *_owner = self.godot_owner
    cdef float ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_float,self.godot_owner,[NULL,],&ret)
  def  get_partial_data(self, bytes):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_partial_data,self.godot_owner,[NULL,],&ret)
  def  get_string(self, bytes):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_string,self.godot_owner,[NULL,],&ret)
  def  get_u16(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u16,self.godot_owner,[NULL,],&ret)
  def  get_u32(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u32,self.godot_owner,[NULL,],&ret)
  def  get_u64(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u64,self.godot_owner,[NULL,],&ret)
  def  get_u8(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u8,self.godot_owner,[NULL,],&ret)
  def  get_utf8_string(self, bytes):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_utf8_string,self.godot_owner,[NULL,],&ret)
  def  get_var(self, allow_objects):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_var,self.godot_owner,[NULL,],&ret)
  def  is_big_endian_enabled(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_is_big_endian_enabled,self.godot_owner,[NULL,],&ret)
  def  put_16(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_16,self.godot_owner,[NULL,],NULL)
  def  put_32(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_32,self.godot_owner,[NULL,],NULL)
  def  put_64(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_64,self.godot_owner,[NULL,],NULL)
  def  put_8(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_8,self.godot_owner,[NULL,],NULL)
  def  put_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    cdef Error ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_data,self.godot_owner,[NULL,],&ret)
  def  put_double(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_double,self.godot_owner,[NULL,],NULL)
  def  put_float(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_float,self.godot_owner,[NULL,],NULL)
  def  put_partial_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_partial_data,self.godot_owner,[NULL,],&ret)
  def  put_string(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_string,self.godot_owner,[NULL,],NULL)
  def  put_u16(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u16,self.godot_owner,[NULL,],NULL)
  def  put_u32(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u32,self.godot_owner,[NULL,],NULL)
  def  put_u64(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u64,self.godot_owner,[NULL,],NULL)
  def  put_u8(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u8,self.godot_owner,[NULL,],NULL)
  def  put_utf8_string(self, value):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_utf8_string,self.godot_owner,[NULL,],NULL)
  def  put_var(self, valuefull_objects):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_var,self.godot_owner,[NULL,],NULL)
  def  set_big_endian(self, enable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_streampeer_set_big_endian,self.godot_owner,[NULL,],NULL)
