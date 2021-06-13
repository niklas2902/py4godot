
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
cimport classes.Object 

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
cdef class IP(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("IP")())
##################################Generated Methods#########################################
  def  clear_cache(self,  String hostname):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &hostname._native
    api_core.godot_method_bind_ptrcall(bind_ip_clear_cache,self.godot_owner,args,NULL)
    hello('hallo2')
  def  erase_resolve_item(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_ip_erase_resolve_item,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_local_addresses(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_ip_get_local_addresses,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_local_interfaces(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_ip_get_local_interfaces,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_resolve_item_address(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_ip_get_resolve_item_address,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_resolve_item_status(self,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef IP_ResolverStatus* ret = NULL;

    cdef void *args[1]

    args[0] = &id
    api_core.godot_method_bind_ptrcall(bind_ip_get_resolve_item_status,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  resolve_hostname(self,  String host,  int ip_type):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &host._native
    args[1] = &ip_type
    api_core.godot_method_bind_ptrcall(bind_ip_resolve_hostname,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  resolve_hostname_queue_item(self,  String host,  int ip_type):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[2]

    args[0] = &host._native
    args[1] = &ip_type
    api_core.godot_method_bind_ptrcall(bind_ip_resolve_hostname_queue_item,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

