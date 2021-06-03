
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
from core.variant.Variant cimport Type
from core.variant.Variant cimport Operator
from core.vector3.Vector3 cimport Axis
from core.color.Color cimport Color
from cython.operator cimport dereference
from godot_api.binding_external cimport *
cimport classes.VisualScriptNode
cimport classes.Script 

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscript__get_data
cdef godot_method_bind *bind_visualscript__node_ports_changed
cdef godot_method_bind *bind_visualscript__set_data
cdef godot_method_bind *bind_visualscript_add_custom_signal
cdef godot_method_bind *bind_visualscript_add_function
cdef godot_method_bind *bind_visualscript_add_node
cdef godot_method_bind *bind_visualscript_add_variable
cdef godot_method_bind *bind_visualscript_custom_signal_add_argument
cdef godot_method_bind *bind_visualscript_custom_signal_get_argument_count
cdef godot_method_bind *bind_visualscript_custom_signal_get_argument_name
cdef godot_method_bind *bind_visualscript_custom_signal_get_argument_type
cdef godot_method_bind *bind_visualscript_custom_signal_remove_argument
cdef godot_method_bind *bind_visualscript_custom_signal_set_argument_name
cdef godot_method_bind *bind_visualscript_custom_signal_set_argument_type
cdef godot_method_bind *bind_visualscript_custom_signal_swap_argument
cdef godot_method_bind *bind_visualscript_data_connect
cdef godot_method_bind *bind_visualscript_data_disconnect
cdef godot_method_bind *bind_visualscript_get_function_node_id
cdef godot_method_bind *bind_visualscript_get_function_scroll
cdef godot_method_bind *bind_visualscript_get_node
cdef godot_method_bind *bind_visualscript_get_node_position
cdef godot_method_bind *bind_visualscript_get_variable_default_value
cdef godot_method_bind *bind_visualscript_get_variable_export
cdef godot_method_bind *bind_visualscript_get_variable_info
cdef godot_method_bind *bind_visualscript_has_custom_signal
cdef godot_method_bind *bind_visualscript_has_data_connection
cdef godot_method_bind *bind_visualscript_has_function
cdef godot_method_bind *bind_visualscript_has_node
cdef godot_method_bind *bind_visualscript_has_sequence_connection
cdef godot_method_bind *bind_visualscript_has_variable
cdef godot_method_bind *bind_visualscript_remove_custom_signal
cdef godot_method_bind *bind_visualscript_remove_function
cdef godot_method_bind *bind_visualscript_remove_node
cdef godot_method_bind *bind_visualscript_remove_variable
cdef godot_method_bind *bind_visualscript_rename_custom_signal
cdef godot_method_bind *bind_visualscript_rename_function
cdef godot_method_bind *bind_visualscript_rename_variable
cdef godot_method_bind *bind_visualscript_sequence_connect
cdef godot_method_bind *bind_visualscript_sequence_disconnect
cdef godot_method_bind *bind_visualscript_set_function_scroll
cdef godot_method_bind *bind_visualscript_set_instance_base_type
cdef godot_method_bind *bind_visualscript_set_node_position
cdef godot_method_bind *bind_visualscript_set_variable_default_value
cdef godot_method_bind *bind_visualscript_set_variable_export
cdef godot_method_bind *bind_visualscript_set_variable_info
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscript__get_data = api_core.godot_method_bind_get_method('VisualScript', '_get_data')
  bind_visualscript__node_ports_changed = api_core.godot_method_bind_get_method('VisualScript', '_node_ports_changed')
  bind_visualscript__set_data = api_core.godot_method_bind_get_method('VisualScript', '_set_data')
  bind_visualscript_add_custom_signal = api_core.godot_method_bind_get_method('VisualScript', 'add_custom_signal')
  bind_visualscript_add_function = api_core.godot_method_bind_get_method('VisualScript', 'add_function')
  bind_visualscript_add_node = api_core.godot_method_bind_get_method('VisualScript', 'add_node')
  bind_visualscript_add_variable = api_core.godot_method_bind_get_method('VisualScript', 'add_variable')
  bind_visualscript_custom_signal_add_argument = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_add_argument')
  bind_visualscript_custom_signal_get_argument_count = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_get_argument_count')
  bind_visualscript_custom_signal_get_argument_name = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_get_argument_name')
  bind_visualscript_custom_signal_get_argument_type = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_get_argument_type')
  bind_visualscript_custom_signal_remove_argument = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_remove_argument')
  bind_visualscript_custom_signal_set_argument_name = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_set_argument_name')
  bind_visualscript_custom_signal_set_argument_type = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_set_argument_type')
  bind_visualscript_custom_signal_swap_argument = api_core.godot_method_bind_get_method('VisualScript', 'custom_signal_swap_argument')
  bind_visualscript_data_connect = api_core.godot_method_bind_get_method('VisualScript', 'data_connect')
  bind_visualscript_data_disconnect = api_core.godot_method_bind_get_method('VisualScript', 'data_disconnect')
  bind_visualscript_get_function_node_id = api_core.godot_method_bind_get_method('VisualScript', 'get_function_node_id')
  bind_visualscript_get_function_scroll = api_core.godot_method_bind_get_method('VisualScript', 'get_function_scroll')
  bind_visualscript_get_node = api_core.godot_method_bind_get_method('VisualScript', 'get_node')
  bind_visualscript_get_node_position = api_core.godot_method_bind_get_method('VisualScript', 'get_node_position')
  bind_visualscript_get_variable_default_value = api_core.godot_method_bind_get_method('VisualScript', 'get_variable_default_value')
  bind_visualscript_get_variable_export = api_core.godot_method_bind_get_method('VisualScript', 'get_variable_export')
  bind_visualscript_get_variable_info = api_core.godot_method_bind_get_method('VisualScript', 'get_variable_info')
  bind_visualscript_has_custom_signal = api_core.godot_method_bind_get_method('VisualScript', 'has_custom_signal')
  bind_visualscript_has_data_connection = api_core.godot_method_bind_get_method('VisualScript', 'has_data_connection')
  bind_visualscript_has_function = api_core.godot_method_bind_get_method('VisualScript', 'has_function')
  bind_visualscript_has_node = api_core.godot_method_bind_get_method('VisualScript', 'has_node')
  bind_visualscript_has_sequence_connection = api_core.godot_method_bind_get_method('VisualScript', 'has_sequence_connection')
  bind_visualscript_has_variable = api_core.godot_method_bind_get_method('VisualScript', 'has_variable')
  bind_visualscript_remove_custom_signal = api_core.godot_method_bind_get_method('VisualScript', 'remove_custom_signal')
  bind_visualscript_remove_function = api_core.godot_method_bind_get_method('VisualScript', 'remove_function')
  bind_visualscript_remove_node = api_core.godot_method_bind_get_method('VisualScript', 'remove_node')
  bind_visualscript_remove_variable = api_core.godot_method_bind_get_method('VisualScript', 'remove_variable')
  bind_visualscript_rename_custom_signal = api_core.godot_method_bind_get_method('VisualScript', 'rename_custom_signal')
  bind_visualscript_rename_function = api_core.godot_method_bind_get_method('VisualScript', 'rename_function')
  bind_visualscript_rename_variable = api_core.godot_method_bind_get_method('VisualScript', 'rename_variable')
  bind_visualscript_sequence_connect = api_core.godot_method_bind_get_method('VisualScript', 'sequence_connect')
  bind_visualscript_sequence_disconnect = api_core.godot_method_bind_get_method('VisualScript', 'sequence_disconnect')
  bind_visualscript_set_function_scroll = api_core.godot_method_bind_get_method('VisualScript', 'set_function_scroll')
  bind_visualscript_set_instance_base_type = api_core.godot_method_bind_get_method('VisualScript', 'set_instance_base_type')
  bind_visualscript_set_node_position = api_core.godot_method_bind_get_method('VisualScript', 'set_node_position')
  bind_visualscript_set_variable_default_value = api_core.godot_method_bind_get_method('VisualScript', 'set_variable_default_value')
  bind_visualscript_set_variable_export = api_core.godot_method_bind_get_method('VisualScript', 'set_variable_export')
  bind_visualscript_set_variable_info = api_core.godot_method_bind_get_method('VisualScript', 'set_variable_info')

