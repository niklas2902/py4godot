
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
cdef godot_method_bind *bind_packetpeer_get_available_packet_count
cdef godot_method_bind *bind_packetpeer_get_encode_buffer_max_size
cdef godot_method_bind *bind_packetpeer_get_packet
cdef godot_method_bind *bind_packetpeer_get_packet_error
cdef godot_method_bind *bind_packetpeer_get_var
cdef godot_method_bind *bind_packetpeer_is_object_decoding_allowed
cdef godot_method_bind *bind_packetpeer_put_packet
cdef godot_method_bind *bind_packetpeer_put_var
cdef godot_method_bind *bind_packetpeer_set_allow_object_decoding
cdef godot_method_bind *bind_packetpeer_set_encode_buffer_max_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packetpeer_get_available_packet_count = api_core.godot_method_bind_get_method('PacketPeer', 'get_available_packet_count')
  bind_packetpeer_get_encode_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeer', 'get_encode_buffer_max_size')
  bind_packetpeer_get_packet = api_core.godot_method_bind_get_method('PacketPeer', 'get_packet')
  bind_packetpeer_get_packet_error = api_core.godot_method_bind_get_method('PacketPeer', 'get_packet_error')
  bind_packetpeer_get_var = api_core.godot_method_bind_get_method('PacketPeer', 'get_var')
  bind_packetpeer_is_object_decoding_allowed = api_core.godot_method_bind_get_method('PacketPeer', 'is_object_decoding_allowed')
  bind_packetpeer_put_packet = api_core.godot_method_bind_get_method('PacketPeer', 'put_packet')
  bind_packetpeer_put_var = api_core.godot_method_bind_get_method('PacketPeer', 'put_var')
  bind_packetpeer_set_allow_object_decoding = api_core.godot_method_bind_get_method('PacketPeer', 'set_allow_object_decoding')
  bind_packetpeer_set_encode_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeer', 'set_encode_buffer_max_size')

############################Generated class###################################
cdef class PacketPeer(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PacketPeer")())
##################################Generated Properties#########################################
  @property
  def allow_object_decoding(self): 
    return self.get_allow_object_decoding()
  @allow_object_decoding.setter 
  def allow_object_decoding(self,value): 
    self.set_allow_object_decoding(value)
  @property
  def encode_buffer_max_size(self): 
    return self.get_encode_buffer_max_size()
  @encode_buffer_max_size.setter 
  def encode_buffer_max_size(self,value): 
    self.set_encode_buffer_max_size(value)

##################################Generated Methods#########################################
  def  get_available_packet_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_available_packet_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_encode_buffer_max_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_encode_buffer_max_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_packet(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_packet,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_packet_error(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_packet_error,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_var(self,  bool allow_objects):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &allow_objects
    api_core.godot_method_bind_ptrcall(bind_packetpeer_get_var,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  is_object_decoding_allowed(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeer_is_object_decoding_allowed,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  put_packet(self,  PoolByteArray buffer):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[1]

    args[0] = &buffer._native
    api_core.godot_method_bind_ptrcall(bind_packetpeer_put_packet,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  put_var(self,  Variant var,  bool full_objects):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &var._native
    args[1] = &full_objects
    api_core.godot_method_bind_ptrcall(bind_packetpeer_put_var,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_allow_object_decoding(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_packetpeer_set_allow_object_decoding,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_encode_buffer_max_size(self,  int max_size):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max_size
    api_core.godot_method_bind_ptrcall(bind_packetpeer_set_encode_buffer_max_size,self.godot_owner,args,NULL)
    hello('hallo2')
