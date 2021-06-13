
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
cimport classes.UPNPDevice
cimport classes.UPNPDevice
cimport classes.Reference 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_upnp_add_device
cdef godot_method_bind *bind_upnp_add_port_mapping
cdef godot_method_bind *bind_upnp_clear_devices
cdef godot_method_bind *bind_upnp_delete_port_mapping
cdef godot_method_bind *bind_upnp_discover
cdef godot_method_bind *bind_upnp_get_device
cdef godot_method_bind *bind_upnp_get_device_count
cdef godot_method_bind *bind_upnp_get_discover_local_port
cdef godot_method_bind *bind_upnp_get_discover_multicast_if
cdef godot_method_bind *bind_upnp_get_gateway
cdef godot_method_bind *bind_upnp_is_discover_ipv6
cdef godot_method_bind *bind_upnp_query_external_address
cdef godot_method_bind *bind_upnp_remove_device
cdef godot_method_bind *bind_upnp_set_device
cdef godot_method_bind *bind_upnp_set_discover_ipv6
cdef godot_method_bind *bind_upnp_set_discover_local_port
cdef godot_method_bind *bind_upnp_set_discover_multicast_if
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_upnp_add_device = api_core.godot_method_bind_get_method('UPNP', 'add_device')
  bind_upnp_add_port_mapping = api_core.godot_method_bind_get_method('UPNP', 'add_port_mapping')
  bind_upnp_clear_devices = api_core.godot_method_bind_get_method('UPNP', 'clear_devices')
  bind_upnp_delete_port_mapping = api_core.godot_method_bind_get_method('UPNP', 'delete_port_mapping')
  bind_upnp_discover = api_core.godot_method_bind_get_method('UPNP', 'discover')
  bind_upnp_get_device = api_core.godot_method_bind_get_method('UPNP', 'get_device')
  bind_upnp_get_device_count = api_core.godot_method_bind_get_method('UPNP', 'get_device_count')
  bind_upnp_get_discover_local_port = api_core.godot_method_bind_get_method('UPNP', 'get_discover_local_port')
  bind_upnp_get_discover_multicast_if = api_core.godot_method_bind_get_method('UPNP', 'get_discover_multicast_if')
  bind_upnp_get_gateway = api_core.godot_method_bind_get_method('UPNP', 'get_gateway')
  bind_upnp_is_discover_ipv6 = api_core.godot_method_bind_get_method('UPNP', 'is_discover_ipv6')
  bind_upnp_query_external_address = api_core.godot_method_bind_get_method('UPNP', 'query_external_address')
  bind_upnp_remove_device = api_core.godot_method_bind_get_method('UPNP', 'remove_device')
  bind_upnp_set_device = api_core.godot_method_bind_get_method('UPNP', 'set_device')
  bind_upnp_set_discover_ipv6 = api_core.godot_method_bind_get_method('UPNP', 'set_discover_ipv6')
  bind_upnp_set_discover_local_port = api_core.godot_method_bind_get_method('UPNP', 'set_discover_local_port')
  bind_upnp_set_discover_multicast_if = api_core.godot_method_bind_get_method('UPNP', 'set_discover_multicast_if')

############################Generated class###################################
cdef class UPNP(classes.Reference.Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("UPNP")())
##################################Generated Properties#########################################
  @property
  def discover_ipv6(self): 
    return self.get_discover_ipv6()
  @discover_ipv6.setter 
  def discover_ipv6(self,value): 
    self.set_discover_ipv6(value)
  @property
  def discover_local_port(self): 
    return self.get_discover_local_port()
  @discover_local_port.setter 
  def discover_local_port(self,value): 
    self.set_discover_local_port(value)
  @property
  def discover_multicast_if(self): 
    return self.get_discover_multicast_if()
  @discover_multicast_if.setter 
  def discover_multicast_if(self,value): 
    self.set_discover_multicast_if(value)

##################################Generated Methods#########################################
  def  add_device(self,  classes.UPNPDevice.UPNPDevice device):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = device.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_add_device,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_port_mapping(self,  int port,  int port_internal,  String desc,  String proto,  int duration):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[5]

    args[0] = &port
    args[1] = &port_internal
    args[2] = &desc._native
    args[3] = &proto._native
    args[4] = &duration
    api_core.godot_method_bind_ptrcall(bind_upnp_add_port_mapping,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  clear_devices(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_upnp_clear_devices,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  delete_port_mapping(self,  int port,  String proto):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &port
    args[1] = &proto._native
    api_core.godot_method_bind_ptrcall(bind_upnp_delete_port_mapping,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  discover(self,  int timeout,  int ttl,  String device_filter):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[3]

    args[0] = &timeout
    args[1] = &ttl
    args[2] = &device_filter._native
    api_core.godot_method_bind_ptrcall(bind_upnp_discover,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_device(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_upnp_get_device,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_device_count(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_upnp_get_device_count,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_discover_local_port(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_upnp_get_discover_local_port,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_discover_multicast_if(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_upnp_get_discover_multicast_if,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_gateway(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_upnp_get_gateway,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  is_discover_ipv6(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_upnp_is_discover_ipv6,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  query_external_address(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_upnp_query_external_address,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  remove_device(self,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &index
    api_core.godot_method_bind_ptrcall(bind_upnp_remove_device,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_device(self,  int index,  classes.UPNPDevice.UPNPDevice device):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &index
    args[1] = device.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_set_device,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_discover_ipv6(self,  bool ipv6):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &ipv6
    api_core.godot_method_bind_ptrcall(bind_upnp_set_discover_ipv6,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_discover_local_port(self,  int port):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &port
    api_core.godot_method_bind_ptrcall(bind_upnp_set_discover_local_port,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_discover_multicast_if(self,  String m_if):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &m_if._native
    api_core.godot_method_bind_ptrcall(bind_upnp_set_discover_multicast_if,self.godot_owner,args,NULL)
    hello('hallo2')