############################Generated class###################################
cdef class VisualScript(classes.Script.Script):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScript")())
##################################Generated Properties#########################################
  @property
  def data(self): 
    return self.get_data()
  @data.setter 
  def data(self,value): 
    self.set_data(value)

##################################Generated Methods#########################################
  def  _get_data(self):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    api_core.godot_method_bind_ptrcall(bind_visualscript__get_data,self.godot_owner,NULL,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  _node_ports_changed(self,  int arg0):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &arg0
    api_core.godot_method_bind_ptrcall(bind_visualscript__node_ports_changed,self.godot_owner,args,NULL)
    hello('hallo2')
  def  _set_data(self,  Dictionary data):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &data._native
    api_core.godot_method_bind_ptrcall(bind_visualscript__set_data,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_custom_signal(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_custom_signal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_function(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_function,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_node(self,  String func,  int id,  classes.VisualScriptNode.VisualScriptNode node,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &func._native
    args[1] = &id
    args[2] = node.godot_owner
    args[3] = &position._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  add_variable(self,  String name,  Variant default_value,  bool export):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &default_value._native
    args[2] = &export
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_variable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  custom_signal_add_argument(self,  String name,  int type,  String argname,  int index):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &name._native
    args[1] = &type
    args[2] = &argname._native
    args[3] = &index
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_add_argument,self.godot_owner,args,NULL)
    hello('hallo2')
  def  custom_signal_get_argument_count(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_get_argument_count,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  custom_signal_get_argument_name(self,  String name,  int argidx):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_string* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &argidx
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_get_argument_name,self.godot_owner,args,&ret)
    hello('hallo2')
    return String.new_static(dereference(ret))

  def  custom_signal_get_argument_type(self,  String name,  int argidx):
    cdef godot_object *_owner = self.godot_owner

    cdef Type* ret = NULL;

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &argidx
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_get_argument_type,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  custom_signal_remove_argument(self,  String name,  int argidx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &argidx
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_remove_argument,self.godot_owner,args,NULL)
    hello('hallo2')
  def  custom_signal_set_argument_name(self,  String name,  int argidx,  String argname):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &argidx
    args[2] = &argname._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_set_argument_name,self.godot_owner,args,NULL)
    hello('hallo2')
  def  custom_signal_set_argument_type(self,  String name,  int argidx,  int type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &argidx
    args[2] = &type
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_set_argument_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  custom_signal_swap_argument(self,  String name,  int argidx,  int withidx):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &name._native
    args[1] = &argidx
    args[2] = &withidx
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_swap_argument,self.godot_owner,args,NULL)
    hello('hallo2')
  def  data_connect(self,  String func,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &func._native
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualscript_data_connect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  data_disconnect(self,  String func,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[5]

    args[0] = &func._native
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualscript_data_disconnect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  get_function_node_id(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef int* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_function_node_id,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_function_scroll(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_function_scroll,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_node(self,  String func,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_object* ret = NULL;

    cdef void *args[2]

    args[0] = &func._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_node,self.godot_owner,args,&ret)
    hello('hallo2')
  def  get_node_position(self,  String func,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_vector2* ret = NULL;

    cdef void *args[2]

    args[0] = &func._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_node_position,self.godot_owner,args,&ret)
    hello('hallo2')
    return Vector2.new_static(dereference(ret))

  def  get_variable_default_value(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_variant* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_variable_default_value,self.godot_owner,args,&ret)
    hello('hallo2')
    return Variant.new_static(dereference(ret))

  def  get_variable_export(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_variable_export,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  get_variable_info(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef godot_dictionary* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_variable_info,self.godot_owner,args,&ret)
    hello('hallo2')
    return Dictionary.new_static(dereference(ret))

  def  has_custom_signal(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_custom_signal,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_data_connection(self,  String func,  int from_node,  int from_port,  int to_node,  int to_port):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[5]

    args[0] = &func._native
    args[1] = &from_node
    args[2] = &from_port
    args[3] = &to_node
    args[4] = &to_port
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_data_connection,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_function(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_function,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_node(self,  String func,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[2]

    args[0] = &func._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_node,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_sequence_connection(self,  String func,  int from_node,  int from_output,  int to_node):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[4]

    args[0] = &func._native
    args[1] = &from_node
    args[2] = &from_output
    args[3] = &to_node
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_sequence_connection,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  has_variable(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef bool* ret = NULL;

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_variable,self.godot_owner,args,&ret)
    hello('hallo2')
    return dereference(ret)

  def  remove_custom_signal(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_custom_signal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_function(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_function,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_node(self,  String func,  int id):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &func._native
    args[1] = &id
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_node,self.godot_owner,args,NULL)
    hello('hallo2')
  def  remove_variable(self,  String name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_variable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_custom_signal(self,  String name,  String new_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &new_name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_rename_custom_signal,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_function(self,  String name,  String new_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &new_name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_rename_function,self.godot_owner,args,NULL)
    hello('hallo2')
  def  rename_variable(self,  String name,  String new_name):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &new_name._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_rename_variable,self.godot_owner,args,NULL)
    hello('hallo2')
  def  sequence_connect(self,  String func,  int from_node,  int from_output,  int to_node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &func._native
    args[1] = &from_node
    args[2] = &from_output
    args[3] = &to_node
    api_core.godot_method_bind_ptrcall(bind_visualscript_sequence_connect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  sequence_disconnect(self,  String func,  int from_node,  int from_output,  int to_node):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[4]

    args[0] = &func._native
    args[1] = &from_node
    args[2] = &from_output
    args[3] = &to_node
    api_core.godot_method_bind_ptrcall(bind_visualscript_sequence_disconnect,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_function_scroll(self,  String name,  Vector2 ofs):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &ofs._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_function_scroll,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_instance_base_type(self,  String type):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[1]

    args[0] = &type._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_instance_base_type,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_node_position(self,  String func,  int id,  Vector2 position):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[3]

    args[0] = &func._native
    args[1] = &id
    args[2] = &position._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_node_position,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_variable_default_value(self,  String name,  Variant value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_variable_default_value,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_variable_export(self,  String name,  bool enable):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &enable
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_variable_export,self.godot_owner,args,NULL)
    hello('hallo2')
  def  set_variable_info(self,  String name,  Dictionary value):
    cdef godot_object *_owner = self.godot_owner

    cdef void *args[2]

    args[0] = &name._native
    args[1] = &value._native
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_variable_info,self.godot_owner,args,NULL)
    hello('hallo2')
