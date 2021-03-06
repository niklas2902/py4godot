from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class UPNP(Reference):
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
  def  add_device(self, device):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_add_device,self.godot_owner,[NULL,],NULL)
  def  add_port_mapping(self, portport_internaldescprotoduration):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_upnp_add_port_mapping,self.godot_owner,[NULL,],&ret)
  def  clear_devices(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_clear_devices,self.godot_owner,[NULL,],NULL)
  def  delete_port_mapping(self, portproto):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_upnp_delete_port_mapping,self.godot_owner,[NULL,],&ret)
  def  discover(self, timeoutttldevice_filter):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_upnp_discover,self.godot_owner,[NULL,],&ret)
  def  get_device(self, index):
    cdef godot_object *_owner = self.godot_owner
    cdef UPNPDevice ret
    api_core.godot_method_bind_ptrcall(bind_upnp_get_device,self.godot_owner,[NULL,],&ret)
  def  get_device_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_upnp_get_device_count,self.godot_owner,[NULL,],&ret)
  def  get_discover_local_port(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_upnp_get_discover_local_port,self.godot_owner,[NULL,],&ret)
  def  get_discover_multicast_if(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnp_get_discover_multicast_if,self.godot_owner,[NULL,],&ret)
  def  get_gateway(self):
    cdef godot_object *_owner = self.godot_owner
    cdef UPNPDevice ret
    api_core.godot_method_bind_ptrcall(bind_upnp_get_gateway,self.godot_owner,[NULL,],&ret)
  def  is_discover_ipv6(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_upnp_is_discover_ipv6,self.godot_owner,[NULL,],&ret)
  def  query_external_address(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnp_query_external_address,self.godot_owner,[NULL,],&ret)
  def  remove_device(self, index):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_remove_device,self.godot_owner,[NULL,],NULL)
  def  set_device(self, indexdevice):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_set_device,self.godot_owner,[NULL,],NULL)
  def  set_discover_ipv6(self, ipv6):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_set_discover_ipv6,self.godot_owner,[NULL,],NULL)
  def  set_discover_local_port(self, port):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_set_discover_local_port,self.godot_owner,[NULL,],NULL)
  def  set_discover_multicast_if(self, m_if):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnp_set_discover_multicast_if,self.godot_owner,[NULL,],NULL)
