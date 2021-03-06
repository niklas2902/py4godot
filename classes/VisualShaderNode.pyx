from classes.Resource cimport * 

##################################Import gdnative api#########################################
from godot_api.binding cimport *
from utils.Wrapper cimport *

##################################Generated method bindings#########################################
cdef godot_method_bind *bind
cdef godot_method_bind *bind_visualshadernode_get_default_input_values
cdef godot_method_bind *bind_visualshadernode_get_input_port_default_value
cdef godot_method_bind *bind_visualshadernode_get_output_port_for_preview
cdef godot_method_bind *bind_visualshadernode_set_default_input_values
cdef godot_method_bind *bind_visualshadernode_set_input_port_default_value
cdef godot_method_bind *bind_visualshadernode_set_output_port_for_preview
cpdef init_method_bindings():
  bind = api_core.godot_method_bind_get_method("Object", "_get")
  bind_visualshadernode_get_default_input_values = api_core.godot_method_bind_get_method('VisualShaderNode', 'get_default_input_values')
  bind_visualshadernode_get_input_port_default_value = api_core.godot_method_bind_get_method('VisualShaderNode', 'get_input_port_default_value')
  bind_visualshadernode_get_output_port_for_preview = api_core.godot_method_bind_get_method('VisualShaderNode', 'get_output_port_for_preview')
  bind_visualshadernode_set_default_input_values = api_core.godot_method_bind_get_method('VisualShaderNode', 'set_default_input_values')
  bind_visualshadernode_set_input_port_default_value = api_core.godot_method_bind_get_method('VisualShaderNode', 'set_input_port_default_value')
  bind_visualshadernode_set_output_port_for_preview = api_core.godot_method_bind_get_method('VisualShaderNode', 'set_output_port_for_preview')

############################Generated class###################################
cdef class VisualShaderNode(Resource):
  def __init__(self):
    super().__init__()
    nativescript_api_11.godot_nativescript_get_instance_binding_data(0, api_core.godot_get_class_constructor("VisualShaderNode")())
##################################Generated Properties#########################################
  @property
  def default_input_values(self): 
    return self.get_default_input_values()
  @default_input_values.setter 
  def default_input_values(self,value): 
    self.set_default_input_values(value)
  @property
  def output_port_for_preview(self): 
    return self.get_output_port_for_preview()
  @output_port_for_preview.setter 
  def output_port_for_preview(self,value): 
    self.set_output_port_for_preview(value)

##################################Generated Methods#########################################
  def  get_default_input_values(self):
    cdef godot_object *_owner = self.godot_owner
    cdef Array ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_get_default_input_values,self.godot_owner,[NULL,],&ret)
  def  get_input_port_default_value(self, port):
    cdef godot_object *_owner = self.godot_owner
    cdef Variant ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_get_input_port_default_value,self.godot_owner,[NULL,],&ret)
  def  get_output_port_for_preview(self):
    cdef godot_object *_owner = self.godot_owner
    cdef int ret
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_get_output_port_for_preview,self.godot_owner,[NULL,],&ret)
  def  set_default_input_values(self, values):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_set_default_input_values,self.godot_owner,[NULL,],NULL)
  def  set_input_port_default_value(self, portvalue):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_set_input_port_default_value,self.godot_owner,[NULL,],NULL)
  def  set_output_port_for_preview(self, port):
    cdef godot_object *_owner = self.godot_owner
    api_core.godot_method_bind_ptrcall(bind_visualshadernode_set_output_port_for_preview,self.godot_owner,[NULL,],NULL)
