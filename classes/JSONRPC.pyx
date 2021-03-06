from classes.Object cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_jsonrpc_make_notification
cdef godot_method_bind *bind_jsonrpc_make_request
cdef godot_method_bind *bind_jsonrpc_make_response
cdef godot_method_bind *bind_jsonrpc_make_response_error
cdef godot_method_bind *bind_jsonrpc_process_action
cdef godot_method_bind *bind_jsonrpc_process_string
cdef godot_method_bind *bind_jsonrpc_set_scope
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_jsonrpc_make_notification = api_core.godot_method_bind_get_method('JSONRPC', 'make_notification')
  bind_jsonrpc_make_request = api_core.godot_method_bind_get_method('JSONRPC', 'make_request')
  bind_jsonrpc_make_response = api_core.godot_method_bind_get_method('JSONRPC', 'make_response')
  bind_jsonrpc_make_response_error = api_core.godot_method_bind_get_method('JSONRPC', 'make_response_error')
  bind_jsonrpc_process_action = api_core.godot_method_bind_get_method('JSONRPC', 'process_action')
  bind_jsonrpc_process_string = api_core.godot_method_bind_get_method('JSONRPC', 'process_string')
  bind_jsonrpc_set_scope = api_core.godot_method_bind_get_method('JSONRPC', 'set_scope')

############################Generated class###################################
cdef class JSONRPC(Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("JSONRPC")())
##################################Generated Methods#########################################
  def  make_notification(self, methodparams):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_notification,self.godot_owner,[NULL,],&ret)
  def  make_request(self, methodparamsid):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_request,self.godot_owner,[NULL,],&ret)
  def  make_response(self, resultid):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_response,self.godot_owner,[NULL,],&ret)
  def  make_response_error(self, codemessageid):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_response_error,self.godot_owner,[NULL,],&ret)
  def  process_action(self, actionrecurse):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_process_action,self.godot_owner,[NULL,],&ret)
  def  process_string(self, action):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_process_string,self.godot_owner,[NULL,],&ret)
  def  set_scope(self, scopetarget):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_set_scope,self.godot_owner,[NULL,],NULL)
