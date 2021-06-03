
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

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_streampeertcp_connect_to_host
cdef godot_method_bind *bind_streampeertcp_disconnect_from_host
cdef godot_method_bind *bind_streampeertcp_get_connected_host
cdef godot_method_bind *bind_streampeertcp_get_connected_port
cdef godot_method_bind *bind_streampeertcp_get_status
cdef godot_method_bind *bind_streampeertcp_is_connected_to_host
cdef godot_method_bind *bind_streampeertcp_set_no_delay
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_streampeertcp_connect_to_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'connect_to_host')
  bind_streampeertcp_disconnect_from_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'disconnect_from_host')
  bind_streampeertcp_get_connected_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'get_connected_host')
  bind_streampeertcp_get_connected_port = api_core.godot_method_bind_get_method('StreamPeerTCP', 'get_connected_port')
  bind_streampeertcp_get_status = api_core.godot_method_bind_get_method('StreamPeerTCP', 'get_status')
  bind_streampeertcp_is_connected_to_host = api_core.godot_method_bind_get_method('StreamPeerTCP', 'is_connected_to_host')
  bind_streampeertcp_set_no_delay = api_core.godot_method_bind_get_method('StreamPeerTCP', 'set_no_delay')

############################Generated class###################################
cdef class StreamPeerTCP(classes.StreamPeer.StreamPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("StreamPeerTCP")())
##################################Generated Methods#########################################
  def  connect_to_host(self,  String host,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &host._native
    args[1] = &port
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_connect_to_host,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  disconnect_from_host(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_streampeertcp_disconnect_from_host,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get_connected_host(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeertcp_get_connected_host,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_connected_port(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeertcp_get_connected_port,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_status(self):
    cdef godot_object *_owner = self.godot_owner

    cdef Status* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeertcp_get_status,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_connected_to_host(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_streampeertcp_is_connected_to_host,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  set_no_delay(self,  bool enabled):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enabled
    api_core.godot_method_bind_ptrcall(bind_streampeertcp_set_no_delay,self.godot_owner,args,NULL)
    hello('hallo2')
