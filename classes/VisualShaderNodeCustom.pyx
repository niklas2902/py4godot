from classes.VisualShaderNode cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernodecustom__get_category
cdef godot_method_bind *bind_visualshadernodecustom__get_code
cdef godot_method_bind *bind_visualshadernodecustom__get_description
cdef godot_method_bind *bind_visualshadernodecustom__get_global_code
cdef godot_method_bind *bind_visualshadernodecustom__get_input_port_count
cdef godot_method_bind *bind_visualshadernodecustom__get_input_port_name
cdef godot_method_bind *bind_visualshadernodecustom__get_input_port_type
cdef godot_method_bind *bind_visualshadernodecustom__get_name
cdef godot_method_bind *bind_visualshadernodecustom__get_output_port_count
cdef godot_method_bind *bind_visualshadernodecustom__get_output_port_name
cdef godot_method_bind *bind_visualshadernodecustom__get_output_port_type
cdef godot_method_bind *bind_visualshadernodecustom__get_return_icon_type
cdef godot_method_bind *bind_visualshadernodecustom__get_subcategory
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernodecustom__get_category = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_category')
  bind_visualshadernodecustom__get_code = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_code')
  bind_visualshadernodecustom__get_description = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_description')
  bind_visualshadernodecustom__get_global_code = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_global_code')
  bind_visualshadernodecustom__get_input_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_input_port_count')
  bind_visualshadernodecustom__get_input_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_input_port_name')
  bind_visualshadernodecustom__get_input_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_input_port_type')
  bind_visualshadernodecustom__get_name = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_name')
  bind_visualshadernodecustom__get_output_port_count = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_output_port_count')
  bind_visualshadernodecustom__get_output_port_name = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_output_port_name')
  bind_visualshadernodecustom__get_output_port_type = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_output_port_type')
  bind_visualshadernodecustom__get_return_icon_type = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_return_icon_type')
  bind_visualshadernodecustom__get_subcategory = api_core.godot_method_bind_get_method('VisualShaderNodeCustom', '_get_subcategory')

############################Generated class###################################
cdef class VisualShaderNodeCustom(VisualShaderNode):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNodeCustom")())
##################################Generated Methods#########################################
  def  _get_category(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_category,self.godot_owner,[NULL,],&ret)
  def  _get_code(self, input_varsoutput_varsmodetype):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_code,self.godot_owner,[NULL,],&ret)
  def  _get_description(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_description,self.godot_owner,[NULL,],&ret)
  def  _get_global_code(self, mode):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_global_code,self.godot_owner,[NULL,],&ret)
  def  _get_input_port_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_input_port_count,self.godot_owner,[NULL,],&ret)
  def  _get_input_port_name(self, port):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_input_port_name,self.godot_owner,[NULL,],&ret)
  def  _get_input_port_type(self, port):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_input_port_type,self.godot_owner,[NULL,],&ret)
  def  _get_name(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_name,self.godot_owner,[NULL,],&ret)
  def  _get_output_port_count(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_output_port_count,self.godot_owner,[NULL,],&ret)
  def  _get_output_port_name(self, port):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_output_port_name,self.godot_owner,[NULL,],&ret)
  def  _get_output_port_type(self, port):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_output_port_type,self.godot_owner,[NULL,],&ret)
  def  _get_return_icon_type(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_return_icon_type,self.godot_owner,[NULL,],&ret)
  def  _get_subcategory(self):
    cdef godot_object *_owner = self.godot_owner
    cdef String ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernodecustom__get_subcategory,self.godot_owner,[NULL,],&ret)
