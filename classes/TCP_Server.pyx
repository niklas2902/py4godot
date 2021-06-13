
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
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_tcp_server_is_connection_available
cdef godot_method_bind *bind_tcp_server_is_listening
cdef godot_method_bind *bind_tcp_server_listen
cdef godot_method_bind *bind_tcp_server_stop
cdef godot_method_bind *bind_tcp_server_take_connection
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_tcp_server_is_connection_available = api_core.godot_method_bind_get_method('TCP_Server', 'is_connection_available')
  bind_tcp_server_is_listening = api_core.godot_method_bind_get_method('TCP_Server', 'is_listening')
  bind_tcp_server_listen = api_core.godot_method_bind_get_method('TCP_Server', 'listen')
  bind_tcp_server_stop = api_core.godot_method_bind_get_method('TCP_Server', 'stop')
  bind_tcp_server_take_connection = api_core.godot_method_bind_get_method('TCP_Server', 'take_connection')

############################Generated class###################################
cdef class TCP_Server(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("TCP_Server")())
##################################Generated Methods#########################################
  def  is_connection_available(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tcp_server_is_connection_available,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_listening(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tcp_server_is_listening,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  listen(self,  int port,  String bind_address):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[2]

    args[0] = &port
    args[1] = &bind_address._native
    api_core.godot_method_bind_ptrcall(bind_tcp_server_listen,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  stop(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_tcp_server_stop,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  take_connection(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_tcp_server_take_connection,self.godot_owner,NULL,&ret)
    hello('hallo2')
