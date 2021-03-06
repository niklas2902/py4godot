from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodegroupbase_add_input_port
cdef godot_method_bind *bind_visualshadernodegroupbase_add_output_port
cdef godot_method_bind *bind_visualshadernodegroupbase_clear_input_ports
cdef godot_method_bind *bind_visualshadernodegroupbase_clear_output_ports
cdef godot_method_bind *bind_visualshadernodegroupbase_get_free_input_port_id
cdef godot_method_bind *bind_visualshadernodegroupbase_get_free_output_port_id
cdef godot_method_bind *bind_visualshadernodegroupbase_get_input_port_count
cdef godot_method_bind *bind_visualshadernodegroupbase_get_inputs
cdef godot_method_bind *bind_visualshadernodegroupbase_get_output_port_count
cdef godot_method_bind *bind_visualshadernodegroupbase_get_outputs
cdef godot_method_bind *bind_visualshadernodegroupbase_get_size
cdef godot_method_bind *bind_visualshadernodegroupbase_has_input_port
cdef godot_method_bind *bind_visualshadernodegroupbase_has_output_port
cdef godot_method_bind *bind_visualshadernodegroupbase_is_valid_port_name
cdef godot_method_bind *bind_visualshadernodegroupbase_remove_input_port
cdef godot_method_bind *bind_visualshadernodegroupbase_remove_output_port
cdef godot_method_bind *bind_visualshadernodegroupbase_set_input_port_name
cdef godot_method_bind *bind_visualshadernodegroupbase_set_input_port_type
cdef godot_method_bind *bind_visualshadernodegroupbase_set_inputs
cdef godot_method_bind *bind_visualshadernodegroupbase_set_output_port_name
cdef godot_method_bind *bind_visualshadernodegroupbase_set_output_port_type
cdef godot_method_bind *bind_visualshadernodegroupbase_set_outputs
cdef godot_method_bind *bind_visualshadernodegroupbase_set_size
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodegroupbase_add_input_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'add_input_port')
  bind_visualshadernodegroupbase_add_output_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'add_output_port')
  bind_visualshadernodegroupbase_clear_input_ports = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'clear_input_ports')
  bind_visualshadernodegroupbase_clear_output_ports = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'clear_output_ports')
  bind_visualshadernodegroupbase_get_free_input_port_id = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_free_input_port_id')
  bind_visualshadernodegroupbase_get_free_output_port_id = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_free_output_port_id')
  bind_visualshadernodegroupbase_get_input_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_input_port_count')
  bind_visualshadernodegroupbase_get_inputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_inputs')
  bind_visualshadernodegroupbase_get_output_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_output_port_count')
  bind_visualshadernodegroupbase_get_outputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_outputs')
  bind_visualshadernodegroupbase_get_size = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'get_size')
  bind_visualshadernodegroupbase_has_input_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'has_input_port')
  bind_visualshadernodegroupbase_has_output_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'has_output_port')
  bind_visualshadernodegroupbase_is_valid_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'is_valid_port_name')
  bind_visualshadernodegroupbase_remove_input_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'remove_input_port')
  bind_visualshadernodegroupbase_remove_output_port = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'remove_output_port')
  bind_visualshadernodegroupbase_set_input_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_input_port_name')
  bind_visualshadernodegroupbase_set_input_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_input_port_type')
  bind_visualshadernodegroupbase_set_inputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_inputs')
  bind_visualshadernodegroupbase_set_output_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_output_port_name')
  bind_visualshadernodegroupbase_set_output_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_output_port_type')
  bind_visualshadernodegroupbase_set_outputs = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_outputs')
  bind_visualshadernodegroupbase_set_size = api_core.godot_method_bind_get_method('VisualShaderNodeGroupBase', 'set_size')

############################Generated class###################################
cdef class VisualShaderNodeGroupBase(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeGroupBase")())
##################################Generated Properties#########################################
  @property
  def size(self): 
    return self.get_size()
  @size.setter 
  def size(self,value): 
    self.set_size(value)

##################################Generated Methods#########################################
  def  add_input_port(self, idtypename):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_add_input_port,self.godot_owner,[NULL,],NULL)
  def  add_output_port(self, idtypename):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_add_output_port,self.godot_owner,[NULL,],NULL)
  def  clear_input_ports(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_clear_input_ports,self.godot_owner,[NULL,],NULL)
  def  clear_output_ports(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_clear_output_ports,self.godot_owner,[NULL,],NULL)
  def  get_free_input_port_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_free_input_port_id,self.godot_owner,[NULL,],&ret)
  def  get_free_output_port_id(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_free_output_port_id,self.godot_owner,[NULL,],&ret)
  def  get_input_port_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_input_port_count,self.godot_owner,[NULL,],&ret)
  def  get_inputs(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_inputs,self.godot_owner,[NULL,],&ret)
  def  get_output_port_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_output_port_count,self.godot_owner,[NULL,],&ret)
  def  get_outputs(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_outputs,self.godot_owner,[NULL,],&ret)
  def  get_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Vector2 ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_get_size,self.godot_owner,[NULL,],&ret)
  def  has_input_port(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_has_input_port,self.godot_owner,[NULL,],&ret)
  def  has_output_port(self, id):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_has_output_port,self.godot_owner,[NULL,],&ret)
  def  is_valid_port_name(self, name):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_is_valid_port_name,self.godot_owner,[NULL,],&ret)
  def  remove_input_port(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_remove_input_port,self.godot_owner,[NULL,],NULL)
  def  remove_output_port(self, id):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_remove_output_port,self.godot_owner,[NULL,],NULL)
  def  set_input_port_name(self, idname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_input_port_name,self.godot_owner,[NULL,],NULL)
  def  set_input_port_type(self, idtype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_input_port_type,self.godot_owner,[NULL,],NULL)
  def  set_inputs(self, inputs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_inputs,self.godot_owner,[NULL,],NULL)
  def  set_output_port_name(self, idname):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_output_port_name,self.godot_owner,[NULL,],NULL)
  def  set_output_port_type(self, idtype):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_output_port_type,self.godot_owner,[NULL,],NULL)
  def  set_outputs(self, outputs):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_outputs,self.godot_owner,[NULL,],NULL)
  def  set_size(self, size):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernodegroupbase_set_size,self.godot_owner,[NULL,],NULL)
