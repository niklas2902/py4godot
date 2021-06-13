
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
cimport classes.NetworkedMultiplayerPeer 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_websocketmultiplayerpeer_get_peer
cdef godot_method_bind *bind_websocketmultiplayerpeer_set_buffers
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_websocketmultiplayerpeer_get_peer = api_core.godot_method_bind_get_method('WebSocketMultiplayerPeer', 'get_peer')
  bind_websocketmultiplayerpeer_set_buffers = api_core.godot_method_bind_get_method('WebSocketMultiplayerPeer', 'set_buffers')

############################Generated class###################################
cdef class WebSocketMultiplayerPeer(classes.NetworkedMultiplayerPeer.NetworkedMultiplayerPeer):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("WebSocketMultiplayerPeer")())
##################################Generated Methods#########################################
  def  get_peer(self,  int peer_id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &peer_id
    api_core.godot_method_bind_ptrcall(bind_websocketmultiplayerpeer_get_peer,self.godot_owner,args,&ret)
    hello('hallo2')
  def  set_buffers(self,  int input_buffer_size_kb,  int input_max_packets,  int output_buffer_size_kb,  int output_max_packets):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[4]

    args[0] = &input_buffer_size_kb
    args[1] = &input_max_packets
    args[2] = &output_buffer_size_kb
    args[3] = &output_max_packets
    api_core.godot_method_bind_ptrcall(bind_websocketmultiplayerpeer_set_buffers,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

