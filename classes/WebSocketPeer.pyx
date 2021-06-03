
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
cimport classes.PacketPeer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_websocketpeer_close
cdef godot_method_bind *bind_websocketpeer_get_connected_host
cdef godot_method_bind *bind_websocketpeer_get_connected_port
cdef godot_method_bind *bind_websocketpeer_get_write_mode
cdef godot_method_bind *bind_websocketpeer_is_connected_to_host
cdef godot_method_bind *bind_websocketpeer_set_no_delay
cdef godot_method_bind *bind_websocketpeer_set_write_mode
cdef godot_method_bind *bind_websocketpeer_was_string_packet
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_websocketpeer_close = api_core.godot_method_bind_get_method('WebSocketPeer', 'close')
  bind_websocketpeer_get_connected_host = api_core.godot_method_bind_get_method('WebSocketPeer', 'get_connected_host')
  bind_websocketpeer_get_connected_port = api_core.godot_method_bind_get_method('WebSocketPeer', 'get_connected_port')
  bind_websocketpeer_get_write_mode = api_core.godot_method_bind_get_method('WebSocketPeer', 'get_write_mode')
  bind_websocketpeer_is_connected_to_host = api_core.godot_method_bind_get_method('WebSocketPeer', 'is_connected_to_host')
  bind_websocketpeer_set_no_delay = api_core.godot_method_bind_get_method('WebSocketPeer', 'set_no_delay')
  bind_websocketpeer_set_write_mode = api_core.godot_method_bind_get_method('WebSocketPeer', 'set_write_mode')
  bind_websocketpeer_was_string_packet = api_core.godot_method_bind_get_method('WebSocketPeer', 'was_string_packet')

############################Generated class###################################
cdef class WebSocketPeer(classes.PacketPeer.PacketPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebSocketPeer")())
##################################Generated Methods#########################################
  def  close(self,  int code,  String reason):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &code
    args[1] = &reason._native
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_close,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_connected_host(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketpeer_get_connected_host,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_connected_port(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketpeer_get_connected_port,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_write_mode(self):
    cdef godot_object *_owner = self.godot_owner

    cdef WriteMode* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketpeer_get_write_mode,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_connected_to_host(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketpeer_is_connected_to_host,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_no_delay(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_set_no_delay,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_write_mode(self,  int mode):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &mode
    api_core.godot_method_bind_ptrcall(bind_websocketpeer_set_write_mode,self.godot_owner,args,NULL)
    hello('hallo2')
  def  was_string_packet(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_websocketpeer_was_string_packet,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

