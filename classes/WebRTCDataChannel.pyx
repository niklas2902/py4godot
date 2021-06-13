
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
cimport classes.PacketPeer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_webrtcdatachannel_close
cdef godot_method_bind *bind_webrtcdatachannel_get_id
cdef godot_method_bind *bind_webrtcdatachannel_get_label
cdef godot_method_bind *bind_webrtcdatachannel_get_max_packet_life_time
cdef godot_method_bind *bind_webrtcdatachannel_get_max_retransmits
cdef godot_method_bind *bind_webrtcdatachannel_get_protocol
cdef godot_method_bind *bind_webrtcdatachannel_get_ready_state
cdef godot_method_bind *bind_webrtcdatachannel_get_write_mode
cdef godot_method_bind *bind_webrtcdatachannel_is_negotiated
cdef godot_method_bind *bind_webrtcdatachannel_is_ordered
cdef godot_method_bind *bind_webrtcdatachannel_poll
cdef godot_method_bind *bind_webrtcdatachannel_set_write_mode
cdef godot_method_bind *bind_webrtcdatachannel_was_string_packet
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_webrtcdatachannel_close = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'close')
  bind_webrtcdatachannel_get_id = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'get_id')
  bind_webrtcdatachannel_get_label = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'get_label')
  bind_webrtcdatachannel_get_max_packet_life_time = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'get_max_packet_life_time')
  bind_webrtcdatachannel_get_max_retransmits = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'get_max_retransmits')
  bind_webrtcdatachannel_get_protocol = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'get_protocol')
  bind_webrtcdatachannel_get_ready_state = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'get_ready_state')
  bind_webrtcdatachannel_get_write_mode = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'get_write_mode')
  bind_webrtcdatachannel_is_negotiated = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'is_negotiated')
  bind_webrtcdatachannel_is_ordered = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'is_ordered')
  bind_webrtcdatachannel_poll = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'poll')
  bind_webrtcdatachannel_set_write_mode = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'set_write_mode')
  bind_webrtcdatachannel_was_string_packet = api_core.godot_method_bind_get_method('WebRTCDataChannel', 'was_string_packet')

############################Generated class###################################
cdef class WebRTCDataChannel(classes.PacketPeer.PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebRTCDataChannel")())
##################################Generated Properties#########################################
  @property
  def write_mode(self): 
    return self.get_write_mode()
  @write_mode.setter 
  def write_mode(self,value): 
    self.set_write_mode(value)

##################################Generated Methods#########################################
  def  close(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_close,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_get_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_label(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_get_label,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_max_packet_life_time(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_get_max_packet_life_time,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_max_retransmits(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_get_max_retransmits,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_protocol(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_get_protocol,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_ready_state(self):
    cdef godot_object *_owner = self.godot_owner

    cdef WebRTCDataChannel_ChannelState* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_get_ready_state,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_write_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef WebRTCDataChannel_WriteMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_get_write_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_negotiated(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_is_negotiated,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_ordered(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_is_ordered,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  poll(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_poll,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_write_mode(self,  int write_mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &write_mode
    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_set_write_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  was_string_packet(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_webrtcdatachannel_was_string_packet,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

