
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
cimport classes.Object 

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
cdef class JSONRPC(classes.Object.Object):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("JSONRPC")())
##################################Generated Methods#########################################
  def  make_notification(self,  String method,  Variant params):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[2]

    args[0] = &method._native
    args[1] = &params._native
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_notification,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  make_request(self,  String method,  Variant params,  Variant id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[3]

    args[0] = &method._native
    args[1] = &params._native
    args[2] = &id._native
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_request,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  make_response(self,  Variant result,  Variant id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[2]

    args[0] = &result._native
    args[1] = &id._native
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_response,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  make_response_error(self,  int code,  String message,  Variant id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[3]

    args[0] = &code
    args[1] = &message._native
    args[2] = &id._native
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_make_response_error,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  process_action(self,  Variant action,  bool recurse):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &action._native
    args[1] = &recurse
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_process_action,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  process_string(self,  String action):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &action._native
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_process_string,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  set_scope(self,  String scope,  classes.Object.Object target):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &scope._native
    args[1] = target.godot_owner
    api_core.godot_method_bind_ptrcall(bind_jsonrpc_set_scope,self.godot_owner,args,NULL)
    hello('hallo2')
