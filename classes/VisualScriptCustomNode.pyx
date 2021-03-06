from classes.VisualScriptNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualscriptcustomnode__get_caption
cdef godot_method_bind *bind_visualscriptcustomnode__get_category
cdef godot_method_bind *bind_visualscriptcustomnode__get_input_value_port_count
cdef godot_method_bind *bind_visualscriptcustomnode__get_input_value_port_name
cdef godot_method_bind *bind_visualscriptcustomnode__get_input_value_port_type
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_sequence_port_count
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_sequence_port_text
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_value_port_count
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_value_port_name
cdef godot_method_bind *bind_visualscriptcustomnode__get_output_value_port_type
cdef godot_method_bind *bind_visualscriptcustomnode__get_text
cdef godot_method_bind *bind_visualscriptcustomnode__get_working_memory_size
cdef godot_method_bind *bind_visualscriptcustomnode__has_input_sequence_port
cdef godot_method_bind *bind_visualscriptcustomnode__script_changed
cdef godot_method_bind *bind_visualscriptcustomnode__step
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualscriptcustomnode__get_caption = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_caption')
  bind_visualscriptcustomnode__get_category = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_category')
  bind_visualscriptcustomnode__get_input_value_port_count = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_input_value_port_count')
  bind_visualscriptcustomnode__get_input_value_port_name = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_input_value_port_name')
  bind_visualscriptcustomnode__get_input_value_port_type = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_input_value_port_type')
  bind_visualscriptcustomnode__get_output_sequence_port_count = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_sequence_port_count')
  bind_visualscriptcustomnode__get_output_sequence_port_text = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_sequence_port_text')
  bind_visualscriptcustomnode__get_output_value_port_count = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_value_port_count')
  bind_visualscriptcustomnode__get_output_value_port_name = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_value_port_name')
  bind_visualscriptcustomnode__get_output_value_port_type = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_output_value_port_type')
  bind_visualscriptcustomnode__get_text = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_text')
  bind_visualscriptcustomnode__get_working_memory_size = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_get_working_memory_size')
  bind_visualscriptcustomnode__has_input_sequence_port = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_has_input_sequence_port')
  bind_visualscriptcustomnode__script_changed = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_script_changed')
  bind_visualscriptcustomnode__step = api_core.godot_method_bind_get_method('VisualScriptCustomNode', '_step')

############################Generated class###################################
cdef class VisualScriptCustomNode(VisualScriptNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualScriptCustomNode")())
##################################Generated Methods#########################################
  def  _get_caption(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_caption,self.godot_owner,[NULL,],&ret)
  def  _get_category(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_category,self.godot_owner,[NULL,],&ret)
  def  _get_input_value_port_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_input_value_port_count,self.godot_owner,[NULL,],&ret)
  def  _get_input_value_port_name(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_input_value_port_name,self.godot_owner,[NULL,],&ret)
  def  _get_input_value_port_type(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_input_value_port_type,self.godot_owner,[NULL,],&ret)
  def  _get_output_sequence_port_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_sequence_port_count,self.godot_owner,[NULL,],&ret)
  def  _get_output_sequence_port_text(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_sequence_port_text,self.godot_owner,[NULL,],&ret)
  def  _get_output_value_port_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_value_port_count,self.godot_owner,[NULL,],&ret)
  def  _get_output_value_port_name(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_value_port_name,self.godot_owner,[NULL,],&ret)
  def  _get_output_value_port_type(self, idx):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_output_value_port_type,self.godot_owner,[NULL,],&ret)
  def  _get_text(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_text,self.godot_owner,[NULL,],&ret)
  def  _get_working_memory_size(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__get_working_memory_size,self.godot_owner,[NULL,],&ret)
  def  _has_input_sequence_port(self):
    cdef godot_object *_owner = self.godot_owner
    cdef bool ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__has_input_sequence_port,self.godot_owner,[NULL,],&ret)
  def  _script_changed(self):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__script_changed,self.godot_owner,[NULL,],NULL)
  def  _step(self, inputsoutputsstart_modeworking_mem):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_visualscriptcustomnode__step,self.godot_owner,[NULL,],&ret)
