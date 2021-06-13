
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
cimport classes.Object
cimport classes.Reference

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_object__get
cdef godot_method_bind *bind_object__get_property_list
cdef godot_method_bind *bind_object__init
cdef godot_method_bind *bind_object__notification
cdef godot_method_bind *bind_object__set
cdef godot_method_bind *bind_object__to_string
cdef godot_method_bind *bind_object_add_user_signal
cdef godot_method_bind *bind_object_call
cdef godot_method_bind *bind_object_call_deferred
cdef godot_method_bind *bind_object_callv
cdef godot_method_bind *bind_object_can_translate_messages
cdef godot_method_bind *bind_object_connect
cdef godot_method_bind *bind_object_disconnect
cdef godot_method_bind *bind_object_emit_signal
cdef godot_method_bind *bind_object_free
cdef godot_method_bind *bind_object_get
cdef godot_method_bind *bind_object_get_class
cdef godot_method_bind *bind_object_get_incoming_connections
cdef godot_method_bind *bind_object_get_indexed
cdef godot_method_bind *bind_object_get_instance_id
cdef godot_method_bind *bind_object_get_meta
cdef godot_method_bind *bind_object_get_meta_list
cdef godot_method_bind *bind_object_get_method_list
cdef godot_method_bind *bind_object_get_property_list
cdef godot_method_bind *bind_object_get_script
cdef godot_method_bind *bind_object_get_signal_connection_list
cdef godot_method_bind *bind_object_get_signal_list
cdef godot_method_bind *bind_object_has_meta
cdef godot_method_bind *bind_object_has_method
cdef godot_method_bind *bind_object_has_user_signal
cdef godot_method_bind *bind_object_is_blocking_signals
cdef godot_method_bind *bind_object_is_class
cdef godot_method_bind *bind_object_is_connected
cdef godot_method_bind *bind_object_is_queued_for_deletion
cdef godot_method_bind *bind_object_notification
cdef godot_method_bind *bind_object_property_list_changed_notify
cdef godot_method_bind *bind_object_remove_meta
cdef godot_method_bind *bind_object_set
cdef godot_method_bind *bind_object_set_block_signals
cdef godot_method_bind *bind_object_set_deferred
cdef godot_method_bind *bind_object_set_indexed
cdef godot_method_bind *bind_object_set_message_translation
cdef godot_method_bind *bind_object_set_meta
cdef godot_method_bind *bind_object_set_script
cdef godot_method_bind *bind_object_to_string
cdef godot_method_bind *bind_object_tr
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_object__get = api_core.godot_method_bind_get_method('Object', '_get')
  bind_object__get_property_list = api_core.godot_method_bind_get_method('Object', '_get_property_list')
  bind_object__init = api_core.godot_method_bind_get_method('Object', '_init')
  bind_object__notification = api_core.godot_method_bind_get_method('Object', '_notification')
  bind_object__set = api_core.godot_method_bind_get_method('Object', '_set')
  bind_object__to_string = api_core.godot_method_bind_get_method('Object', '_to_string')
  bind_object_add_user_signal = api_core.godot_method_bind_get_method('Object', 'add_user_signal')
  bind_object_call = api_core.godot_method_bind_get_method('Object', 'call')
  bind_object_call_deferred = api_core.godot_method_bind_get_method('Object', 'call_deferred')
  bind_object_callv = api_core.godot_method_bind_get_method('Object', 'callv')
  bind_object_can_translate_messages = api_core.godot_method_bind_get_method('Object', 'can_translate_messages')
  bind_object_connect = api_core.godot_method_bind_get_method('Object', 'connect')
  bind_object_disconnect = api_core.godot_method_bind_get_method('Object', 'disconnect')
  bind_object_emit_signal = api_core.godot_method_bind_get_method('Object', 'emit_signal')
  bind_object_free = api_core.godot_method_bind_get_method('Object', 'free')
  bind_object_get = api_core.godot_method_bind_get_method('Object', 'get')
  bind_object_get_class = api_core.godot_method_bind_get_method('Object', 'get_class')
  bind_object_get_incoming_connections = api_core.godot_method_bind_get_method('Object', 'get_incoming_connections')
  bind_object_get_indexed = api_core.godot_method_bind_get_method('Object', 'get_indexed')
  bind_object_get_instance_id = api_core.godot_method_bind_get_method('Object', 'get_instance_id')
  bind_object_get_meta = api_core.godot_method_bind_get_method('Object', 'get_meta')
  bind_object_get_meta_list = api_core.godot_method_bind_get_method('Object', 'get_meta_list')
  bind_object_get_method_list = api_core.godot_method_bind_get_method('Object', 'get_method_list')
  bind_object_get_property_list = api_core.godot_method_bind_get_method('Object', 'get_property_list')
  bind_object_get_script = api_core.godot_method_bind_get_method('Object', 'get_script')
  bind_object_get_signal_connection_list = api_core.godot_method_bind_get_method('Object', 'get_signal_connection_list')
  bind_object_get_signal_list = api_core.godot_method_bind_get_method('Object', 'get_signal_list')
  bind_object_has_meta = api_core.godot_method_bind_get_method('Object', 'has_meta')
  bind_object_has_method = api_core.godot_method_bind_get_method('Object', 'has_method')
  bind_object_has_user_signal = api_core.godot_method_bind_get_method('Object', 'has_user_signal')
  bind_object_is_blocking_signals = api_core.godot_method_bind_get_method('Object', 'is_blocking_signals')
  bind_object_is_class = api_core.godot_method_bind_get_method('Object', 'is_class')
  bind_object_is_connected = api_core.godot_method_bind_get_method('Object', 'is_connected')
  bind_object_is_queued_for_deletion = api_core.godot_method_bind_get_method('Object', 'is_queued_for_deletion')
  bind_object_notification = api_core.godot_method_bind_get_method('Object', 'notification')
  bind_object_property_list_changed_notify = api_core.godot_method_bind_get_method('Object', 'property_list_changed_notify')
  bind_object_remove_meta = api_core.godot_method_bind_get_method('Object', 'remove_meta')
  bind_object_set = api_core.godot_method_bind_get_method('Object', 'set')
  bind_object_set_block_signals = api_core.godot_method_bind_get_method('Object', 'set_block_signals')
  bind_object_set_deferred = api_core.godot_method_bind_get_method('Object', 'set_deferred')
  bind_object_set_indexed = api_core.godot_method_bind_get_method('Object', 'set_indexed')
  bind_object_set_message_translation = api_core.godot_method_bind_get_method('Object', 'set_message_translation')
  bind_object_set_meta = api_core.godot_method_bind_get_method('Object', 'set_meta')
  bind_object_set_script = api_core.godot_method_bind_get_method('Object', 'set_script')
  bind_object_to_string = api_core.godot_method_bind_get_method('Object', 'to_string')
  bind_object_tr = api_core.godot_method_bind_get_method('Object', 'tr')

