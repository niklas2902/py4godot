from classes.Script cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

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
cdef class VisualScript(Script):
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
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_visualscript__get_data,self.godot_owner,[NULL,],&ret)
  def  _node_ports_changed(self, arg0):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript__node_ports_changed,self.godot_owner,[NULL,],NULL)
  def  _set_data(self, data):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript__set_data,self.godot_owner,[NULL,],NULL)
  def  add_custom_signal(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_custom_signal,self.godot_owner,[NULL,],NULL)
  def  add_function(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_function,self.godot_owner,[NULL,],NULL)
  def  add_node(self, funcidnodeposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_node,self.godot_owner,[NULL,],NULL)
  def  add_variable(self, namedefault_valueexport):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_add_variable,self.godot_owner,[NULL,],NULL)
  def  custom_signal_add_argument(self, nametypeargnameindex):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_add_argument,self.godot_owner,[NULL,],NULL)
  def  custom_signal_get_argument_count(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_get_argument_count,self.godot_owner,[NULL,],&ret)
  def  custom_signal_get_argument_name(self, nameargidx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_get_argument_name,self.godot_owner,[NULL,],&ret)
  def  custom_signal_get_argument_type(self, nameargidx):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant::Type ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_get_argument_type,self.godot_owner,[NULL,],&ret)
  def  custom_signal_remove_argument(self, nameargidx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_remove_argument,self.godot_owner,[NULL,],NULL)
  def  custom_signal_set_argument_name(self, nameargidxargname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_set_argument_name,self.godot_owner,[NULL,],NULL)
  def  custom_signal_set_argument_type(self, nameargidxtype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_set_argument_type,self.godot_owner,[NULL,],NULL)
  def  custom_signal_swap_argument(self, nameargidxwithidx):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_custom_signal_swap_argument,self.godot_owner,[NULL,],NULL)
  def  data_connect(self, funcfrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_data_connect,self.godot_owner,[NULL,],NULL)
  def  data_disconnect(self, funcfrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_data_disconnect,self.godot_owner,[NULL,],NULL)
  def  get_function_node_id(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_function_node_id,self.godot_owner,[NULL,],&ret)
  def  get_function_scroll(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_function_scroll,self.godot_owner,[NULL,],&ret)
  def  get_node(self, funcid):
    cdef godot_object *_owner = self.godot_owner
    cdef VisualScriptNode ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_node,self.godot_owner,[NULL,],&ret)
  def  get_node_position(self, funcid):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_node_position,self.godot_owner,[NULL,],&ret)
  def  get_variable_default_value(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_variable_default_value,self.godot_owner,[NULL,],&ret)
  def  get_variable_export(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_variable_export,self.godot_owner,[NULL,],&ret)
  def  get_variable_info(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef Dictionary ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_get_variable_info,self.godot_owner,[NULL,],&ret)
  def  has_custom_signal(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_custom_signal,self.godot_owner,[NULL,],&ret)
  def  has_data_connection(self, funcfrom_nodefrom_portto_nodeto_port):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_data_connection,self.godot_owner,[NULL,],&ret)
  def  has_function(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_function,self.godot_owner,[NULL,],&ret)
  def  has_node(self, funcid):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_node,self.godot_owner,[NULL,],&ret)
  def  has_sequence_connection(self, funcfrom_nodefrom_outputto_node):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_sequence_connection,self.godot_owner,[NULL,],&ret)
  def  has_variable(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscript_has_variable,self.godot_owner,[NULL,],&ret)
  def  remove_custom_signal(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_custom_signal,self.godot_owner,[NULL,],NULL)
  def  remove_function(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_function,self.godot_owner,[NULL,],NULL)
  def  remove_node(self, funcid):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_node,self.godot_owner,[NULL,],NULL)
  def  remove_variable(self, name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_remove_variable,self.godot_owner,[NULL,],NULL)
  def  rename_custom_signal(self, namenew_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_rename_custom_signal,self.godot_owner,[NULL,],NULL)
  def  rename_function(self, namenew_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_rename_function,self.godot_owner,[NULL,],NULL)
  def  rename_variable(self, namenew_name):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_rename_variable,self.godot_owner,[NULL,],NULL)
  def  sequence_connect(self, funcfrom_nodefrom_outputto_node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_sequence_connect,self.godot_owner,[NULL,],NULL)
  def  sequence_disconnect(self, funcfrom_nodefrom_outputto_node):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_sequence_disconnect,self.godot_owner,[NULL,],NULL)
  def  set_function_scroll(self, nameofs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_function_scroll,self.godot_owner,[NULL,],NULL)
  def  set_instance_base_type(self, type):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_instance_base_type,self.godot_owner,[NULL,],NULL)
  def  set_node_position(self, funcidposition):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_node_position,self.godot_owner,[NULL,],NULL)
  def  set_variable_default_value(self, namevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_variable_default_value,self.godot_owner,[NULL,],NULL)
  def  set_variable_export(self, nameenable):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_variable_export,self.godot_owner,[NULL,],NULL)
  def  set_variable_info(self, namevalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscript_set_variable_info,self.godot_owner,[NULL,],NULL)
