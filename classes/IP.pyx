from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_ip_clear_cache
cdef godot_method_bind *bind_ip_erase_resolve_item
cdef godot_method_bind *bind_ip_get_local_addresses
cdef godot_method_bind *bind_ip_get_local_interfaces
cdef godot_method_bind *bind_ip_get_resolve_item_address
cdef godot_method_bind *bind_ip_get_resolve_item_status
cdef godot_method_bind *bind_ip_resolve_hostname
cdef godot_method_bind *bind_ip_resolve_hostname_queue_item
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_ip_clear_cache = api_core.godot_method_bind_get_method('IP', 'clear_cache')
  bind_ip_erase_resolve_item = api_core.godot_method_bind_get_method('IP', 'erase_resolve_item')
  bind_ip_get_local_addresses = api_core.godot_method_bind_get_method('IP', 'get_local_addresses')
  bind_ip_get_local_interfaces = api_core.godot_method_bind_get_method('IP', 'get_local_interfaces')
  bind_ip_get_resolve_item_address = api_core.godot_method_bind_get_method('IP', 'get_resolve_item_address')
  bind_ip_get_resolve_item_status = api_core.godot_method_bind_get_method('IP', 'get_resolve_item_status')
  bind_ip_resolve_hostname = api_core.godot_method_bind_get_method('IP', 'resolve_hostname')
  bind_ip_resolve_hostname_queue_item = api_core.godot_method_bind_get_method('IP', 'resolve_hostname_queue_item')

############################Generated class###################################
cdef class IP(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("IP")())
##################################Generated Methods#########################################
  def  clear_cache(self, hostname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ip_clear_cache,self.godot_owner,[NULL,],NULL)
  def  erase_resolve_item(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_ip_erase_resolve_item,self.godot_owner,[NULL,],NULL)
  def  get_local_addresses(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_ip_get_local_addresses,self.godot_owner,[NULL,],&ret)
  def  get_local_interfaces(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_ip_get_local_interfaces,self.godot_owner,[NULL,],&ret)
  def  get_resolve_item_address(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_ip_get_resolve_item_address,self.godot_owner,[NULL,],&ret)
  def  get_resolve_item_status(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef IP::ResolverStatus ret
    api_core.godot_method_bind_ptrcall(bind_ip_get_resolve_item_status,self.godot_owner,[NULL,],&ret)
  def  resolve_hostname(self, hostip_type):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_ip_resolve_hostname,self.godot_owner,[NULL,],&ret)
  def  resolve_hostname_queue_item(self, hostip_type):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_ip_resolve_hostname_queue_item,self.godot_owner,[NULL,],&ret)