############################Generated class###################################
cdef class Object(Wrapper):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("Object")())
##################################Generated Methods#########################################
  def  _get(self,  String property):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &property._native
    api_core.godot_method_bind_ptrcall(bind_object__get,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  _get_property_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object__get_property_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  _init(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_object__init,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  _notification(self,  int what):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &what
    api_core.godot_method_bind_ptrcall(bind_object__notification,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set(self,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &property._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_object__set,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  _to_string(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object__to_string,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  add_user_signal(self,  String signal,  Array arguments):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &signal._native
    args[1] = &arguments._native
    api_core.godot_method_bind_ptrcall(bind_object_add_user_signal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  call(self,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &method._native
    api_core.godot_method_bind_ptrcall(bind_object_call,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  call_deferred(self,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &method._native
    api_core.godot_method_bind_ptrcall(bind_object_call_deferred,self.godot_owner,args,NULL)
    hello('hallo2')
  def  callv(self,  String method,  Array arg_array):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[2]

    args[0] = &method._native
    args[1] = &arg_array._native
    api_core.godot_method_bind_ptrcall(bind_object_callv,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  can_translate_messages(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_can_translate_messages,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  connect(self,  String signal,  classes.Object.Object target,  String method,  Array binds,  int flags):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_error* ret = NULL;

    cdef void *args[5]

    args[0] = &signal._native
    args[1] = target.godot_owner
    args[2] = &method._native
    args[3] = &binds._native
    args[4] = &flags
    api_core.godot_method_bind_ptrcall(bind_object_connect,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  disconnect(self,  String signal,  classes.Object.Object target,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &signal._native
    args[1] = target.godot_owner
    args[2] = &method._native
    api_core.godot_method_bind_ptrcall(bind_object_disconnect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  emit_signal(self,  String signal):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &signal._native
    api_core.godot_method_bind_ptrcall(bind_object_emit_signal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  free(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_object_free,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  get(self,  String property):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &property._native
    api_core.godot_method_bind_ptrcall(bind_object_get,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_class(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_class,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  get_incoming_connections(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_incoming_connections,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_indexed(self,  NodePath property):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &property._native
    api_core.godot_method_bind_ptrcall(bind_object_get_indexed,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_instance_id(self):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_instance_id,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_meta(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_object_get_meta,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_meta_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_pool_string_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_meta_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_method_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_method_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_property_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_property_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_script(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_script,self.godot_owner,NULL,&ret)
    hello('hallo2')
  def  get_signal_connection_list(self,  String signal):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    cdef void *args[1]

    args[0] = &signal._native
    api_core.godot_method_bind_ptrcall(bind_object_get_signal_connection_list,self.godot_owner,args,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  get_signal_list(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_array* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_get_signal_list,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Array.new_static(dereference(ret))

  def  has_meta(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_object_has_meta,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_method(self,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &method._native
    api_core.godot_method_bind_ptrcall(bind_object_has_method,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_user_signal(self,  String signal):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &signal._native
    api_core.godot_method_bind_ptrcall(bind_object_has_user_signal,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_blocking_signals(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_is_blocking_signals,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_class(self,  String class_):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &class_._native
    api_core.godot_method_bind_ptrcall(bind_object_is_class,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_connected(self,  String signal,  classes.Object.Object target,  String method):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[3]

    args[0] = &signal._native
    args[1] = target.godot_owner
    args[2] = &method._native
    api_core.godot_method_bind_ptrcall(bind_object_is_connected,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  is_queued_for_deletion(self):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_is_queued_for_deletion,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return dereference(ret)

  def  notification(self,  int what,  bool reversed):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &what
    args[1] = &reversed
    api_core.godot_method_bind_ptrcall(bind_object_notification,self.godot_owner,args,NULL)
    hello('hallo2')
  def  property_list_changed_notify(self):
    cdef godot_object *_owner = self.godot_owner

    api_core.godot_method_bind_ptrcall(bind_object_property_list_changed_notify,self.godot_owner,NULL,NULL)
    hello('hallo2')
  def  remove_meta(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_object_remove_meta,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set(self,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &property._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_object_set,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_block_signals(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_object_set_block_signals,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_deferred(self,  String property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &property._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_object_set_deferred,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_indexed(self,  NodePath property,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &property._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_object_set_indexed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_message_translation(self,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &enable
    api_core.godot_method_bind_ptrcall(bind_object_set_message_translation,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_meta(self,  String name,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_object_set_meta,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_script(self,  classes.Reference.Reference script):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = script.godot_owner
    api_core.godot_method_bind_ptrcall(bind_object_set_script,self.godot_owner,args,NULL)
    hello('hallo2')
  def  to_string(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_object_to_string,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  tr(self,  String message):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[1]

    args[0] = &message._native
    api_core.godot_method_bind_ptrcall(bind_object_tr,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

