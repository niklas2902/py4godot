
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
cimport classes.PacketPeer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_packetpeerstream_get_input_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_get_output_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_get_stream_peer
cdef godot_method_bind *bind_packetpeerstream_set_input_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_set_output_buffer_max_size
cdef godot_method_bind *bind_packetpeerstream_set_stream_peer
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_packetpeerstream_get_input_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'get_input_buffer_max_size')
  bind_packetpeerstream_get_output_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'get_output_buffer_max_size')
  bind_packetpeerstream_get_stream_peer = api_core.godot_method_bind_get_method('PacketPeerStream', 'get_stream_peer')
  bind_packetpeerstream_set_input_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'set_input_buffer_max_size')
  bind_packetpeerstream_set_output_buffer_max_size = api_core.godot_method_bind_get_method('PacketPeerStream', 'set_output_buffer_max_size')
  bind_packetpeerstream_set_stream_peer = api_core.godot_method_bind_get_method('PacketPeerStream', 'set_stream_peer')

############################Generated class###################################
cdef class PacketPeerStream(classes.PacketPeer.PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("PacketPeerStream")())
##################################Generated Properties#########################################
  @property
  def input_buffer_max_size(self): 
    return self.get_input_buffer_max_size()
  @input_buffer_max_size.setter 
  def input_buffer_max_size(self,value): 
    self.set_input_buffer_max_size(value)
  @property
  def output_buffer_max_size(self): 
    return self.get_output_buffer_max_size()
  @output_buffer_max_size.setter 
  def output_buffer_max_size(self,value): 
    self.set_output_buffer_max_size(value)
  @property
  def stream_peer(self): 
    return self.get_stream_peer()
  @stream_peer.setter 
  def stream_peer(self,value): 
    self.set_stream_peer(value)

##################################Generated Methods#########################################
  def  get_input_buffer_max_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_get_input_buffer_max_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_output_buffer_max_size(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_get_output_buffer_max_size,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_stream_peer(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_get_stream_peer,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  set_input_buffer_max_size(self,  int max_size_bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max_size_bytes
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_set_input_buffer_max_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_output_buffer_max_size(self,  int max_size_bytes):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &max_size_bytes
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_set_output_buffer_max_size,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_stream_peer(self,  classes.StreamPeer.StreamPeer peer):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = peer.godot_owner
    api_core.godot_method_bind_ptrcall(bind_packetpeerstream_set_stream_peer,self.godot_owner,args,NULL)
    hello('hallo2')
