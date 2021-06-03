
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
cimport classes.Reference 

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
cdef class StreamPeer(classes.Reference.Reference):
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

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_16,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_32(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_32,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_64(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_64,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_8(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_8,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_available_bytes(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_available_bytes,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_data(self,  int bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &bytes
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_data,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_double(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_double,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_float(self):
    cdef godot_object *_owner = self.godot_owner

    cdef float* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_float,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_partial_data(self,  int bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &bytes
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_partial_data,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_string(self,  int bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &bytes
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_u16(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u16,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_u32(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u32,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_u64(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u64,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_u8(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_get_u8,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_utf8_string(self,  int bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &bytes
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_utf8_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_var(self,  bool allow_objects):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &allow_objects
    api_core.godot_method_bind_ptrcall(bind_streampeer_get_var,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  is_big_endian_enabled(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeer_is_big_endian_enabled,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  put_16(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_16,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_32(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_32,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_64(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_64,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_8(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_8,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_data(self,  PoolByteArray data):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_data,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  put_double(self,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_double,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_float(self,  float value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_float,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_partial_data(self,  PoolByteArray data):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_partial_data,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  put_string(self,  String value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value._native
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_string,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_u16(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u16,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_u32(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u32,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_u64(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u64,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_u8(self,  int value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_u8,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_utf8_string(self,  String value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &value._native
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_utf8_string,self.godot_owner,args,NULL)
    hello('hallo2')
  def  put_var(self,  Variant value,  bool full_objects):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &value._native
    args[1] = &full_objects
    api_core.godot_method_bind_ptrcall(bind_streampeer_put_var,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_big_endian(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_streampeer_set_big_endian,self.godot_owner,args,NULL)
    hello('hallo2')
