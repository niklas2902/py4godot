from classes.Reference cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_upnpdevice_add_port_mapping
cdef godot_method_bind *bind_upnpdevice_delete_port_mapping
cdef godot_method_bind *bind_upnpdevice_get_description_url
cdef godot_method_bind *bind_upnpdevice_get_igd_control_url
cdef godot_method_bind *bind_upnpdevice_get_igd_our_addr
cdef godot_method_bind *bind_upnpdevice_get_igd_service_type
cdef godot_method_bind *bind_upnpdevice_get_igd_status
cdef godot_method_bind *bind_upnpdevice_get_service_type
cdef godot_method_bind *bind_upnpdevice_is_valid_gateway
cdef godot_method_bind *bind_upnpdevice_query_external_address
cdef godot_method_bind *bind_upnpdevice_set_description_url
cdef godot_method_bind *bind_upnpdevice_set_igd_control_url
cdef godot_method_bind *bind_upnpdevice_set_igd_our_addr
cdef godot_method_bind *bind_upnpdevice_set_igd_service_type
cdef godot_method_bind *bind_upnpdevice_set_igd_status
cdef godot_method_bind *bind_upnpdevice_set_service_type
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_upnpdevice_add_port_mapping = api_core.godot_method_bind_get_method('UPNPDevice', 'add_port_mapping')
  bind_upnpdevice_delete_port_mapping = api_core.godot_method_bind_get_method('UPNPDevice', 'delete_port_mapping')
  bind_upnpdevice_get_description_url = api_core.godot_method_bind_get_method('UPNPDevice', 'get_description_url')
  bind_upnpdevice_get_igd_control_url = api_core.godot_method_bind_get_method('UPNPDevice', 'get_igd_control_url')
  bind_upnpdevice_get_igd_our_addr = api_core.godot_method_bind_get_method('UPNPDevice', 'get_igd_our_addr')
  bind_upnpdevice_get_igd_service_type = api_core.godot_method_bind_get_method('UPNPDevice', 'get_igd_service_type')
  bind_upnpdevice_get_igd_status = api_core.godot_method_bind_get_method('UPNPDevice', 'get_igd_status')
  bind_upnpdevice_get_service_type = api_core.godot_method_bind_get_method('UPNPDevice', 'get_service_type')
  bind_upnpdevice_is_valid_gateway = api_core.godot_method_bind_get_method('UPNPDevice', 'is_valid_gateway')
  bind_upnpdevice_query_external_address = api_core.godot_method_bind_get_method('UPNPDevice', 'query_external_address')
  bind_upnpdevice_set_description_url = api_core.godot_method_bind_get_method('UPNPDevice', 'set_description_url')
  bind_upnpdevice_set_igd_control_url = api_core.godot_method_bind_get_method('UPNPDevice', 'set_igd_control_url')
  bind_upnpdevice_set_igd_our_addr = api_core.godot_method_bind_get_method('UPNPDevice', 'set_igd_our_addr')
  bind_upnpdevice_set_igd_service_type = api_core.godot_method_bind_get_method('UPNPDevice', 'set_igd_service_type')
  bind_upnpdevice_set_igd_status = api_core.godot_method_bind_get_method('UPNPDevice', 'set_igd_status')
  bind_upnpdevice_set_service_type = api_core.godot_method_bind_get_method('UPNPDevice', 'set_service_type')

############################Generated class###################################
cdef class UPNPDevice(Reference):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("UPNPDevice")())
##################################Generated Properties#########################################
  @property
  def description_url(self): 
    return self.get_description_url()
  @description_url.setter 
  def description_url(self,value): 
    self.set_description_url(value)
  @property
  def igd_control_url(self): 
    return self.get_igd_control_url()
  @igd_control_url.setter 
  def igd_control_url(self,value): 
    self.set_igd_control_url(value)
  @property
  def igd_our_addr(self): 
    return self.get_igd_our_addr()
  @igd_our_addr.setter 
  def igd_our_addr(self,value): 
    self.set_igd_our_addr(value)
  @property
  def igd_service_type(self): 
    return self.get_igd_service_type()
  @igd_service_type.setter 
  def igd_service_type(self,value): 
    self.set_igd_service_type(value)
  @property
  def igd_status(self): 
    return self.get_igd_status()
  @igd_status.setter 
  def igd_status(self,value): 
    self.set_igd_status(value)
  @property
  def service_type(self): 
    return self.get_service_type()
  @service_type.setter 
  def service_type(self,value): 
    self.set_service_type(value)

##################################Generated Methods#########################################
  def  add_port_mapping(self, portport_internaldescprotoduration):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_add_port_mapping,self.godot_owner,[NULL,],&ret)
  def  delete_port_mapping(self, portproto):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_delete_port_mapping,self.godot_owner,[NULL,],&ret)
  def  get_description_url(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_get_description_url,self.godot_owner,[NULL,],&ret)
  def  get_igd_control_url(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_get_igd_control_url,self.godot_owner,[NULL,],&ret)
  def  get_igd_our_addr(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_get_igd_our_addr,self.godot_owner,[NULL,],&ret)
  def  get_igd_service_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_get_igd_service_type,self.godot_owner,[NULL,],&ret)
  def  get_igd_status(self):
    cdef godot_object *_owner = self.godot_owner
    cdef UPNPDevice::IGDStatus ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_get_igd_status,self.godot_owner,[NULL,],&ret)
  def  get_service_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_get_service_type,self.godot_owner,[NULL,],&ret)
  def  is_valid_gateway(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_is_valid_gateway,self.godot_owner,[NULL,],&ret)
  def  query_external_address(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_query_external_address,self.godot_owner,[NULL,],&ret)
  def  set_description_url(self, url):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_set_description_url,self.godot_owner,[NULL,],NULL)
  def  set_igd_control_url(self, url):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_set_igd_control_url,self.godot_owner,[NULL,],NULL)
  def  set_igd_our_addr(self, addr):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_set_igd_our_addr,self.godot_owner,[NULL,],NULL)
  def  set_igd_service_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_set_igd_service_type,self.godot_owner,[NULL,],NULL)
  def  set_igd_status(self, status):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_set_igd_status,self.godot_owner,[NULL,],NULL)
  def  set_service_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_upnpdevice_set_service_type,self.godot_owner,[NULL,],NULL)
